----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Mar 02 16:46:21 2017
-- Parameters for CLK_GEN
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant CLK_PERIOD : integer := 50000;
    constant DUTY_CYCLE : integer := 50;
end coreparameters;
