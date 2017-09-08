-- Version: v11.6 SP1 11.6.1.6

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity m2s010_som_sb_CAM_SPI_1_CLK_IO is

    port( PAD_BI : inout std_logic_vector(0 to 0) := (others => 'Z');
          D      : in    std_logic_vector(0 to 0);
          E      : in    std_logic_vector(0 to 0);
          Y      : out   std_logic_vector(0 to 0)
        );

end m2s010_som_sb_CAM_SPI_1_CLK_IO;

architecture DEF_ARCH of m2s010_som_sb_CAM_SPI_1_CLK_IO is 

  component BIBUF
    generic (IOSTD:string := "");

    port( PAD : inout   std_logic;
          D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;


begin 


    U0_0 : BIBUF
      port map(PAD => PAD_BI(0), D => D(0), E => E(0), Y => Y(0));
    

end DEF_ARCH; 
