-- Version: v11.6 SP1 11.6.1.6

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity m2s010_som_ID_RES_0_IO is

    port( PAD_IN : in    std_logic_vector(3 downto 0);
          Y      : out   std_logic_vector(3 downto 0)
        );

end m2s010_som_ID_RES_0_IO;

architecture DEF_ARCH of m2s010_som_ID_RES_0_IO is 

  component INBUF
    generic (IOSTD:string := "");

    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;


begin 


    U0_0 : INBUF
      port map(PAD => PAD_IN(0), Y => Y(0));
    
    U0_3 : INBUF
      port map(PAD => PAD_IN(3), Y => Y(3));
    
    U0_2 : INBUF
      port map(PAD => PAD_IN(2), Y => Y(2));
    
    U0_1 : INBUF
      port map(PAD => PAD_IN(1), Y => Y(1));
    

end DEF_ARCH; 
