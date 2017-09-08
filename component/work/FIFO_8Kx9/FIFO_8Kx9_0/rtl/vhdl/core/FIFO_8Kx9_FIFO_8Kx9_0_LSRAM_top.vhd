-- Version: v11.6 SP1 11.6.1.6

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top is

    port( WD    : in    std_logic_vector(8 downto 0);
          RD    : out   std_logic_vector(8 downto 0);
          WADDR : in    std_logic_vector(12 downto 0);
          RADDR : in    std_logic_vector(12 downto 0);
          WEN   : in    std_logic;
          REN   : in    std_logic;
          WCLK  : in    std_logic;
          RCLK  : in    std_logic
        );

end FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top;

architecture DEF_ARCH of FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top is 

  component RAM1K18
    generic (MEMORYFILE:string := "");

    port( A_DOUT        : out   std_logic_vector(17 downto 0);
          B_DOUT        : out   std_logic_vector(17 downto 0);
          BUSY          : out   std_logic;
          A_CLK         : in    std_logic := 'U';
          A_DOUT_CLK    : in    std_logic := 'U';
          A_ARST_N      : in    std_logic := 'U';
          A_DOUT_EN     : in    std_logic := 'U';
          A_BLK         : in    std_logic_vector(2 downto 0) := (others => 'U');
          A_DOUT_ARST_N : in    std_logic := 'U';
          A_DOUT_SRST_N : in    std_logic := 'U';
          A_DIN         : in    std_logic_vector(17 downto 0) := (others => 'U');
          A_ADDR        : in    std_logic_vector(13 downto 0) := (others => 'U');
          A_WEN         : in    std_logic_vector(1 downto 0) := (others => 'U');
          B_CLK         : in    std_logic := 'U';
          B_DOUT_CLK    : in    std_logic := 'U';
          B_ARST_N      : in    std_logic := 'U';
          B_DOUT_EN     : in    std_logic := 'U';
          B_BLK         : in    std_logic_vector(2 downto 0) := (others => 'U');
          B_DOUT_ARST_N : in    std_logic := 'U';
          B_DOUT_SRST_N : in    std_logic := 'U';
          B_DIN         : in    std_logic_vector(17 downto 0) := (others => 'U');
          B_ADDR        : in    std_logic_vector(13 downto 0) := (others => 'U');
          B_WEN         : in    std_logic_vector(1 downto 0) := (others => 'U');
          A_EN          : in    std_logic := 'U';
          A_DOUT_LAT    : in    std_logic := 'U';
          A_WIDTH       : in    std_logic_vector(2 downto 0) := (others => 'U');
          A_WMODE       : in    std_logic := 'U';
          B_EN          : in    std_logic := 'U';
          B_DOUT_LAT    : in    std_logic := 'U';
          B_WIDTH       : in    std_logic_vector(2 downto 0) := (others => 'U');
          B_WMODE       : in    std_logic := 'U';
          SII_LOCK      : in    std_logic := 'U'
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal \VCC\, \GND\, ADLIB_VCC : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;
    signal nc151, nc23, nc58, nc116, nc74, nc133, nc167, nc84, 
        nc39, nc72, nc82, nc145, nc160, nc57, nc156, nc125, nc73, 
        nc107, nc66, nc83, nc9, nc171, nc54, nc135, nc41, nc100, 
        nc52, nc29, nc118, nc60, nc141, nc45, nc53, nc121, nc158, 
        nc162, nc11, nc131, nc96, nc79, nc146, nc89, nc119, nc48, 
        nc126, nc15, nc102, nc3, nc47, nc90, nc159, nc136, nc59, 
        nc18, nc44, nc117, nc164, nc148, nc42, nc17, nc2, nc110, 
        nc128, nc43, nc157, nc36, nc61, nc104, nc138, nc14, nc150, 
        nc149, nc12, nc30, nc65, nc7, nc129, nc8, nc13, nc26, 
        nc139, nc163, nc112, nc68, nc49, nc170, nc91, nc5, nc20, 
        nc147, nc67, nc152, nc127, nc103, nc76, nc140, nc86, nc95, 
        nc120, nc165, nc137, nc64, nc19, nc70, nc62, nc80, nc130, 
        nc98, nc114, nc56, nc105, nc63, nc97, nc161, nc31, nc154, 
        nc50, nc142, nc94, nc122, nc35, nc4, nc92, nc101, nc166, 
        nc132, nc21, nc93, nc69, nc38, nc113, nc106, nc25, nc1, 
        nc37, nc144, nc153, nc46, nc71, nc124, nc81, nc168, nc34, 
        nc28, nc115, nc134, nc32, nc40, nc99, nc75, nc85, nc27, 
        nc108, nc16, nc155, nc51, nc33, nc169, nc78, nc24, nc88, 
        nc111, nc55, nc10, nc22, nc143, nc77, nc6, nc109, nc87, 
        nc123 : std_logic;

begin 

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top_R0C4 : RAM1K18
      port map(A_DOUT(17) => nc151, A_DOUT(16) => nc23, 
        A_DOUT(15) => nc58, A_DOUT(14) => nc116, A_DOUT(13) => 
        nc74, A_DOUT(12) => nc133, A_DOUT(11) => nc167, 
        A_DOUT(10) => nc84, A_DOUT(9) => nc39, A_DOUT(8) => nc72, 
        A_DOUT(7) => nc82, A_DOUT(6) => nc145, A_DOUT(5) => nc160, 
        A_DOUT(4) => nc57, A_DOUT(3) => nc156, A_DOUT(2) => nc125, 
        A_DOUT(1) => nc73, A_DOUT(0) => RD(8), B_DOUT(17) => 
        nc107, B_DOUT(16) => nc66, B_DOUT(15) => nc83, B_DOUT(14)
         => nc9, B_DOUT(13) => nc171, B_DOUT(12) => nc54, 
        B_DOUT(11) => nc135, B_DOUT(10) => nc41, B_DOUT(9) => 
        nc100, B_DOUT(8) => nc52, B_DOUT(7) => nc29, B_DOUT(6)
         => nc118, B_DOUT(5) => nc60, B_DOUT(4) => nc141, 
        B_DOUT(3) => nc45, B_DOUT(2) => nc53, B_DOUT(1) => nc121, 
        B_DOUT(0) => nc158, BUSY => OPEN, A_CLK => RCLK, 
        A_DOUT_CLK => \VCC\, A_ARST_N => \VCC\, A_DOUT_EN => 
        \VCC\, A_BLK(2) => REN, A_BLK(1) => \VCC\, A_BLK(0) => 
        \VCC\, A_DOUT_ARST_N => \VCC\, A_DOUT_SRST_N => \VCC\, 
        A_DIN(17) => \GND\, A_DIN(16) => \GND\, A_DIN(15) => 
        \GND\, A_DIN(14) => \GND\, A_DIN(13) => \GND\, A_DIN(12)
         => \GND\, A_DIN(11) => \GND\, A_DIN(10) => \GND\, 
        A_DIN(9) => \GND\, A_DIN(8) => \GND\, A_DIN(7) => \GND\, 
        A_DIN(6) => \GND\, A_DIN(5) => \GND\, A_DIN(4) => \GND\, 
        A_DIN(3) => \GND\, A_DIN(2) => \GND\, A_DIN(1) => \GND\, 
        A_DIN(0) => \GND\, A_ADDR(13) => RADDR(12), A_ADDR(12)
         => RADDR(11), A_ADDR(11) => RADDR(10), A_ADDR(10) => 
        RADDR(9), A_ADDR(9) => RADDR(8), A_ADDR(8) => RADDR(7), 
        A_ADDR(7) => RADDR(6), A_ADDR(6) => RADDR(5), A_ADDR(5)
         => RADDR(4), A_ADDR(4) => RADDR(3), A_ADDR(3) => 
        RADDR(2), A_ADDR(2) => RADDR(1), A_ADDR(1) => RADDR(0), 
        A_ADDR(0) => \GND\, A_WEN(1) => \GND\, A_WEN(0) => \GND\, 
        B_CLK => WCLK, B_DOUT_CLK => \VCC\, B_ARST_N => \VCC\, 
        B_DOUT_EN => \VCC\, B_BLK(2) => WEN, B_BLK(1) => \VCC\, 
        B_BLK(0) => \VCC\, B_DOUT_ARST_N => \GND\, B_DOUT_SRST_N
         => \VCC\, B_DIN(17) => \GND\, B_DIN(16) => \GND\, 
        B_DIN(15) => \GND\, B_DIN(14) => \GND\, B_DIN(13) => 
        \GND\, B_DIN(12) => \GND\, B_DIN(11) => \GND\, B_DIN(10)
         => \GND\, B_DIN(9) => \GND\, B_DIN(8) => \GND\, B_DIN(7)
         => \GND\, B_DIN(6) => \GND\, B_DIN(5) => \GND\, B_DIN(4)
         => \GND\, B_DIN(3) => \GND\, B_DIN(2) => \GND\, B_DIN(1)
         => \GND\, B_DIN(0) => WD(8), B_ADDR(13) => WADDR(12), 
        B_ADDR(12) => WADDR(11), B_ADDR(11) => WADDR(10), 
        B_ADDR(10) => WADDR(9), B_ADDR(9) => WADDR(8), B_ADDR(8)
         => WADDR(7), B_ADDR(7) => WADDR(6), B_ADDR(6) => 
        WADDR(5), B_ADDR(5) => WADDR(4), B_ADDR(4) => WADDR(3), 
        B_ADDR(3) => WADDR(2), B_ADDR(2) => WADDR(1), B_ADDR(1)
         => WADDR(0), B_ADDR(0) => \GND\, B_WEN(1) => \GND\, 
        B_WEN(0) => \VCC\, A_EN => \VCC\, A_DOUT_LAT => \VCC\, 
        A_WIDTH(2) => \GND\, A_WIDTH(1) => \GND\, A_WIDTH(0) => 
        \VCC\, A_WMODE => \GND\, B_EN => \VCC\, B_DOUT_LAT => 
        \VCC\, B_WIDTH(2) => \GND\, B_WIDTH(1) => \GND\, 
        B_WIDTH(0) => \VCC\, B_WMODE => \GND\, SII_LOCK => \GND\);
    
    FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top_R0C3 : RAM1K18
      port map(A_DOUT(17) => nc162, A_DOUT(16) => nc11, 
        A_DOUT(15) => nc131, A_DOUT(14) => nc96, A_DOUT(13) => 
        nc79, A_DOUT(12) => nc146, A_DOUT(11) => nc89, A_DOUT(10)
         => nc119, A_DOUT(9) => nc48, A_DOUT(8) => nc126, 
        A_DOUT(7) => nc15, A_DOUT(6) => nc102, A_DOUT(5) => nc3, 
        A_DOUT(4) => nc47, A_DOUT(3) => nc90, A_DOUT(2) => nc159, 
        A_DOUT(1) => RD(7), A_DOUT(0) => RD(6), B_DOUT(17) => 
        nc136, B_DOUT(16) => nc59, B_DOUT(15) => nc18, B_DOUT(14)
         => nc44, B_DOUT(13) => nc117, B_DOUT(12) => nc164, 
        B_DOUT(11) => nc148, B_DOUT(10) => nc42, B_DOUT(9) => 
        nc17, B_DOUT(8) => nc2, B_DOUT(7) => nc110, B_DOUT(6) => 
        nc128, B_DOUT(5) => nc43, B_DOUT(4) => nc157, B_DOUT(3)
         => nc36, B_DOUT(2) => nc61, B_DOUT(1) => nc104, 
        B_DOUT(0) => nc138, BUSY => OPEN, A_CLK => RCLK, 
        A_DOUT_CLK => \VCC\, A_ARST_N => \VCC\, A_DOUT_EN => 
        \VCC\, A_BLK(2) => REN, A_BLK(1) => \VCC\, A_BLK(0) => 
        \VCC\, A_DOUT_ARST_N => \VCC\, A_DOUT_SRST_N => \VCC\, 
        A_DIN(17) => \GND\, A_DIN(16) => \GND\, A_DIN(15) => 
        \GND\, A_DIN(14) => \GND\, A_DIN(13) => \GND\, A_DIN(12)
         => \GND\, A_DIN(11) => \GND\, A_DIN(10) => \GND\, 
        A_DIN(9) => \GND\, A_DIN(8) => \GND\, A_DIN(7) => \GND\, 
        A_DIN(6) => \GND\, A_DIN(5) => \GND\, A_DIN(4) => \GND\, 
        A_DIN(3) => \GND\, A_DIN(2) => \GND\, A_DIN(1) => \GND\, 
        A_DIN(0) => \GND\, A_ADDR(13) => RADDR(12), A_ADDR(12)
         => RADDR(11), A_ADDR(11) => RADDR(10), A_ADDR(10) => 
        RADDR(9), A_ADDR(9) => RADDR(8), A_ADDR(8) => RADDR(7), 
        A_ADDR(7) => RADDR(6), A_ADDR(6) => RADDR(5), A_ADDR(5)
         => RADDR(4), A_ADDR(4) => RADDR(3), A_ADDR(3) => 
        RADDR(2), A_ADDR(2) => RADDR(1), A_ADDR(1) => RADDR(0), 
        A_ADDR(0) => \GND\, A_WEN(1) => \GND\, A_WEN(0) => \GND\, 
        B_CLK => WCLK, B_DOUT_CLK => \VCC\, B_ARST_N => \VCC\, 
        B_DOUT_EN => \VCC\, B_BLK(2) => WEN, B_BLK(1) => \VCC\, 
        B_BLK(0) => \VCC\, B_DOUT_ARST_N => \GND\, B_DOUT_SRST_N
         => \VCC\, B_DIN(17) => \GND\, B_DIN(16) => \GND\, 
        B_DIN(15) => \GND\, B_DIN(14) => \GND\, B_DIN(13) => 
        \GND\, B_DIN(12) => \GND\, B_DIN(11) => \GND\, B_DIN(10)
         => \GND\, B_DIN(9) => \GND\, B_DIN(8) => \GND\, B_DIN(7)
         => \GND\, B_DIN(6) => \GND\, B_DIN(5) => \GND\, B_DIN(4)
         => \GND\, B_DIN(3) => \GND\, B_DIN(2) => \GND\, B_DIN(1)
         => WD(7), B_DIN(0) => WD(6), B_ADDR(13) => WADDR(12), 
        B_ADDR(12) => WADDR(11), B_ADDR(11) => WADDR(10), 
        B_ADDR(10) => WADDR(9), B_ADDR(9) => WADDR(8), B_ADDR(8)
         => WADDR(7), B_ADDR(7) => WADDR(6), B_ADDR(6) => 
        WADDR(5), B_ADDR(5) => WADDR(4), B_ADDR(4) => WADDR(3), 
        B_ADDR(3) => WADDR(2), B_ADDR(2) => WADDR(1), B_ADDR(1)
         => WADDR(0), B_ADDR(0) => \GND\, B_WEN(1) => \GND\, 
        B_WEN(0) => \VCC\, A_EN => \VCC\, A_DOUT_LAT => \VCC\, 
        A_WIDTH(2) => \GND\, A_WIDTH(1) => \GND\, A_WIDTH(0) => 
        \VCC\, A_WMODE => \GND\, B_EN => \VCC\, B_DOUT_LAT => 
        \VCC\, B_WIDTH(2) => \GND\, B_WIDTH(1) => \GND\, 
        B_WIDTH(0) => \VCC\, B_WMODE => \GND\, SII_LOCK => \GND\);
    
    FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top_R0C1 : RAM1K18
      port map(A_DOUT(17) => nc14, A_DOUT(16) => nc150, 
        A_DOUT(15) => nc149, A_DOUT(14) => nc12, A_DOUT(13) => 
        nc30, A_DOUT(12) => nc65, A_DOUT(11) => nc7, A_DOUT(10)
         => nc129, A_DOUT(9) => nc8, A_DOUT(8) => nc13, A_DOUT(7)
         => nc26, A_DOUT(6) => nc139, A_DOUT(5) => nc163, 
        A_DOUT(4) => nc112, A_DOUT(3) => nc68, A_DOUT(2) => nc49, 
        A_DOUT(1) => RD(3), A_DOUT(0) => RD(2), B_DOUT(17) => 
        nc170, B_DOUT(16) => nc91, B_DOUT(15) => nc5, B_DOUT(14)
         => nc20, B_DOUT(13) => nc147, B_DOUT(12) => nc67, 
        B_DOUT(11) => nc152, B_DOUT(10) => nc127, B_DOUT(9) => 
        nc103, B_DOUT(8) => nc76, B_DOUT(7) => nc140, B_DOUT(6)
         => nc86, B_DOUT(5) => nc95, B_DOUT(4) => nc120, 
        B_DOUT(3) => nc165, B_DOUT(2) => nc137, B_DOUT(1) => nc64, 
        B_DOUT(0) => nc19, BUSY => OPEN, A_CLK => RCLK, 
        A_DOUT_CLK => \VCC\, A_ARST_N => \VCC\, A_DOUT_EN => 
        \VCC\, A_BLK(2) => REN, A_BLK(1) => \VCC\, A_BLK(0) => 
        \VCC\, A_DOUT_ARST_N => \VCC\, A_DOUT_SRST_N => \VCC\, 
        A_DIN(17) => \GND\, A_DIN(16) => \GND\, A_DIN(15) => 
        \GND\, A_DIN(14) => \GND\, A_DIN(13) => \GND\, A_DIN(12)
         => \GND\, A_DIN(11) => \GND\, A_DIN(10) => \GND\, 
        A_DIN(9) => \GND\, A_DIN(8) => \GND\, A_DIN(7) => \GND\, 
        A_DIN(6) => \GND\, A_DIN(5) => \GND\, A_DIN(4) => \GND\, 
        A_DIN(3) => \GND\, A_DIN(2) => \GND\, A_DIN(1) => \GND\, 
        A_DIN(0) => \GND\, A_ADDR(13) => RADDR(12), A_ADDR(12)
         => RADDR(11), A_ADDR(11) => RADDR(10), A_ADDR(10) => 
        RADDR(9), A_ADDR(9) => RADDR(8), A_ADDR(8) => RADDR(7), 
        A_ADDR(7) => RADDR(6), A_ADDR(6) => RADDR(5), A_ADDR(5)
         => RADDR(4), A_ADDR(4) => RADDR(3), A_ADDR(3) => 
        RADDR(2), A_ADDR(2) => RADDR(1), A_ADDR(1) => RADDR(0), 
        A_ADDR(0) => \GND\, A_WEN(1) => \GND\, A_WEN(0) => \GND\, 
        B_CLK => WCLK, B_DOUT_CLK => \VCC\, B_ARST_N => \VCC\, 
        B_DOUT_EN => \VCC\, B_BLK(2) => WEN, B_BLK(1) => \VCC\, 
        B_BLK(0) => \VCC\, B_DOUT_ARST_N => \GND\, B_DOUT_SRST_N
         => \VCC\, B_DIN(17) => \GND\, B_DIN(16) => \GND\, 
        B_DIN(15) => \GND\, B_DIN(14) => \GND\, B_DIN(13) => 
        \GND\, B_DIN(12) => \GND\, B_DIN(11) => \GND\, B_DIN(10)
         => \GND\, B_DIN(9) => \GND\, B_DIN(8) => \GND\, B_DIN(7)
         => \GND\, B_DIN(6) => \GND\, B_DIN(5) => \GND\, B_DIN(4)
         => \GND\, B_DIN(3) => \GND\, B_DIN(2) => \GND\, B_DIN(1)
         => WD(3), B_DIN(0) => WD(2), B_ADDR(13) => WADDR(12), 
        B_ADDR(12) => WADDR(11), B_ADDR(11) => WADDR(10), 
        B_ADDR(10) => WADDR(9), B_ADDR(9) => WADDR(8), B_ADDR(8)
         => WADDR(7), B_ADDR(7) => WADDR(6), B_ADDR(6) => 
        WADDR(5), B_ADDR(5) => WADDR(4), B_ADDR(4) => WADDR(3), 
        B_ADDR(3) => WADDR(2), B_ADDR(2) => WADDR(1), B_ADDR(1)
         => WADDR(0), B_ADDR(0) => \GND\, B_WEN(1) => \GND\, 
        B_WEN(0) => \VCC\, A_EN => \VCC\, A_DOUT_LAT => \VCC\, 
        A_WIDTH(2) => \GND\, A_WIDTH(1) => \GND\, A_WIDTH(0) => 
        \VCC\, A_WMODE => \GND\, B_EN => \VCC\, B_DOUT_LAT => 
        \VCC\, B_WIDTH(2) => \GND\, B_WIDTH(1) => \GND\, 
        B_WIDTH(0) => \VCC\, B_WMODE => \GND\, SII_LOCK => \GND\);
    
    FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top_R0C0 : RAM1K18
      port map(A_DOUT(17) => nc70, A_DOUT(16) => nc62, A_DOUT(15)
         => nc80, A_DOUT(14) => nc130, A_DOUT(13) => nc98, 
        A_DOUT(12) => nc114, A_DOUT(11) => nc56, A_DOUT(10) => 
        nc105, A_DOUT(9) => nc63, A_DOUT(8) => nc97, A_DOUT(7)
         => nc161, A_DOUT(6) => nc31, A_DOUT(5) => nc154, 
        A_DOUT(4) => nc50, A_DOUT(3) => nc142, A_DOUT(2) => nc94, 
        A_DOUT(1) => RD(1), A_DOUT(0) => RD(0), B_DOUT(17) => 
        nc122, B_DOUT(16) => nc35, B_DOUT(15) => nc4, B_DOUT(14)
         => nc92, B_DOUT(13) => nc101, B_DOUT(12) => nc166, 
        B_DOUT(11) => nc132, B_DOUT(10) => nc21, B_DOUT(9) => 
        nc93, B_DOUT(8) => nc69, B_DOUT(7) => nc38, B_DOUT(6) => 
        nc113, B_DOUT(5) => nc106, B_DOUT(4) => nc25, B_DOUT(3)
         => nc1, B_DOUT(2) => nc37, B_DOUT(1) => nc144, B_DOUT(0)
         => nc153, BUSY => OPEN, A_CLK => RCLK, A_DOUT_CLK => 
        \VCC\, A_ARST_N => \VCC\, A_DOUT_EN => \VCC\, A_BLK(2)
         => REN, A_BLK(1) => \VCC\, A_BLK(0) => \VCC\, 
        A_DOUT_ARST_N => \VCC\, A_DOUT_SRST_N => \VCC\, A_DIN(17)
         => \GND\, A_DIN(16) => \GND\, A_DIN(15) => \GND\, 
        A_DIN(14) => \GND\, A_DIN(13) => \GND\, A_DIN(12) => 
        \GND\, A_DIN(11) => \GND\, A_DIN(10) => \GND\, A_DIN(9)
         => \GND\, A_DIN(8) => \GND\, A_DIN(7) => \GND\, A_DIN(6)
         => \GND\, A_DIN(5) => \GND\, A_DIN(4) => \GND\, A_DIN(3)
         => \GND\, A_DIN(2) => \GND\, A_DIN(1) => \GND\, A_DIN(0)
         => \GND\, A_ADDR(13) => RADDR(12), A_ADDR(12) => 
        RADDR(11), A_ADDR(11) => RADDR(10), A_ADDR(10) => 
        RADDR(9), A_ADDR(9) => RADDR(8), A_ADDR(8) => RADDR(7), 
        A_ADDR(7) => RADDR(6), A_ADDR(6) => RADDR(5), A_ADDR(5)
         => RADDR(4), A_ADDR(4) => RADDR(3), A_ADDR(3) => 
        RADDR(2), A_ADDR(2) => RADDR(1), A_ADDR(1) => RADDR(0), 
        A_ADDR(0) => \GND\, A_WEN(1) => \GND\, A_WEN(0) => \GND\, 
        B_CLK => WCLK, B_DOUT_CLK => \VCC\, B_ARST_N => \VCC\, 
        B_DOUT_EN => \VCC\, B_BLK(2) => WEN, B_BLK(1) => \VCC\, 
        B_BLK(0) => \VCC\, B_DOUT_ARST_N => \GND\, B_DOUT_SRST_N
         => \VCC\, B_DIN(17) => \GND\, B_DIN(16) => \GND\, 
        B_DIN(15) => \GND\, B_DIN(14) => \GND\, B_DIN(13) => 
        \GND\, B_DIN(12) => \GND\, B_DIN(11) => \GND\, B_DIN(10)
         => \GND\, B_DIN(9) => \GND\, B_DIN(8) => \GND\, B_DIN(7)
         => \GND\, B_DIN(6) => \GND\, B_DIN(5) => \GND\, B_DIN(4)
         => \GND\, B_DIN(3) => \GND\, B_DIN(2) => \GND\, B_DIN(1)
         => WD(1), B_DIN(0) => WD(0), B_ADDR(13) => WADDR(12), 
        B_ADDR(12) => WADDR(11), B_ADDR(11) => WADDR(10), 
        B_ADDR(10) => WADDR(9), B_ADDR(9) => WADDR(8), B_ADDR(8)
         => WADDR(7), B_ADDR(7) => WADDR(6), B_ADDR(6) => 
        WADDR(5), B_ADDR(5) => WADDR(4), B_ADDR(4) => WADDR(3), 
        B_ADDR(3) => WADDR(2), B_ADDR(2) => WADDR(1), B_ADDR(1)
         => WADDR(0), B_ADDR(0) => \GND\, B_WEN(1) => \GND\, 
        B_WEN(0) => \VCC\, A_EN => \VCC\, A_DOUT_LAT => \VCC\, 
        A_WIDTH(2) => \GND\, A_WIDTH(1) => \GND\, A_WIDTH(0) => 
        \VCC\, A_WMODE => \GND\, B_EN => \VCC\, B_DOUT_LAT => 
        \VCC\, B_WIDTH(2) => \GND\, B_WIDTH(1) => \GND\, 
        B_WIDTH(0) => \VCC\, B_WMODE => \GND\, SII_LOCK => \GND\);
    
    FIFO_8Kx9_FIFO_8Kx9_0_LSRAM_top_R0C2 : RAM1K18
      port map(A_DOUT(17) => nc46, A_DOUT(16) => nc71, A_DOUT(15)
         => nc124, A_DOUT(14) => nc81, A_DOUT(13) => nc168, 
        A_DOUT(12) => nc34, A_DOUT(11) => nc28, A_DOUT(10) => 
        nc115, A_DOUT(9) => nc134, A_DOUT(8) => nc32, A_DOUT(7)
         => nc40, A_DOUT(6) => nc99, A_DOUT(5) => nc75, A_DOUT(4)
         => nc85, A_DOUT(3) => nc27, A_DOUT(2) => nc108, 
        A_DOUT(1) => RD(5), A_DOUT(0) => RD(4), B_DOUT(17) => 
        nc16, B_DOUT(16) => nc155, B_DOUT(15) => nc51, B_DOUT(14)
         => nc33, B_DOUT(13) => nc169, B_DOUT(12) => nc78, 
        B_DOUT(11) => nc24, B_DOUT(10) => nc88, B_DOUT(9) => 
        nc111, B_DOUT(8) => nc55, B_DOUT(7) => nc10, B_DOUT(6)
         => nc22, B_DOUT(5) => nc143, B_DOUT(4) => nc77, 
        B_DOUT(3) => nc6, B_DOUT(2) => nc109, B_DOUT(1) => nc87, 
        B_DOUT(0) => nc123, BUSY => OPEN, A_CLK => RCLK, 
        A_DOUT_CLK => \VCC\, A_ARST_N => \VCC\, A_DOUT_EN => 
        \VCC\, A_BLK(2) => REN, A_BLK(1) => \VCC\, A_BLK(0) => 
        \VCC\, A_DOUT_ARST_N => \VCC\, A_DOUT_SRST_N => \VCC\, 
        A_DIN(17) => \GND\, A_DIN(16) => \GND\, A_DIN(15) => 
        \GND\, A_DIN(14) => \GND\, A_DIN(13) => \GND\, A_DIN(12)
         => \GND\, A_DIN(11) => \GND\, A_DIN(10) => \GND\, 
        A_DIN(9) => \GND\, A_DIN(8) => \GND\, A_DIN(7) => \GND\, 
        A_DIN(6) => \GND\, A_DIN(5) => \GND\, A_DIN(4) => \GND\, 
        A_DIN(3) => \GND\, A_DIN(2) => \GND\, A_DIN(1) => \GND\, 
        A_DIN(0) => \GND\, A_ADDR(13) => RADDR(12), A_ADDR(12)
         => RADDR(11), A_ADDR(11) => RADDR(10), A_ADDR(10) => 
        RADDR(9), A_ADDR(9) => RADDR(8), A_ADDR(8) => RADDR(7), 
        A_ADDR(7) => RADDR(6), A_ADDR(6) => RADDR(5), A_ADDR(5)
         => RADDR(4), A_ADDR(4) => RADDR(3), A_ADDR(3) => 
        RADDR(2), A_ADDR(2) => RADDR(1), A_ADDR(1) => RADDR(0), 
        A_ADDR(0) => \GND\, A_WEN(1) => \GND\, A_WEN(0) => \GND\, 
        B_CLK => WCLK, B_DOUT_CLK => \VCC\, B_ARST_N => \VCC\, 
        B_DOUT_EN => \VCC\, B_BLK(2) => WEN, B_BLK(1) => \VCC\, 
        B_BLK(0) => \VCC\, B_DOUT_ARST_N => \GND\, B_DOUT_SRST_N
         => \VCC\, B_DIN(17) => \GND\, B_DIN(16) => \GND\, 
        B_DIN(15) => \GND\, B_DIN(14) => \GND\, B_DIN(13) => 
        \GND\, B_DIN(12) => \GND\, B_DIN(11) => \GND\, B_DIN(10)
         => \GND\, B_DIN(9) => \GND\, B_DIN(8) => \GND\, B_DIN(7)
         => \GND\, B_DIN(6) => \GND\, B_DIN(5) => \GND\, B_DIN(4)
         => \GND\, B_DIN(3) => \GND\, B_DIN(2) => \GND\, B_DIN(1)
         => WD(5), B_DIN(0) => WD(4), B_ADDR(13) => WADDR(12), 
        B_ADDR(12) => WADDR(11), B_ADDR(11) => WADDR(10), 
        B_ADDR(10) => WADDR(9), B_ADDR(9) => WADDR(8), B_ADDR(8)
         => WADDR(7), B_ADDR(7) => WADDR(6), B_ADDR(6) => 
        WADDR(5), B_ADDR(5) => WADDR(4), B_ADDR(4) => WADDR(3), 
        B_ADDR(3) => WADDR(2), B_ADDR(2) => WADDR(1), B_ADDR(1)
         => WADDR(0), B_ADDR(0) => \GND\, B_WEN(1) => \GND\, 
        B_WEN(0) => \VCC\, A_EN => \VCC\, A_DOUT_LAT => \VCC\, 
        A_WIDTH(2) => \GND\, A_WIDTH(1) => \GND\, A_WIDTH(0) => 
        \VCC\, A_WMODE => \GND\, B_EN => \VCC\, B_DOUT_LAT => 
        \VCC\, B_WIDTH(2) => \GND\, B_WIDTH(1) => \GND\, 
        B_WIDTH(0) => \VCC\, B_WMODE => \GND\, SII_LOCK => \GND\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
