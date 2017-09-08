----------------------------------------------------------------------------------
-- Company:         Prototype Performance Incorporated
-- Engineer:        Scott Walker
-- 
-- Create Date:     17 August 2014 
-- Design Name:     Powered Rail Performance Tester 
-- Module Name:     Rx_Data_Checker.vhd - Behavioral 
-- Project Name:    Powered Rail Performance Tester
-- Target Devices:  TBD
-- Description:     
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

entity Rx_Data_Checker is
  Port (
    reset               : in  std_logic;
    REG_Reset           : in  std_logic;
    RX_FIFO_wr_clk      : in  std_logic;
    RX_FIFO_wr_en       : in  std_logic;
    RX_FIFO_DIN         : in  std_logic_vector(7 downto 0);
    idle_line           : in  std_logic;
    packet_cntr_inc     : in  std_logic;
    consumer_type_reg   : in  std_logic_vector(9 downto 0);
    rx_packet_end_all   : in  std_logic;
    Data_FAIL           : out std_logic
  );
end Rx_Data_Checker;

architecture Behavioral of Rx_Data_Checker is

-- constants
  constant Packet_Start_Count : std_logic_vector(9 downto 0) := "0000001000";
  constant ADDRESS_HIGH       : std_logic_vector(9 downto 0) := "0000000000";
  constant ADDRESS_LOW        : std_logic_vector(9 downto 0) := "0000000001";
  constant LENGTH_HIGH        : std_logic_vector(9 downto 0) := "0000000010";
  constant LENGTH_LOW         : std_logic_vector(9 downto 0) := "0000000011";
  constant DATA_COUNT         : std_logic_vector(9 downto 0) := "0000000100";

-- signals
  signal packet_cntr          : std_logic_vector(9 downto 0);
  signal byte_cntr            : std_logic_vector(9 downto 0);
  signal byte_counter_minus4  : std_logic_vector(7 downto 0);
  
begin

  byte_counter_minus4    <= byte_cntr(7 downto 0) - 4 ;

--------------------------------------------------------------------------------
-- Packet Counter
---------1---------2---------3---------4---------5---------6---------7---------8 
  PACKET_COUNTER_PROC : process (RX_FIFO_wr_clk, reset, REG_Reset)
  begin
    if (reset = '1' or REG_Reset = '1') then
      packet_cntr <= Packet_Start_Count;              
    elsif (rising_edge(RX_FIFO_wr_clk)) then
      if ( packet_cntr_inc = '1' ) then
        packet_cntr <= packet_cntr + '1';
      else
        packet_cntr <= packet_cntr;
      end if;
    end if;
  end process;

--------------------------------------------------------------------------------
-- BYTE Counter
---------1---------2---------3---------4---------5---------6---------7---------8 
  BYTE_COUNTER_PROC : process (RX_FIFO_wr_clk, reset)
  begin
    if ( reset = '1' or rx_packet_end_all = '1' ) then
      byte_cntr <= (others => '0');
    elsif (rising_edge(RX_FIFO_wr_clk)) then
      if ( RX_FIFO_wr_en = '1' ) then
        byte_cntr <= byte_cntr + '1';
      else
        byte_cntr <= byte_cntr;
      end if;
    end if;
  end process;

--------------------------------------------------------------------------------
-- Packet Checker (Data_FAIL)
---------1---------2---------3---------4---------5---------6---------7---------8 
RX_DATA_CHECK_PROC : PROCESS (reset, REG_Reset, idle_line, RX_FIFO_wr_clk)
  begin    
    if ( reset = '1' or REG_Reset = '1' or idle_line = '1' ) then
      Data_FAIL           <= '0';
    elsif ( rising_edge(RX_FIFO_wr_clk) and RX_FIFO_wr_en = '1' ) then 
-- ADDRESS_HIGH
      if ( ADDRESS_HIGH = byte_cntr ) then
        if ( RX_FIFO_DIN /= consumer_type_reg(9 downto 2) ) then
          Data_FAIL <= '1';
        else
          Data_FAIL <= '0';
        end if;
-- ADDRESS_LOW
      elsif ( ADDRESS_LOW = byte_cntr ) then
        if ( RX_FIFO_DIN /= (consumer_type_reg(1 downto 0) & "000000") ) then
          Data_FAIL <= '1';
        else
          Data_FAIL <= '0';
        end if;
-- LENGTH_HIGH
      elsif ( LENGTH_HIGH = byte_cntr ) then
        if ( RX_FIFO_DIN /= ("000000" & packet_cntr(9 downto 8)) ) then
          Data_FAIL <= '1';
        else
          Data_FAIL <= '0';
        end if;
-- LENGTH_LOW
      elsif ( LENGTH_LOW = byte_cntr ) then
        if ( RX_FIFO_DIN /= packet_cntr(7 downto 0) ) then
          Data_FAIL <= '1';
        else
          Data_FAIL <= '0';
        end if;
-- DATA_COUNT
      elsif ( byte_cntr >=  DATA_COUNT ) then
        if ( RX_FIFO_DIN /= ( byte_cntr(7 downto 0) - 4 ) ) then
          if ( ( packet_cntr - byte_cntr) <= "000000001" ) then
            Data_FAIL <= '0';
          else
            Data_FAIL <= '1';          
          end if;
        else
          Data_FAIL   <= '0';
        end if;              
      else
          Data_FAIL   <= '0'; 
      end if;           
    end if;
  end process;
     
end Behavioral;
