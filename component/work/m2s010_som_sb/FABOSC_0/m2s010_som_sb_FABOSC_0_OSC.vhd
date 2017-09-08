-- Version: v11.6 SP1 11.6.1.6

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity m2s010_som_sb_FABOSC_0_OSC is

    port( XTL                : in    std_logic;
          RCOSC_25_50MHZ_CCC : out   std_logic;
          RCOSC_25_50MHZ_O2F : out   std_logic;
          RCOSC_1MHZ_CCC     : out   std_logic;
          RCOSC_1MHZ_O2F     : out   std_logic;
          XTLOSC_CCC         : out   std_logic;
          XTLOSC_O2F         : out   std_logic
        );

end m2s010_som_sb_FABOSC_0_OSC;

architecture DEF_ARCH of m2s010_som_sb_FABOSC_0_OSC is 

  component RCOSC_25_50MHZ_FAB
    port( A      : in    std_logic := 'U';
          CLKOUT : out   std_logic
        );
  end component;

  component RCOSC_25_50MHZ
    generic (FREQUENCY:real := 50.0);

    port( CLKOUT : out   std_logic
        );
  end component;

  component XTLOSC
    generic (MODE:std_logic_vector(1 downto 0) := "11"; 
        FREQUENCY:real := 20.0);

    port( XTL    : in    std_logic := 'U';
          CLKOUT : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal N_RCOSC_25_50MHZ_CLKOUT, N_RCOSC_25_50MHZ_CLKINT
         : std_logic;

begin 


    I_RCOSC_25_50MHZ_FAB : RCOSC_25_50MHZ_FAB
      port map(A => N_RCOSC_25_50MHZ_CLKOUT, CLKOUT => 
        N_RCOSC_25_50MHZ_CLKINT);
    
    I_RCOSC_25_50MHZ : RCOSC_25_50MHZ
      generic map(FREQUENCY => 50.0)

      port map(CLKOUT => N_RCOSC_25_50MHZ_CLKOUT);
    
    I_XTLOSC : XTLOSC
      generic map(MODE => "11", FREQUENCY => 20.0)

      port map(XTL => XTL, CLKOUT => XTLOSC_CCC);
    
    I_RCOSC_25_50MHZ_FAB_CLKINT : CLKINT
      port map(A => N_RCOSC_25_50MHZ_CLKINT, Y => 
        RCOSC_25_50MHZ_O2F);
    

end DEF_ARCH; 