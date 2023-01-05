LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ORCA IS
  GENERIC (
    sd_a_width       : integer := 10;   -- was 23 in Orca I
    sd_dq_width      : integer := 16;   -- was 32 in Orca I
    pci_data_width   : integer := 16   -- was 32 in Orca I - now implements the mini-PCI protocol ;-)
  );
  PORT (
    scan_en          : IN  std_logic;
    test_mode        : IN  std_logic;
    pll_bypass       : IN  std_logic;
--    bidi_enable      : IN  std_logic;

-- An iddq control pin is only needed if we had pull-up/down PADs
--     iddq_mode        : IN  std_logic;

    -- for now... revive in ORCA 2.1
--     TCK              : IN std_logic;
--     TRST             : IN std_logic;
--     TMS              : IN std_logic;
--     TDI              : IN std_logic;
--     TDO              : OUT std_logic;

    power_save       : IN  std_logic;

    -- System Clock
    sys_clk          : IN  std_logic;

    -- PCI Interface
    pclk             : IN    std_logic;
    prst_n           : IN    std_logic;

    pidsel           : IN    std_logic;
    pgnt_n           : IN    std_logic;
    
    pad              : INOUT std_logic_vector(pci_data_width-1 DOWNTO 0);
    ppar             : INOUT std_logic;
    --ppar64           : INOUT std_logic;
    pc_be            : INOUT std_logic_vector(3 DOWNTO 0);
    pframe_n         : INOUT std_logic;
    ptrdy_n          : INOUT std_logic;
    pirdy_n          : INOUT std_logic;
    pdevsel_n        : INOUT std_logic;
    pstop_n          : INOUT std_logic;
    pperr_n          : INOUT std_logic;
    pserr_n          : INOUT std_logic;
    --pack64_n         : INOUT std_logic;
    --preq64_n         : INOUT std_logic;

    preq_n           : OUT   std_logic;
    pm66en           : IN    std_logic;


    -- DDR SDRAM Interface
    sdr_clk          : IN    std_logic;
    -- Differential clocks - the DDR component uses these clocks to capture/send data
    sd_CK            : OUT   std_logic;
    sd_CKn           : OUT   std_logic;
    -- Data bus - data is clocked on the rising and falling edge of the SDRAM CLK
    sd_DQ            : INOUT std_logic_vector(sd_dq_width-1 DOWNTO 0);

    -- Address bus - bits 0-1 act as chip selects
    sd_A             : OUT   std_logic_vector(sd_a_width-1 DOWNTO 0);

    -- DDR command bus
    sd_BWS           : OUT   std_logic_vector(1 DOWNTO 0);  -- byte write select mask
    sd_LD            : OUT   std_logic;  -- Synchronous Load
    sd_RW            : OUT   std_logic   -- Synchronous Read/Write
    
    );

END ORCA;

ARCHITECTURE STRUCT OF ORCA IS

  ----------------------------------------------------------------------------------------------------
  -- ORCA IO pads
  -- Technology-dependent I/O pads from the cb13fs120_tsmc_max.db library
  ----------------------------------------------------------------------------------------------------
  
--   COMPONENT PCI66DGZ                               -- PCI IO cell OEN active low
--     PORT (
--       PAD            	: INOUT std_logic;
--       C            	: OUT std_logic;
--       I            	: IN std_logic;
--       OEN            	: IN std_logic
--       );
--   END COMPONENT;

  COMPONENT pc3b03                               -- Replacement for PCI cell:
                                                 -- CMOS 3state io, OEN active low
    PORT (
      PAD            	: INOUT std_logic;
      CIN          	: OUT std_logic;
      I            	: IN std_logic;
      OEN            	: IN std_logic
      );
  END COMPONENT;

  COMPONENT pc3b05                               -- CMOS 3state io, OEN active low
    PORT (
      PAD            	: INOUT std_logic;
      CIN          	: OUT std_logic;
      I            	: IN std_logic;
      OEN            	: IN std_logic
      );
  END COMPONENT;

  COMPONENT pc3t02
    PORT (
      PAD            	: OUT std_logic;
      I            	: IN std_logic;
      OEN            	: IN std_logic
      );
  END COMPONENT;

  COMPONENT pc3d01                             -- non-invering input buffer
    PORT (
      PAD            	: IN std_logic;
      CIN            	: OUT std_logic
      );
  END COMPONENT;

  COMPONENT pc3o05                             -- 3V CMOS Output Pad
    PORT (
      I            	: IN std_logic;
      PAD            	: OUT std_logic
      );
  END COMPONENT;

  COMPONENT pt3t01                             -- 3V CMOS 3-state Output Pad
    PORT (
      I            	: IN std_logic;
      OEN               : IN std_logic;
      PAD            	: OUT std_logic
      );
  END COMPONENT;


--   COMPONENT pc3c01                        -- internal clock driver
                                                          -- could be used with PAD pc3d00 ??
--     PORT (
--       CCLK           	: IN std_logic;
--       CP           	: OUT std_logic
--       );
--   END COMPONENT;

  
  COMPONENT bufbd7
  PORT (
    I : IN  std_logic;
    Z : OUT std_logic
  );
  END COMPONENT;
  
  COMPONENT or02d1
  PORT (
    A1 : IN  std_logic;
    A2 : IN  std_logic;
    Z  : OUT std_logic
  );
  END COMPONENT;
  
  

  ----------------------------------------------------------------------------------------------------
  -- ORCA modules
  ----------------------------------------------------------------------------------------------------

  COMPONENT CLOCK_GEN
    PORT  (
      pclk              : IN  std_logic;
      sdram_clk         : IN  std_logic;
      sys_clk           : IN  std_logic;

      pclk_fb           : IN  std_logic;
      sdram_clk_fb      : IN  std_logic;

      test_mode         : IN  std_logic;
      scan_enable       : IN  std_logic;
      pll_bypass        : IN  std_logic;
      powersave         : IN  std_logic;

      o_pclk            : OUT std_logic;
      o_sdram_clk       : OUT std_logic;
      o_sys_clk         : OUT std_logic;
      o_sys_2x_clk      : OUT std_logic
    );
  END COMPONENT;
  
  COMPONENT RESET_BLOCK
    PORT (
      pclk         : IN  std_logic;
      sys_clk      : IN  std_logic;
      sys_2x_clk   : IN  std_logic;
      sdram_clk    : IN  std_logic;

      prst_n       : IN  std_logic;

      test_mode    : IN  std_logic;

      pci_rst_n    : OUT std_logic;
      sdram_rst_n  : OUT std_logic;
      sys_rst_n    : OUT std_logic;
      sys_2x_rst_n : OUT std_logic
    );
  END COMPONENT;

  COMPONENT ORCA_TOP
--   GENERIC (
--     sd_a_width       : integer;
--     sd_dq_width      : integer;
--     pci_data_width   : integer
--   );
  PORT (
    sys_clk          : IN  std_logic;
    sys_2x_clk       : IN  std_logic;
    sdram_clk        : IN  std_logic;

    -- SCAN
    scan_en          : IN  std_logic;
    test_mode        : IN  std_logic;

    pci_rst_n        : IN std_logic;
    sdram_rst_n      : IN std_logic;
    sys_rst_n        : IN std_logic;
    sys_2x_rst_n     : IN std_logic;

    -- PCI Interface
    pclk             : IN  std_logic;

    pidsel           : IN  std_logic;
    pgnt_n           : IN  std_logic;

    pad_in           : IN  std_logic_vector(pci_data_width-1 DOWNTO 0);
    pad_out          : OUT std_logic_vector(pci_data_width-1 DOWNTO 0);
    pad_en           : OUT std_logic;
      
    ppar_in          : IN  std_logic;
    ppar_out         : OUT std_logic;
    ppar_en          : OUT std_logic;
    pc_be_in         : IN  std_logic_vector(3 DOWNTO 0);
    pc_be_out        : OUT std_logic_vector(3 DOWNTO 0);
    pc_be_en         : OUT std_logic;
    pframe_n_in      : IN  std_logic;
    pframe_n_out     : OUT std_logic;
    pframe_n_en      : OUT std_logic;
    ptrdy_n_in       : IN  std_logic;
    ptrdy_n_out      : OUT std_logic;
    ptrdy_n_en       : OUT std_logic;
    pirdy_n_in       : IN  std_logic;
    pirdy_n_out      : OUT std_logic;
    pirdy_n_en       : OUT std_logic;
    pdevsel_n_in     : IN  std_logic;
    pdevsel_n_out    : OUT std_logic;
    pdevsel_n_en     : OUT std_logic;
    pstop_n_in       : IN  std_logic;
    pstop_n_out      : OUT std_logic;
    pstop_n_en       : OUT std_logic;
    pperr_n_in       : IN  std_logic;
    pperr_n_out      : OUT std_logic;
    pperr_n_en       : OUT std_logic;
    pserr_n_in       : IN  std_logic;
    pserr_n_out      : OUT std_logic;
    pserr_n_en       : OUT std_logic;
    
    preq_n           : OUT std_logic;
    pm66en           : IN  std_logic;

    -- SDRAM Interface
    sd_A             : OUT std_logic_vector(sd_a_width-1 DOWNTO 0);
    sd_CK            : OUT std_logic;
    sd_CKn           : OUT std_logic;
    sd_LD            : OUT std_logic;
    sd_RW            : OUT std_logic;
    sd_BWS           : OUT std_logic_vector(1 DOWNTO 0);
    sd_DQ_in         : IN  std_logic_vector(sd_dq_width-1 DOWNTO 0);
    sd_DQ_out        : OUT std_logic_vector(sd_dq_width-1 DOWNTO 0);
    sd_DQ_en         : OUT std_logic_vector(sd_dq_width-1 DOWNTO 0)
    
  );
  END COMPONENT;

  --------------------------------------------------------------------------------------------------
  -- Nets for connecting Chip-level pins (pads) to core-level "ports"
  --------------------------------------------------------------------------------------------------
  SIGNAL ti_hi, ti_low          : std_logic;

  SIGNAL reset_net              :  std_logic;

  SIGNAL net_pad_en             : std_logic;
  SIGNAL net_pad_scan_en        : std_logic_vector(5  DOWNTO 0);
  SIGNAL net_pad_in             : std_logic_vector(pci_data_width-1 DOWNTO 0);
  SIGNAL net_pad_out            : std_logic_vector(pci_data_width-1 DOWNTO 0);

  -- PCI signals
  SIGNAL net_pidsel      : std_logic;
  SIGNAL net_pgnt_n      : std_logic;

  SIGNAL net_ppar_in     : std_logic;
  SIGNAL net_ppar_out    : std_logic;
  SIGNAL net_ppar_en     : std_logic;
  SIGNAL net_pc_be_in    : std_logic_vector(3 DOWNTO 0);
  SIGNAL net_pc_be_out   : std_logic_vector(3 DOWNTO 0);
  SIGNAL net_pc_be_en    : std_logic;
  SIGNAL net_pframe_n_in         : std_logic;
  SIGNAL net_pframe_n_out        : std_logic;
  SIGNAL net_pframe_n_en         : std_logic;
  SIGNAL net_ptrdy_n_in  : std_logic;
  SIGNAL net_ptrdy_n_out         : std_logic;
  SIGNAL net_ptrdy_n_en  : std_logic;
  SIGNAL net_pirdy_n_in  : std_logic;
  SIGNAL net_pirdy_n_out         : std_logic;
  SIGNAL net_pirdy_n_en  : std_logic;
  SIGNAL net_pdevsel_n_in        : std_logic;
  SIGNAL net_pdevsel_n_out       : std_logic;
  SIGNAL net_pdevsel_n_en        : std_logic;
  SIGNAL net_pstop_n_in  : std_logic;
  SIGNAL net_pstop_n_out         : std_logic;
  SIGNAL net_pstop_n_en  : std_logic;
  SIGNAL net_pperr_n_in  : std_logic;
  SIGNAL net_pperr_n_out         : std_logic;
  SIGNAL net_pperr_n_en  : std_logic;
  SIGNAL net_pserr_n_in  : std_logic;
  SIGNAL net_pserr_n_out         : std_logic;
  SIGNAL net_pserr_n_en  : std_logic;

  SIGNAL net_preq_n      : std_logic;
  SIGNAL net_pm66en      : std_logic;


  SIGNAL net_pclk        : std_logic;
  SIGNAL net_sdram_clk   : std_logic;
  SIGNAL net_sys_clk     : std_logic;

  SIGNAL net_pclk_fb      : std_logic;
  SIGNAL net_sdram_clk_fb : std_logic;
  
  SIGNAL net_test_mem_clk : std_logic;

  SIGNAL s_test_mode    : std_logic;
  SIGNAL s_iddq_mode    : std_logic;
  SIGNAL s_scan_en      : std_logic;
  SIGNAL s_bidi_enable  : std_logic;
  SIGNAL s_pll_bypass   : std_logic;
  SIGNAL s_power_save   : std_logic;
  
  SIGNAL buf_pclk         : std_logic;  
  SIGNAL buf_sys_clk      : std_logic;  
  SIGNAL buf_sys_2x_clk   : std_logic;  
  SIGNAL buf_sdram_clk    : std_logic;  
  SIGNAL s_pclk       : std_logic;  
  SIGNAL s_sys_clk    : std_logic;  
  SIGNAL s_sys_2x_clk : std_logic;  
  SIGNAL s_sdram_clk  : std_logic;  

  SIGNAL TAP_unconnected : std_logic;  
  SIGNAL s_TDI           : std_logic;  
  SIGNAL s_TDO           : std_logic;  
  SIGNAL s_TMS           : std_logic;  
  SIGNAL s_TCK           : std_logic;  
  SIGNAL s_TRST          : std_logic;  
  SIGNAL s_prst_n        : std_logic;  

  SIGNAL net_sdram_A       : std_logic_vector(sd_a_width-1 DOWNTO 0);
  SIGNAL net_sdram_A_in    : std_logic_vector(sd_a_width-1 DOWNTO 0);
  SIGNAL net_sdram_CK      : std_logic;
  SIGNAL net_sdram_CKn     : std_logic;
  SIGNAL net_sdram_LD      : std_logic;
  SIGNAL net_sdram_RW      : std_logic;
  SIGNAL net_sdram_BWS     : std_logic_vector(1 DOWNTO 0);

  SIGNAL net_sdram_DQ_in   : std_logic_vector(sd_dq_width-1 DOWNTO 0);
  SIGNAL net_sdram_DQ_out  : std_logic_vector(sd_dq_width-1 DOWNTO 0);
  SIGNAL net_sdram_DQ_en   : std_logic_vector(sd_dq_width-1 DOWNTO 0);

  SIGNAL net_test_sys2x_clk : std_logic;

  SIGNAL s_pci_rst_n       : std_logic;
  SIGNAL s_sdram_rst_n     : std_logic;
  SIGNAL s_sys_rst_n       : std_logic;
  SIGNAL s_sys_2x_rst_n    : std_logic;

--------------------------------------------------------------------------------------------------
-- BEGIN BEGIN BEGIN
--------------------------------------------------------------------------------------------------
BEGIN

  ti_low <= '0';
  ti_hi  <= '1';

  pclk_iopad: pc3d01 PORT MAP
    (     
      PAD => pclk,
      CIN => net_pclk
    );

  sys_clk_iopad: pc3d01 PORT MAP
    (     
      PAD => sys_clk,
      CIN => net_sys_clk
    );

  sdr_clk_iopad: pc3d01 PORT MAP
    (     
      PAD => sdr_clk,
      CIN => net_sdram_clk
    );

  -- for now... revive in future ORCA versions.
--   test_mem_clk_iopad: pc3d01 PORT MAP
--     (     
--       PAD => test_mem_clk,
--       CIN => net_test_mem_clk
--     );

--   test_sys2x_clk_iopad: pc3d01 PORT MAP
--     (     
--       PAD => test_sys2x_clk,
--       CIN => net_test_sys2x_clk
--     );

--   TCK_iopad: pc3d01 PORT MAP
--     (     
--       PAD => TCK,
--       CIN => open
--     );
--   TRST_iopad: pc3d01 PORT MAP
--     (
--       PAD => TRST,
--       CIN => open
--     );
--   TMS_iopad: pc3d01 PORT MAP
--     (
--       PAD => TMS,
--       CIN => open
--     );
--   TDI_iopad: pc3d01 PORT MAP
--     (
--       PAD => TDI,
--       CIN => open
--     );
--   TDO_iopad: pt3t01 PORT MAP
--     (
--      PAD => TDO,
--      I   => TAP_unconnected,
--      OEN => TAP_unconnected
--     );

-- Only needed if we had pull-up/down PADs
--   iddq_mode_iopad: pc3d01 PORT MAP
--     (     
--       PAD => iddq_mode,
--       CIN => s_iddq_mode
--     );

  test_mode_iopad: pc3d01 PORT MAP
    (     
      PAD => test_mode,
      CIN => s_test_mode
    );
  
  scan_en_iopad: pc3d01 PORT MAP
    (     
      PAD => scan_en,
      CIN => s_scan_en
    );

--   bidi_enable_iopad: pc3d01 PORT MAP
--     (     
--       PAD => bidi_enable,
--       CIN => s_bidi_enable
--     );

  pll_bypass_iopad: pc3d01 PORT MAP
    (     
      PAD => pll_bypass,
      CIN => s_pll_bypass
    );

  powersave_iopad: pc3d01 PORT MAP
    (     
      PAD => power_save,
      CIN => s_power_save
    );

  prst_n_iopad: pc3d01 PORT MAP
    ( PAD => prst_n,
      CIN => s_prst_n
    );

  pidsel_iopad: pc3d01 PORT MAP
  ( PAD => pidsel,
    CIN => net_pidsel
  );

  pgnt_n_iopad: pc3d01 PORT MAP
  ( PAD => pgnt_n,
    CIN => net_pgnt_n
  );

  PCI_Bus: FOR bit_index IN pci_data_width-1 DOWNTO 6 GENERATE
    pad_iopad: pc3b03
      PORT MAP                    
      ( PAD => pad(bit_index),
        CIN => net_pad_in(bit_index),
        I   => net_pad_out(bit_index),
        OEN => net_pad_en
        );
  END GENERATE PCI_Bus;

  -- the following 6 ports are scan_in ports. Have to be in input mode when scan_en is high. That
  -- means have scan_en ORed with the normal enable
--   scan_in_Bus: FOR bit_index IN 5 DOWNTO 0 GENERATE
--    scan_in_or: or02d1
--       PORT MAP 
--       ( A1 => s_scan_en,
--         A2 => net_pad_en(bit_index),
--         Z  => net_pad_scan_en(bit_index)
--       );
--   END GENERATE scan_in_Bus;
  
  PCI_Bus_lo: FOR bit_index IN 5 DOWNTO 0 GENERATE
    pad_iopad: pc3b03
      PORT MAP                    
      ( PAD => pad(bit_index),
        CIN => net_pad_in(bit_index),
        I   => net_pad_out(bit_index),
--      OEN => net_pad_scan_en(bit_index)
        OEN => net_pad_en
        );
  END GENERATE PCI_Bus_lo;

  ppar_iopad: pc3b03 PORT MAP
  ( PAD => ppar,
    CIN => net_ppar_in,
    I   => net_ppar_out,
    OEN => net_ppar_en
  );

  PCI_BE_Bus: FOR bit_index IN 3 DOWNTO 0 GENERATE
    pc_be_iopad: pc3b03 PORT MAP
      ( PAD => pc_be(bit_index),
        CIN => net_pc_be_in(bit_index),
        I   => net_pc_be_out(bit_index),
        OEN => net_pc_be_en
      );
  END GENERATE PCI_BE_Bus;

  pframe_n_iopad: pc3b03 PORT MAP
  ( PAD => pframe_n,
    CIN => net_pframe_n_in,
    I   => net_pframe_n_out,
    OEN => net_pframe_n_en
  );

  ptrdy_n_iopad: pc3b03 PORT MAP
  ( PAD => ptrdy_n,
    CIN => net_ptrdy_n_in,
    I   => net_ptrdy_n_out,
    OEN => net_ptrdy_n_en
  );

  pirdy_n_iopad: pc3b03 PORT MAP
  ( PAD => pirdy_n,
    CIN => net_pirdy_n_in,
    I   => net_pirdy_n_out,
    OEN => net_pirdy_n_en
  );

  pdevsel_n_iopad: pc3b03 PORT MAP
  ( PAD => pdevsel_n,
    CIN => net_pdevsel_n_in,
    I   => net_pdevsel_n_out,
    OEN => net_pdevsel_n_en
  );

  pstop_n_iopad: pc3b03 PORT MAP
  ( PAD => pstop_n,
    CIN => net_pstop_n_in,
    I   => net_pstop_n_out,
    OEN => net_pstop_n_en
  );

  pperr_n_iopad: pc3b03 PORT MAP
  ( PAD => pperr_n,
    CIN => net_pperr_n_in,
    I   => net_pperr_n_out,
    OEN => net_pperr_n_en
  );

  pserr_n_iopad: pc3b03 PORT MAP
  ( PAD => pserr_n,
    CIN => net_pserr_n_in,
    I   => net_pserr_n_out,
    OEN => net_pserr_n_en
  );

  preq_n_iopad: pc3o05 PORT MAP
  ( PAD => preq_n,
    I   => net_preq_n
  );

  pm66en_iopad: pc3d01 PORT MAP
  ( PAD => pm66en,
    CIN => net_pm66en
  );


  -- SDRAM PADS

  -- sd_A(0) - sd_A(5) are scan out ports
  SDRAM_A_Bus: FOR bit_index IN sd_a_width-1 DOWNTO 0 GENERATE
    sdram_A_iopad: pc3o05
    PORT MAP 
    ( PAD => sd_A(bit_index),
      I   => net_sdram_A(bit_index)
    );
  END GENERATE SDRAM_A_Bus;

  sdram_CK_iopad: pc3o05 PORT MAP 
  ( I   => net_sdram_CK,
    PAD => sd_CK
  );

  sdram_CKn_iopad: pc3o05 PORT MAP 
  ( I   => net_sdram_CKn,
    PAD => sd_CKn
  );

  sdram_LD_iopad: pc3o05 PORT MAP 
  ( I   => net_sdram_LD,
    PAD => sd_LD
  );

  sdram_RW_iopad: pc3o05 PORT MAP 
  ( I   => net_sdram_RW,
    PAD => sd_RW
  );

  SDRAM_BWS_Bus: FOR bit_index IN 1 DOWNTO 0 GENERATE
    sdram_BWS_iopad: pc3o05 PORT MAP 
    ( I   => net_sdram_BWS(bit_index),
      PAD => sd_BWS(bit_index)
    );
  END GENERATE SDRAM_BWS_Bus;

  SDRAM_DQ_Bus: FOR bit_index IN sd_dq_width-1 DOWNTO 0 GENERATE
    sdram_DQ_iopad: pc3b05 PORT MAP 
    ( PAD => sd_DQ(bit_index),
      CIN => net_sdram_DQ_in(bit_index),
      I   => net_sdram_DQ_out(bit_index),
      OEN => net_sdram_DQ_en(bit_index)
    );
  END GENERATE SDRAM_DQ_Bus;
    

  
  I_CLOCK_GEN: CLOCK_GEN PORT MAP
  (
    pclk                => net_pclk,
    sdram_clk           => net_sdram_clk,
    sys_clk             => net_sys_clk,

    pclk_fb             => buf_pclk,
    sdram_clk_fb        => buf_sdram_clk,

    test_mode           => s_test_mode,
    scan_enable         => s_scan_en,
    pll_bypass          => s_pll_bypass,
    powersave           => s_power_save,

    o_pclk              => s_pclk,
    o_sdram_clk         => s_sdram_clk,
    o_sys_clk           => s_sys_clk,
    o_sys_2x_clk        => s_sys_2x_clk
  );

  I_CLK_SOURCE_PCLK : bufbd7 PORT MAP (
    I => s_pclk,
    Z => buf_pclk
  );
        
  I_CLK_SOURCE_SYS_CLK : bufbd7 PORT MAP (
    I => s_sys_clk,
    Z => buf_sys_clk
  );

  I_CLK_SOURCE_SYS_2x_CLK : bufbd7 PORT MAP (
    I => s_sys_2x_clk,
    Z => buf_sys_2x_clk
  );

  I_CLK_SOURCE_SDRAM_CLK : bufbd7 PORT MAP (
    I => s_sdram_clk,
    Z => buf_sdram_clk
  );

  I_RESET_BLOCK: RESET_BLOCK
    PORT MAP (
      pclk         => buf_pclk,
      sys_clk      => buf_sys_clk,
      sys_2x_clk   => buf_sys_2x_clk,
      sdram_clk    => buf_sdram_clk,

      prst_n       => s_prst_n,
      test_mode    => s_test_mode,

      pci_rst_n    => s_pci_rst_n,
      sdram_rst_n  => s_sdram_rst_n,
      sys_rst_n    => s_sys_rst_n,
      sys_2x_rst_n => s_sys_2x_rst_n
    );

--   I_RST_SOURCE_PCI : bufbd7 PORT MAP (
--     I => s_pci_rst_n,
--     Z => pci_rst_n
--   );
        
--   I_RST_SOURCE_SDRAM : bufbd7 PORT MAP (
--     I => s_sdram_rst_n,
--     Z => sdram_rst_n
--   );
        
--   I_RST_SOURCE_SYS : bufbd7 PORT MAP (
--     I => s_sys_rst_n,
--     Z => sys_rst_n
--   );
        
--   I_RST_SOURCE_SYS_2x : bufbd7 PORT MAP (
--     I => s_sys_2x_rst_n,
--     Z => sys_2x_rst_n
--   );
        

-- temporary hack - need to add test_mem_clk back - this is just to
-- reduce number of clocks for Astro 1 class
--  net_test_mem_clk <= buf_sys_clk;
  
  I_ORCA_TOP : ORCA_TOP
--     GENERIC MAP (
--       sd_a_width      => sd_a_width,
--       sd_dq_width     => sd_dq_width,
--       pci_data_width  => pci_data_width
--     )
    PORT MAP (
    sys_clk           => buf_sys_clk,
    sys_2x_clk        => buf_sys_2x_clk,
    sdram_clk         => buf_sdram_clk,
    
    -- SCAN
    scan_en           => s_scan_en,
    test_mode         => s_test_mode,

    pci_rst_n         => s_pci_rst_n,
    sdram_rst_n       => s_sdram_rst_n,
    sys_rst_n         => s_sys_rst_n,
    sys_2x_rst_n      => s_sys_2x_rst_n,

    -- PCI Interface
    pclk              => buf_pclk,

    pidsel            => net_pidsel,
    pgnt_n            => net_pgnt_n,

    pad_in            => net_pad_in,
    pad_out           => net_pad_out,
    pad_en            => net_pad_en,
    
    ppar_in           => net_ppar_in,
    ppar_out          => net_ppar_out,
    ppar_en           => net_ppar_en,
    pc_be_in          => net_pc_be_in,
    pc_be_out         => net_pc_be_out,
    pc_be_en          => net_pc_be_en,
    pframe_n_in       => net_pframe_n_in,
    pframe_n_out      => net_pframe_n_out,
    pframe_n_en       => net_pframe_n_en,
    ptrdy_n_in        => net_ptrdy_n_in,
    ptrdy_n_out       => net_ptrdy_n_out,
    ptrdy_n_en        => net_ptrdy_n_en,
    pirdy_n_in        => net_pirdy_n_in,
    pirdy_n_out       => net_pirdy_n_out,
    pirdy_n_en        => net_pirdy_n_en,
    pdevsel_n_in      => net_pdevsel_n_in,
    pdevsel_n_out     => net_pdevsel_n_out,
    pdevsel_n_en      => net_pdevsel_n_en,
    pstop_n_in        => net_pstop_n_in,
    pstop_n_out       => net_pstop_n_out,
    pstop_n_en        => net_pstop_n_en,
    pperr_n_in        => net_pperr_n_in,
    pperr_n_out       => net_pperr_n_out,
    pperr_n_en        => net_pperr_n_en,
    pserr_n_in        => net_pserr_n_in,
    pserr_n_out       => net_pserr_n_out,
    pserr_n_en        => net_pserr_n_en,

    preq_n            => net_preq_n,
    pm66en            => net_pm66en,

    
    -- SDRAM Interface
    sd_A             => net_sdram_A,
    sd_CK            => net_sdram_CK,
    sd_CKn           => net_sdram_CKn,
    sd_LD            => net_sdram_LD,
    sd_RW            => net_sdram_RW,
    sd_BWS           => net_sdram_BWS,
    sd_DQ_in         => net_sdram_DQ_in,
    sd_DQ_out        => net_sdram_DQ_out,
    sd_DQ_en         => net_sdram_DQ_en
  );
    

END STRUCT;
