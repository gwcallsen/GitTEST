----------------------------------------------------------------------
-- Created by SmartDesign Thu Mar 02 16:46:21 2017
-- Version: v11.6 SP1 11.6.1.6
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- TB_iRail entity declaration
----------------------------------------------------------------------
entity TB_iRail is
    -- Port list
    port(
        -- Inputs
        DEBOUNCE_IN    : in    std_logic_vector(2 downto 0);
        ID_RES         : in    std_logic_vector(3 downto 0);
        PULLDOWN_R9    : in    std_logic;
        SPI_1_DI_CAM   : in    std_logic;
        SPI_1_DI_OTH   : in    std_logic;
        -- Outputs
        DEBOUNCE_OUT_1 : out   std_logic;
        DEBOUNCE_OUT_2 : out   std_logic;
        DRVR_EN        : out   std_logic;
        Data_FAIL      : out   std_logic;
        RCVR_EN        : out   std_logic;
        SPI_1_DO_CAM   : out   std_logic;
        -- Inouts
        GPIO_1_BI      : inout std_logic_vector(0 to 0);
        SPI_1_SS0_CAM  : inout std_logic_vector(0 to 0);
        SPI_1_SS0_OTH  : inout std_logic_vector(0 to 0)
        );
end TB_iRail;
----------------------------------------------------------------------
-- TB_iRail architecture body
----------------------------------------------------------------------
architecture RTL of TB_iRail is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CLK_GEN   -   Actel:Simulation:CLK_GEN:1.0.1
component CLK_GEN
    generic( 
        CLK_PERIOD : integer := 50000 ;
        DUTY_CYCLE : integer := 50 
        );
    -- Port list
    port(
        -- Outputs
        CLK : out std_logic
        );
end component;
-- m2s010_som
component m2s010_som
    -- Port list
    port(
        -- Inputs
        DEBOUNCE_IN           : in    std_logic_vector(2 downto 0);
        DEVRST_N              : in    std_logic;
        ID_RES                : in    std_logic_vector(3 downto 0);
        MAC_MII_COL           : in    std_logic;
        MAC_MII_CRS           : in    std_logic;
        MAC_MII_RXD           : in    std_logic_vector(3 downto 0);
        MAC_MII_RX_CLK        : in    std_logic;
        MAC_MII_RX_DV         : in    std_logic;
        MAC_MII_RX_ER         : in    std_logic;
        MAC_MII_TX_CLK        : in    std_logic;
        MANCHESTER_IN         : in    std_logic;
        MDDR_DQS_TMATCH_0_IN  : in    std_logic;
        MMUART_0_RXD_F2M      : in    std_logic;
        MMUART_1_RXD          : in    std_logic;
        PULLDOWN_R9           : in    std_logic;
        SPI_0_DI              : in    std_logic;
        SPI_1_DI_CAM          : in    std_logic;
        SPI_1_DI_OTH          : in    std_logic;
        XTL                   : in    std_logic;
        -- Outputs
        DEBOUNCE_OUT_1        : out   std_logic;
        DEBOUNCE_OUT_2        : out   std_logic;
        DRVR_EN               : out   std_logic;
        Data_FAIL             : out   std_logic;
        GPIO_11_M2F           : out   std_logic;
        GPIO_20_OUT           : out   std_logic;
        GPIO_21_M2F           : out   std_logic;
        GPIO_22_M2F           : out   std_logic;
        GPIO_24_M2F           : out   std_logic;
        GPIO_5_M2F            : out   std_logic;
        GPIO_8_M2F            : out   std_logic;
        MAC_MII_MDC           : out   std_logic;
        MAC_MII_TXD           : out   std_logic_vector(3 downto 0);
        MAC_MII_TX_EN         : out   std_logic;
        MANCH_OUT_N           : out   std_logic;
        MANCH_OUT_P           : out   std_logic;
        MDDR_ADDR             : out   std_logic_vector(15 downto 0);
        MDDR_BA               : out   std_logic_vector(2 downto 0);
        MDDR_CAS_N            : out   std_logic;
        MDDR_CKE              : out   std_logic;
        MDDR_CLK              : out   std_logic;
        MDDR_CLK_N            : out   std_logic;
        MDDR_CS_N             : out   std_logic;
        MDDR_DQS_TMATCH_0_OUT : out   std_logic;
        MDDR_ODT              : out   std_logic;
        MDDR_RAS_N            : out   std_logic;
        MDDR_RESET_N          : out   std_logic;
        MDDR_WE_N             : out   std_logic;
        MMUART_0_TXD_M2F      : out   std_logic;
        MMUART_1_TXD          : out   std_logic;
        RCVR_EN               : out   std_logic;
        SPI_0_DO              : out   std_logic;
        SPI_0_SS1             : out   std_logic;
        SPI_1_DO_CAM          : out   std_logic;
        SPI_1_DO_OTH          : out   std_logic;
        -- Inouts
        GPIO_0_BI             : inout std_logic;
        GPIO_12_BI            : inout std_logic;
        GPIO_14_BI            : inout std_logic;
        GPIO_15_BI            : inout std_logic;
        GPIO_16_BI            : inout std_logic;
        GPIO_17_BI            : inout std_logic;
        GPIO_18_BI            : inout std_logic;
        GPIO_1_BI             : inout std_logic_vector(0 to 0);
        GPIO_1_BIDI           : inout std_logic_vector(0 to 0);
        GPIO_25_BI            : inout std_logic;
        GPIO_26_BI            : inout std_logic;
        GPIO_31_BI            : inout std_logic;
        GPIO_3_BI             : inout std_logic;
        GPIO_4_BI             : inout std_logic;
        GPIO_6_PAD            : inout std_logic_vector(0 to 0);
        GPIO_7_PADI           : inout std_logic_vector(0 to 0);
        I2C_1_SCL             : inout std_logic;
        I2C_1_SDA             : inout std_logic;
        MAC_MII_MDIO          : inout std_logic;
        MDDR_DM_RDQS          : inout std_logic_vector(1 downto 0);
        MDDR_DQ               : inout std_logic_vector(15 downto 0);
        MDDR_DQS              : inout std_logic_vector(1 downto 0);
        SPI_0_CLK             : inout std_logic;
        SPI_0_SS0             : inout std_logic;
        SPI_1_CLK             : inout std_logic_vector(0 to 0);
        SPI_1_SS0_CAM         : inout std_logic_vector(0 to 0);
        SPI_1_SS0_OTH         : inout std_logic_vector(0 to 0)
        );
end component;
-- RESET_GEN   -   Actel:Simulation:RESET_GEN:1.0.1
component RESET_GEN
    generic( 
        DELAY       : integer := 200 ;
        LOGIC_LEVEL : integer := 0 
        );
    -- Port list
    port(
        -- Outputs
        RESET : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal CLK_GEN_0_CLK                 : std_logic;
signal Data_FAIL_net_0               : std_logic;
signal DEBOUNCE_OUT_1_net_0          : std_logic;
signal DEBOUNCE_OUT_2_net_0          : std_logic;
signal DRVR_EN_net_0                 : std_logic;
signal m2s010_som_0_MANCH_OUT_N      : std_logic;
signal m2s010_som_0_MMUART_0_TXD_M2F : std_logic;
signal m2s010_som_0_MMUART_1_TXD     : std_logic;
signal RCVR_EN_net_0                 : std_logic;
signal RESET_GEN_0_RESET             : std_logic;
signal SPI_1_DO_CAM_net_0            : std_logic;
signal RCVR_EN_net_1                 : std_logic;
signal DRVR_EN_net_1                 : std_logic;
signal Data_FAIL_net_1               : std_logic;
signal DEBOUNCE_OUT_1_net_1          : std_logic;
signal DEBOUNCE_OUT_2_net_1          : std_logic;
signal SPI_1_DO_CAM_net_1            : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                       : std_logic;
signal MDDR_DM_RDQS_const_net_0      : std_logic_vector(1 downto 0);
signal MDDR_DQ_const_net_0           : std_logic_vector(15 downto 0);
signal MDDR_DQS_const_net_0          : std_logic_vector(1 downto 0);
signal MAC_MII_RXD_const_net_0       : std_logic_vector(3 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net                  <= '0';
 MDDR_DM_RDQS_const_net_0 <= B"00";
 MDDR_DQ_const_net_0      <= B"0000000000000000";
 MDDR_DQS_const_net_0     <= B"00";
 MAC_MII_RXD_const_net_0  <= B"0000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 RCVR_EN_net_1        <= RCVR_EN_net_0;
 RCVR_EN              <= RCVR_EN_net_1;
 DRVR_EN_net_1        <= DRVR_EN_net_0;
 DRVR_EN              <= DRVR_EN_net_1;
 Data_FAIL_net_1      <= Data_FAIL_net_0;
 Data_FAIL            <= Data_FAIL_net_1;
 DEBOUNCE_OUT_1_net_1 <= DEBOUNCE_OUT_1_net_0;
 DEBOUNCE_OUT_1       <= DEBOUNCE_OUT_1_net_1;
 DEBOUNCE_OUT_2_net_1 <= DEBOUNCE_OUT_2_net_0;
 DEBOUNCE_OUT_2       <= DEBOUNCE_OUT_2_net_1;
 SPI_1_DO_CAM_net_1   <= SPI_1_DO_CAM_net_0;
 SPI_1_DO_CAM         <= SPI_1_DO_CAM_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CLK_GEN_0   -   Actel:Simulation:CLK_GEN:1.0.1
CLK_GEN_0 : CLK_GEN
    generic map( 
        CLK_PERIOD => ( 50000 ),
        DUTY_CYCLE => ( 50 )
        )
    port map( 
        -- Outputs
        CLK => CLK_GEN_0_CLK 
        );
-- m2s010_som_0
m2s010_som_0 : m2s010_som
    port map( 
        -- Inputs
        SPI_0_DI              => GND_net,
        MMUART_1_RXD          => m2s010_som_0_MMUART_1_TXD,
        MDDR_DQS_TMATCH_0_IN  => GND_net,
        XTL                   => CLK_GEN_0_CLK,
        DEVRST_N              => RESET_GEN_0_RESET,
        MAC_MII_RX_ER         => GND_net,
        MAC_MII_RX_DV         => GND_net,
        MAC_MII_CRS           => GND_net,
        MAC_MII_COL           => GND_net,
        MAC_MII_RX_CLK        => GND_net,
        MAC_MII_TX_CLK        => GND_net,
        MANCHESTER_IN         => m2s010_som_0_MANCH_OUT_N,
        MMUART_0_RXD_F2M      => m2s010_som_0_MMUART_0_TXD_M2F,
        PULLDOWN_R9           => PULLDOWN_R9,
        SPI_1_DI_CAM          => SPI_1_DI_CAM,
        SPI_1_DI_OTH          => SPI_1_DI_OTH,
        MAC_MII_RXD           => MAC_MII_RXD_const_net_0,
        DEBOUNCE_IN           => DEBOUNCE_IN,
        ID_RES                => ID_RES,
        -- Outputs
        SPI_0_DO              => OPEN,
        MMUART_1_TXD          => m2s010_som_0_MMUART_1_TXD,
        MDDR_DQS_TMATCH_0_OUT => OPEN,
        MDDR_CAS_N            => OPEN,
        MDDR_CLK              => OPEN,
        MDDR_CLK_N            => OPEN,
        MDDR_CKE              => OPEN,
        MDDR_CS_N             => OPEN,
        MDDR_ODT              => OPEN,
        MDDR_RAS_N            => OPEN,
        MDDR_RESET_N          => OPEN,
        MDDR_WE_N             => OPEN,
        MAC_MII_TX_EN         => OPEN,
        MAC_MII_MDC           => OPEN,
        DRVR_EN               => DRVR_EN_net_0,
        RCVR_EN               => RCVR_EN_net_0,
        MANCH_OUT_P           => OPEN,
        MANCH_OUT_N           => m2s010_som_0_MANCH_OUT_N,
        Data_FAIL             => Data_FAIL_net_0,
        MMUART_0_TXD_M2F      => m2s010_som_0_MMUART_0_TXD_M2F,
        GPIO_20_OUT           => OPEN,
        GPIO_5_M2F            => OPEN,
        GPIO_8_M2F            => OPEN,
        GPIO_11_M2F           => OPEN,
        GPIO_21_M2F           => OPEN,
        GPIO_22_M2F           => OPEN,
        GPIO_24_M2F           => OPEN,
        DEBOUNCE_OUT_1        => DEBOUNCE_OUT_1_net_0,
        DEBOUNCE_OUT_2        => DEBOUNCE_OUT_2_net_0,
        SPI_0_SS1             => OPEN,
        SPI_1_DO_CAM          => SPI_1_DO_CAM_net_0,
        SPI_1_DO_OTH          => OPEN,
        MDDR_ADDR             => OPEN,
        MDDR_BA               => OPEN,
        MAC_MII_TXD           => OPEN,
        -- Inouts
        I2C_1_SDA             => OPEN,
        I2C_1_SCL             => OPEN,
        SPI_0_CLK             => GND_net,
        SPI_0_SS0             => GND_net,
        MAC_MII_MDIO          => GND_net,
        GPIO_0_BI             => GND_net,
        GPIO_3_BI             => GND_net,
        GPIO_4_BI             => GND_net,
        GPIO_12_BI            => GND_net,
        GPIO_14_BI            => GND_net,
        GPIO_15_BI            => GND_net,
        GPIO_16_BI            => GND_net,
        GPIO_17_BI            => GND_net,
        GPIO_18_BI            => GND_net,
        GPIO_25_BI            => GND_net,
        GPIO_26_BI            => GND_net,
        GPIO_31_BI            => GND_net,
        MDDR_DM_RDQS          => MDDR_DM_RDQS_const_net_0,
        MDDR_DQ               => MDDR_DQ_const_net_0,
        MDDR_DQS              => MDDR_DQS_const_net_0,
        GPIO_1_BIDI(0)        => GND_net,
        GPIO_1_BI(0)          => GND_net,
        SPI_1_SS0_CAM         => OPEN,
        SPI_1_CLK(0)          => GND_net,
        SPI_1_SS0_OTH         => OPEN,
        GPIO_6_PAD(0)         => GND_net,
        GPIO_7_PADI           => OPEN 
        );
-- RESET_GEN_0   -   Actel:Simulation:RESET_GEN:1.0.1
RESET_GEN_0 : RESET_GEN
    generic map( 
        DELAY       => ( 200 ),
        LOGIC_LEVEL => ( 0 )
        )
    port map( 
        -- Outputs
        RESET => RESET_GEN_0_RESET 
        );

end RTL;
