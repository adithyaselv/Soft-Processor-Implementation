library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Clk_sel/Clk_2_Sec"

entity clk_2_sec_entity_4134bbad8f is
  port (
    ce_1: in std_logic; 
    ce_50000000: in std_logic; 
    clk_1: in std_logic; 
    clk_50000000: in std_logic; 
    clk: out std_logic
  );
end clk_2_sec_entity_4134bbad8f;

architecture structural of clk_2_sec_entity_4134bbad8f is
  signal ce_1_sg_x0: std_logic;
  signal ce_50000000_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal clk_50000000_sg_x0: std_logic;
  signal convert1_dout_net: std_logic;
  signal counter1_op_net: std_logic;
  signal up_sample_q_net_x0: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  ce_50000000_sg_x0 <= ce_50000000;
  clk_1_sg_x0 <= clk_1;
  clk_50000000_sg_x0 <= clk_50000000;
  clk <= up_sample_q_net_x0;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_50000000_sg_x0,
      clk => clk_50000000_sg_x0,
      clr => '0',
      din(0) => counter1_op_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  counter1: entity work.counter_8ec3f4ab23
    port map (
      ce => ce_50000000_sg_x0,
      clk => clk_50000000_sg_x0,
      clr => '0',
      op(0) => counter1_op_net
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert1_dout_net,
      dest_ce => ce_1_sg_x0,
      dest_clk => clk_1_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_50000000_sg_x0,
      src_clk => clk_50000000_sg_x0,
      src_clr => '0',
      q(0) => up_sample_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Clk_sel/Clk_80_ns"

entity clk_80_ns_entity_35b48227f5 is
  port (
    ce_1: in std_logic; 
    ce_20: in std_logic; 
    clk_1: in std_logic; 
    clk_20: in std_logic; 
    clk: out std_logic
  );
end clk_80_ns_entity_35b48227f5;

architecture structural of clk_80_ns_entity_35b48227f5 is
  signal ce_1_sg_x1: std_logic;
  signal ce_20_sg_x0: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal clk_20_sg_x0: std_logic;
  signal convert1_dout_net: std_logic;
  signal counter1_op_net: std_logic;
  signal up_sample_q_net_x0: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  ce_20_sg_x0 <= ce_20;
  clk_1_sg_x1 <= clk_1;
  clk_20_sg_x0 <= clk_20;
  clk <= up_sample_q_net_x0;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_20_sg_x0,
      clk => clk_20_sg_x0,
      clr => '0',
      din(0) => counter1_op_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  counter1: entity work.counter_8ec3f4ab23
    port map (
      ce => ce_20_sg_x0,
      clk => clk_20_sg_x0,
      clr => '0',
      op(0) => counter1_op_net
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert1_dout_net,
      dest_ce => ce_1_sg_x1,
      dest_clk => clk_1_sg_x1,
      dest_clr => '0',
      en => "1",
      src_ce => ce_20_sg_x0,
      src_clk => clk_20_sg_x0,
      src_clr => '0',
      q(0) => up_sample_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Clk_sel"

entity clk_sel_entity_c42c01b52e is
  port (
    ce_1: in std_logic; 
    ce_20: in std_logic; 
    ce_50000000: in std_logic; 
    clk_1: in std_logic; 
    clk_20: in std_logic; 
    clk_50000000: in std_logic; 
    sel_clk: in std_logic; 
    clk: out std_logic
  );
end clk_sel_entity_c42c01b52e;

architecture structural of clk_sel_entity_c42c01b52e is
  signal ce_1_sg_x2: std_logic;
  signal ce_20_sg_x1: std_logic;
  signal ce_50000000_sg_x1: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal clk_20_sg_x1: std_logic;
  signal clk_50000000_sg_x1: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal g18_net_x0: std_logic;
  signal mux3_y_net: std_logic;
  signal up_sample_q_net_x0: std_logic;
  signal up_sample_q_net_x1: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  ce_20_sg_x1 <= ce_20;
  ce_50000000_sg_x1 <= ce_50000000;
  clk_1_sg_x2 <= clk_1;
  clk_20_sg_x1 <= clk_20;
  clk_50000000_sg_x1 <= clk_50000000;
  g18_net_x0 <= sel_clk;
  clk <= convert1_dout_net_x0;

  clk_2_sec_4134bbad8f: entity work.clk_2_sec_entity_4134bbad8f
    port map (
      ce_1 => ce_1_sg_x2,
      ce_50000000 => ce_50000000_sg_x1,
      clk_1 => clk_1_sg_x2,
      clk_50000000 => clk_50000000_sg_x1,
      clk => up_sample_q_net_x0
    );

  clk_80_ns_35b48227f5: entity work.clk_80_ns_entity_35b48227f5
    port map (
      ce_1 => ce_1_sg_x2,
      ce_20 => ce_20_sg_x1,
      clk_1 => clk_1_sg_x2,
      clk_20 => clk_20_sg_x1,
      clk => up_sample_q_net_x1
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din(0) => mux3_y_net,
      en => "1",
      dout(0) => convert1_dout_net_x0
    );

  mux3: entity work.mux_cde5f13da6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => up_sample_q_net_x0,
      d1(0) => up_sample_q_net_x1,
      sel(0) => g18_net_x0,
      y(0) => mux3_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_And/And1/Nand"

entity nand_entity_00c8ebf63f is
  port (
    a: in std_logic; 
    b: in std_logic; 
    q: out std_logic
  );
end nand_entity_00c8ebf63f;

architecture structural of nand_entity_00c8ebf63f is
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal slice1_y_net_x0: std_logic;

begin
  slice1_y_net_x0 <= a;
  logical_y_net_x1 <= b;
  q <= logical_y_net_x2;

  logical: entity work.logical_bde51e424d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice1_y_net_x0,
      d1(0) => logical_y_net_x1,
      y(0) => logical_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_And/And1/Nand1"

entity nand1_entity_8527edca66 is
  port (
    a: in std_logic; 
    q: out std_logic
  );
end nand1_entity_8527edca66;

architecture structural of nand1_entity_8527edca66 is
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x3: std_logic;

begin
  logical_y_net_x3 <= a;
  q <= logical_y_net_x0;

  logical: entity work.logical_bde51e424d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x3,
      d1(0) => logical_y_net_x3,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_And/And1"

entity and1_entity_13c07394a5 is
  port (
    a: in std_logic; 
    b: in std_logic; 
    o: out std_logic
  );
end and1_entity_13c07394a5;

architecture structural of and1_entity_13c07394a5 is
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal slice1_y_net_x1: std_logic;

begin
  slice1_y_net_x1 <= a;
  logical_y_net_x2 <= b;
  o <= logical_y_net_x4;

  nand1_8527edca66: entity work.nand1_entity_8527edca66
    port map (
      a => logical_y_net_x3,
      q => logical_y_net_x4
    );

  nand_00c8ebf63f: entity work.nand_entity_00c8ebf63f
    port map (
      a => slice1_y_net_x1,
      b => logical_y_net_x2,
      q => logical_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_And"

entity x16_and_entity_7d8d1ce640 is
  port (
    a1: in std_logic; 
    a16: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    in11: in std_logic; 
    in13: in std_logic; 
    in15: in std_logic; 
    in17: in std_logic; 
    in19: in std_logic; 
    in21: in std_logic; 
    in23: in std_logic; 
    in25: in std_logic; 
    in27: in std_logic; 
    in29: in std_logic; 
    in3: in std_logic; 
    in5: in std_logic; 
    in7: in std_logic; 
    in9: in std_logic; 
    o1: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    out10: out std_logic; 
    out11: out std_logic; 
    out12: out std_logic; 
    out13: out std_logic; 
    out14: out std_logic; 
    out15: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic
  );
end x16_and_entity_7d8d1ce640;

architecture structural of x16_and_entity_7d8d1ce640 is
  signal logical_y_net_x35: std_logic;
  signal logical_y_net_x36: std_logic;
  signal logical_y_net_x37: std_logic;
  signal logical_y_net_x38: std_logic;
  signal logical_y_net_x39: std_logic;
  signal logical_y_net_x40: std_logic;
  signal logical_y_net_x41: std_logic;
  signal logical_y_net_x42: std_logic;
  signal logical_y_net_x43: std_logic;
  signal logical_y_net_x44: std_logic;
  signal logical_y_net_x45: std_logic;
  signal logical_y_net_x46: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x48: std_logic;
  signal logical_y_net_x49: std_logic;
  signal logical_y_net_x50: std_logic;
  signal logical_y_net_x51: std_logic;
  signal logical_y_net_x52: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x57: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;
  signal logical_y_net_x62: std_logic;
  signal logical_y_net_x63: std_logic;
  signal logical_y_net_x64: std_logic;
  signal logical_y_net_x65: std_logic;
  signal logical_y_net_x66: std_logic;
  signal slice10_y_net_x2: std_logic;
  signal slice11_y_net_x2: std_logic;
  signal slice12_y_net_x2: std_logic;
  signal slice13_y_net_x2: std_logic;
  signal slice14_y_net_x2: std_logic;
  signal slice15_y_net_x2: std_logic;
  signal slice1_y_net_x2: std_logic;
  signal slice2_y_net_x2: std_logic;
  signal slice3_y_net_x2: std_logic;
  signal slice4_y_net_x2: std_logic;
  signal slice5_y_net_x2: std_logic;
  signal slice6_y_net_x2: std_logic;
  signal slice7_y_net_x2: std_logic;
  signal slice8_y_net_x2: std_logic;
  signal slice9_y_net_x2: std_logic;
  signal slice_y_net_x2: std_logic;

begin
  slice_y_net_x2 <= a1;
  slice2_y_net_x2 <= a16;
  logical_y_net_x35 <= b1;
  logical_y_net_x50 <= b10;
  logical_y_net_x37 <= b11;
  logical_y_net_x38 <= b12;
  logical_y_net_x41 <= b13;
  logical_y_net_x42 <= b14;
  logical_y_net_x39 <= b15;
  logical_y_net_x40 <= b16;
  logical_y_net_x36 <= b2;
  logical_y_net_x43 <= b3;
  logical_y_net_x44 <= b4;
  logical_y_net_x45 <= b5;
  logical_y_net_x46 <= b6;
  logical_y_net_x47 <= b7;
  logical_y_net_x48 <= b8;
  logical_y_net_x49 <= b9;
  slice6_y_net_x2 <= in11;
  slice7_y_net_x2 <= in13;
  slice8_y_net_x2 <= in15;
  slice9_y_net_x2 <= in17;
  slice10_y_net_x2 <= in19;
  slice11_y_net_x2 <= in21;
  slice12_y_net_x2 <= in23;
  slice13_y_net_x2 <= in25;
  slice14_y_net_x2 <= in27;
  slice15_y_net_x2 <= in29;
  slice1_y_net_x2 <= in3;
  slice3_y_net_x2 <= in5;
  slice4_y_net_x2 <= in7;
  slice5_y_net_x2 <= in9;
  o1 <= logical_y_net_x58;
  o16 <= logical_y_net_x57;
  o2 <= logical_y_net_x51;
  o3 <= logical_y_net_x59;
  out10 <= logical_y_net_x66;
  out11 <= logical_y_net_x52;
  out12 <= logical_y_net_x53;
  out13 <= logical_y_net_x54;
  out14 <= logical_y_net_x55;
  out15 <= logical_y_net_x56;
  out4 <= logical_y_net_x60;
  out5 <= logical_y_net_x61;
  out6 <= logical_y_net_x62;
  out7 <= logical_y_net_x63;
  out8 <= logical_y_net_x64;
  out9 <= logical_y_net_x65;

  and10_90d42eb102: entity work.and1_entity_13c07394a5
    port map (
      a => slice11_y_net_x2,
      b => logical_y_net_x37,
      o => logical_y_net_x52
    );

  and11_339f006c5c: entity work.and1_entity_13c07394a5
    port map (
      a => slice12_y_net_x2,
      b => logical_y_net_x38,
      o => logical_y_net_x53
    );

  and12_aac74212e9: entity work.and1_entity_13c07394a5
    port map (
      a => slice13_y_net_x2,
      b => logical_y_net_x41,
      o => logical_y_net_x54
    );

  and13_a509369ec6: entity work.and1_entity_13c07394a5
    port map (
      a => slice14_y_net_x2,
      b => logical_y_net_x42,
      o => logical_y_net_x55
    );

  and14_1b15d71e37: entity work.and1_entity_13c07394a5
    port map (
      a => slice15_y_net_x2,
      b => logical_y_net_x39,
      o => logical_y_net_x56
    );

  and15_a0a5b992d3: entity work.and1_entity_13c07394a5
    port map (
      a => slice2_y_net_x2,
      b => logical_y_net_x40,
      o => logical_y_net_x57
    );

  and16_e5b6589111: entity work.and1_entity_13c07394a5
    port map (
      a => slice_y_net_x2,
      b => logical_y_net_x35,
      o => logical_y_net_x58
    );

  and1_13c07394a5: entity work.and1_entity_13c07394a5
    port map (
      a => slice1_y_net_x2,
      b => logical_y_net_x36,
      o => logical_y_net_x51
    );

  and2_77f9d04138: entity work.and1_entity_13c07394a5
    port map (
      a => slice3_y_net_x2,
      b => logical_y_net_x43,
      o => logical_y_net_x59
    );

  and3_579e85e2f3: entity work.and1_entity_13c07394a5
    port map (
      a => slice4_y_net_x2,
      b => logical_y_net_x44,
      o => logical_y_net_x60
    );

  and4_281fc2ce25: entity work.and1_entity_13c07394a5
    port map (
      a => slice5_y_net_x2,
      b => logical_y_net_x45,
      o => logical_y_net_x61
    );

  and5_9289ee7c86: entity work.and1_entity_13c07394a5
    port map (
      a => slice6_y_net_x2,
      b => logical_y_net_x46,
      o => logical_y_net_x62
    );

  and6_0b7b88bdc1: entity work.and1_entity_13c07394a5
    port map (
      a => slice7_y_net_x2,
      b => logical_y_net_x47,
      o => logical_y_net_x63
    );

  and7_14c184a768: entity work.and1_entity_13c07394a5
    port map (
      a => slice8_y_net_x2,
      b => logical_y_net_x48,
      o => logical_y_net_x64
    );

  and8_821b150dc6: entity work.and1_entity_13c07394a5
    port map (
      a => slice9_y_net_x2,
      b => logical_y_net_x49,
      o => logical_y_net_x65
    );

  and9_66ca533e64: entity work.and1_entity_13c07394a5
    port map (
      a => slice10_y_net_x2,
      b => logical_y_net_x50,
      o => logical_y_net_x66
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_And1"

entity x16_and1_entity_678c19c187 is
  port (
    a1: in std_logic; 
    a16: in std_logic; 
    b1: in std_logic; 
    in11: in std_logic; 
    in13: in std_logic; 
    in15: in std_logic; 
    in17: in std_logic; 
    in19: in std_logic; 
    in21: in std_logic; 
    in23: in std_logic; 
    in25: in std_logic; 
    in27: in std_logic; 
    in29: in std_logic; 
    in3: in std_logic; 
    in5: in std_logic; 
    in7: in std_logic; 
    in9: in std_logic; 
    o1: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    out10: out std_logic; 
    out11: out std_logic; 
    out12: out std_logic; 
    out13: out std_logic; 
    out14: out std_logic; 
    out15: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic
  );
end x16_and1_entity_678c19c187;

architecture structural of x16_and1_entity_678c19c187 is
  signal logical_y_net_x19: std_logic;
  signal logical_y_net_x20: std_logic;
  signal logical_y_net_x21: std_logic;
  signal logical_y_net_x22: std_logic;
  signal logical_y_net_x23: std_logic;
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x25: std_logic;
  signal logical_y_net_x26: std_logic;
  signal logical_y_net_x27: std_logic;
  signal logical_y_net_x28: std_logic;
  signal logical_y_net_x29: std_logic;
  signal logical_y_net_x30: std_logic;
  signal logical_y_net_x31: std_logic;
  signal logical_y_net_x32: std_logic;
  signal logical_y_net_x33: std_logic;
  signal logical_y_net_x34: std_logic;
  signal slice10_y_net_x2: std_logic;
  signal slice11_y_net_x2: std_logic;
  signal slice12_y_net_x2: std_logic;
  signal slice13_y_net_x2: std_logic;
  signal slice14_y_net_x2: std_logic;
  signal slice15_y_net_x2: std_logic;
  signal slice1_y_net_x2: std_logic;
  signal slice2_y_net_x2: std_logic;
  signal slice3_y_net_x2: std_logic;
  signal slice4_y_net_x32: std_logic;
  signal slice4_y_net_x33: std_logic;
  signal slice5_y_net_x2: std_logic;
  signal slice6_y_net_x2: std_logic;
  signal slice7_y_net_x2: std_logic;
  signal slice8_y_net_x2: std_logic;
  signal slice9_y_net_x2: std_logic;
  signal slice_y_net_x2: std_logic;

begin
  slice_y_net_x2 <= a1;
  slice2_y_net_x2 <= a16;
  slice4_y_net_x32 <= b1;
  slice6_y_net_x2 <= in11;
  slice7_y_net_x2 <= in13;
  slice8_y_net_x2 <= in15;
  slice9_y_net_x2 <= in17;
  slice10_y_net_x2 <= in19;
  slice11_y_net_x2 <= in21;
  slice12_y_net_x2 <= in23;
  slice13_y_net_x2 <= in25;
  slice14_y_net_x2 <= in27;
  slice15_y_net_x2 <= in29;
  slice1_y_net_x2 <= in3;
  slice3_y_net_x2 <= in5;
  slice4_y_net_x33 <= in7;
  slice5_y_net_x2 <= in9;
  o1 <= logical_y_net_x26;
  o16 <= logical_y_net_x25;
  o2 <= logical_y_net_x19;
  o3 <= logical_y_net_x27;
  out10 <= logical_y_net_x34;
  out11 <= logical_y_net_x20;
  out12 <= logical_y_net_x21;
  out13 <= logical_y_net_x22;
  out14 <= logical_y_net_x23;
  out15 <= logical_y_net_x24;
  out4 <= logical_y_net_x28;
  out5 <= logical_y_net_x29;
  out6 <= logical_y_net_x30;
  out7 <= logical_y_net_x31;
  out8 <= logical_y_net_x32;
  out9 <= logical_y_net_x33;

  and10_7a6694e7c8: entity work.and1_entity_13c07394a5
    port map (
      a => slice11_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x20
    );

  and11_0a4cb3eefa: entity work.and1_entity_13c07394a5
    port map (
      a => slice12_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x21
    );

  and12_2dceb1a4b7: entity work.and1_entity_13c07394a5
    port map (
      a => slice13_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x22
    );

  and13_5d5c221154: entity work.and1_entity_13c07394a5
    port map (
      a => slice14_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x23
    );

  and14_305cc024d5: entity work.and1_entity_13c07394a5
    port map (
      a => slice15_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x24
    );

  and15_a021a02995: entity work.and1_entity_13c07394a5
    port map (
      a => slice2_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x25
    );

  and16_e71717e17a: entity work.and1_entity_13c07394a5
    port map (
      a => slice_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x26
    );

  and1_562ba6fb57: entity work.and1_entity_13c07394a5
    port map (
      a => slice1_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x19
    );

  and2_81546ad715: entity work.and1_entity_13c07394a5
    port map (
      a => slice3_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x27
    );

  and3_c0b32d44f9: entity work.and1_entity_13c07394a5
    port map (
      a => slice4_y_net_x33,
      b => slice4_y_net_x32,
      o => logical_y_net_x28
    );

  and4_1e4e31cedc: entity work.and1_entity_13c07394a5
    port map (
      a => slice5_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x29
    );

  and5_ab0c372ee8: entity work.and1_entity_13c07394a5
    port map (
      a => slice6_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x30
    );

  and6_3ba2c1174b: entity work.and1_entity_13c07394a5
    port map (
      a => slice7_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x31
    );

  and7_438240eb18: entity work.and1_entity_13c07394a5
    port map (
      a => slice8_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x32
    );

  and8_b7d4bb8c80: entity work.and1_entity_13c07394a5
    port map (
      a => slice9_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x33
    );

  and9_27b066d6d3: entity work.and1_entity_13c07394a5
    port map (
      a => slice10_y_net_x2,
      b => slice4_y_net_x32,
      o => logical_y_net_x34
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_Not/Not"

entity not_entity_750f1f8f15 is
  port (
    a: in std_logic; 
    o: out std_logic
  );
end not_entity_750f1f8f15;

architecture structural of not_entity_750f1f8f15 is
  signal logical_y_net_x37: std_logic;
  signal slice4_y_net_x34: std_logic;

begin
  slice4_y_net_x34 <= a;
  o <= logical_y_net_x37;

  nand_e85a9e3c29: entity work.nand1_entity_8527edca66
    port map (
      a => slice4_y_net_x34,
      q => logical_y_net_x37
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_Not"

entity x16_not_entity_d993077086 is
  port (
    a1: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic; 
    out1: out std_logic; 
    out2: out std_logic; 
    out4: out std_logic
  );
end x16_not_entity_d993077086;

architecture structural of x16_not_entity_d993077086 is
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x57: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;
  signal logical_y_net_x62: std_logic;
  signal logical_y_net_x63: std_logic;
  signal logical_y_net_x64: std_logic;
  signal logical_y_net_x65: std_logic;
  signal logical_y_net_x66: std_logic;
  signal logical_y_net_x67: std_logic;
  signal logical_y_net_x68: std_logic;
  signal slice4_y_net_x65: std_logic;

begin
  slice4_y_net_x65 <= a1;
  o1 <= logical_y_net_x53;
  o10 <= logical_y_net_x59;
  o11 <= logical_y_net_x60;
  o12 <= logical_y_net_x57;
  o16 <= logical_y_net_x58;
  o2 <= logical_y_net_x54;
  o3 <= logical_y_net_x61;
  o4 <= logical_y_net_x63;
  o5 <= logical_y_net_x64;
  o6 <= logical_y_net_x65;
  o7 <= logical_y_net_x67;
  o8 <= logical_y_net_x68;
  o9 <= logical_y_net_x55;
  out1 <= logical_y_net_x66;
  out2 <= logical_y_net_x56;
  out4 <= logical_y_net_x62;

  not10_9bdd8f76a8: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x55
    );

  not11_eb0c4da00f: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x56
    );

  not12_24b78a9cf7: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x57
    );

  not13_018a12408b: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x58
    );

  not14_65de27d086: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x59
    );

  not15_794ffa6639: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x60
    );

  not1_d2b085d766: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x54
    );

  not2_1b9d2d1528: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x61
    );

  not3_ded07fecc2: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x62
    );

  not4_894fa056e2: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x63
    );

  not5_d6c7b11025: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x64
    );

  not6_6be9e16e37: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x65
    );

  not7_de5c9b7cbe: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x66
    );

  not8_2ba46e2a3b: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x67
    );

  not9_bbc9fa5ea0: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x68
    );

  not_750f1f8f15: entity work.not_entity_750f1f8f15
    port map (
      a => slice4_y_net_x65,
      o => logical_y_net_x53
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_Or/Or"

entity or_entity_247ef195fa is
  port (
    a: in std_logic; 
    b: in std_logic; 
    o: out std_logic
  );
end or_entity_247ef195fa;

architecture structural of or_entity_247ef195fa is
  signal logical_y_net_x28: std_logic;
  signal logical_y_net_x3: std_logic;
  signal logical_y_net_x5: std_logic;
  signal logical_y_net_x6: std_logic;
  signal logical_y_net_x60: std_logic;

begin
  logical_y_net_x60 <= a;
  logical_y_net_x28 <= b;
  o <= logical_y_net_x6;

  nand1_55b05cdf52: entity work.nand1_entity_8527edca66
    port map (
      a => logical_y_net_x60,
      q => logical_y_net_x3
    );

  nand2_2a0b2b7706: entity work.nand1_entity_8527edca66
    port map (
      a => logical_y_net_x28,
      q => logical_y_net_x5
    );

  nand_0950ed6d55: entity work.nand_entity_00c8ebf63f
    port map (
      a => logical_y_net_x3,
      b => logical_y_net_x5,
      q => logical_y_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1/16_Or"

entity x16_or_entity_2effd3130b is
  port (
    a1: in std_logic; 
    a16: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    in11: in std_logic; 
    in13: in std_logic; 
    in15: in std_logic; 
    in17: in std_logic; 
    in19: in std_logic; 
    in21: in std_logic; 
    in23: in std_logic; 
    in25: in std_logic; 
    in27: in std_logic; 
    in29: in std_logic; 
    in3: in std_logic; 
    in5: in std_logic; 
    in7: in std_logic; 
    in9: in std_logic; 
    o1: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    out10: out std_logic; 
    out11: out std_logic; 
    out12: out std_logic; 
    out13: out std_logic; 
    out14: out std_logic; 
    out15: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic
  );
end x16_or_entity_2effd3130b;

architecture structural of x16_or_entity_2effd3130b is
  signal logical_y_net_x100: std_logic;
  signal logical_y_net_x101: std_logic;
  signal logical_y_net_x102: std_logic;
  signal logical_y_net_x103: std_logic;
  signal logical_y_net_x104: std_logic;
  signal logical_y_net_x105: std_logic;
  signal logical_y_net_x106: std_logic;
  signal logical_y_net_x107: std_logic;
  signal logical_y_net_x108: std_logic;
  signal logical_y_net_x109: std_logic;
  signal logical_y_net_x110: std_logic;
  signal logical_y_net_x111: std_logic;
  signal logical_y_net_x112: std_logic;
  signal logical_y_net_x113: std_logic;
  signal logical_y_net_x114: std_logic;
  signal logical_y_net_x115: std_logic;
  signal logical_y_net_x116: std_logic;
  signal logical_y_net_x117: std_logic;
  signal logical_y_net_x118: std_logic;
  signal logical_y_net_x119: std_logic;
  signal logical_y_net_x120: std_logic;
  signal logical_y_net_x121: std_logic;
  signal logical_y_net_x122: std_logic;
  signal logical_y_net_x123: std_logic;
  signal logical_y_net_x124: std_logic;
  signal logical_y_net_x125: std_logic;
  signal logical_y_net_x126: std_logic;
  signal logical_y_net_x127: std_logic;
  signal logical_y_net_x128: std_logic;
  signal logical_y_net_x129: std_logic;
  signal logical_y_net_x130: std_logic;
  signal logical_y_net_x131: std_logic;
  signal logical_y_net_x84: std_logic;
  signal logical_y_net_x85: std_logic;
  signal logical_y_net_x86: std_logic;
  signal logical_y_net_x87: std_logic;
  signal logical_y_net_x88: std_logic;
  signal logical_y_net_x89: std_logic;
  signal logical_y_net_x90: std_logic;
  signal logical_y_net_x91: std_logic;
  signal logical_y_net_x92: std_logic;
  signal logical_y_net_x93: std_logic;
  signal logical_y_net_x94: std_logic;
  signal logical_y_net_x95: std_logic;
  signal logical_y_net_x96: std_logic;
  signal logical_y_net_x97: std_logic;
  signal logical_y_net_x98: std_logic;
  signal logical_y_net_x99: std_logic;

begin
  logical_y_net_x91 <= a1;
  logical_y_net_x90 <= a16;
  logical_y_net_x107 <= b1;
  logical_y_net_x115 <= b10;
  logical_y_net_x101 <= b11;
  logical_y_net_x102 <= b12;
  logical_y_net_x103 <= b13;
  logical_y_net_x104 <= b14;
  logical_y_net_x105 <= b15;
  logical_y_net_x106 <= b16;
  logical_y_net_x100 <= b2;
  logical_y_net_x108 <= b3;
  logical_y_net_x109 <= b4;
  logical_y_net_x110 <= b5;
  logical_y_net_x111 <= b6;
  logical_y_net_x112 <= b7;
  logical_y_net_x113 <= b8;
  logical_y_net_x114 <= b9;
  logical_y_net_x95 <= in11;
  logical_y_net_x96 <= in13;
  logical_y_net_x97 <= in15;
  logical_y_net_x98 <= in17;
  logical_y_net_x99 <= in19;
  logical_y_net_x85 <= in21;
  logical_y_net_x86 <= in23;
  logical_y_net_x87 <= in25;
  logical_y_net_x88 <= in27;
  logical_y_net_x89 <= in29;
  logical_y_net_x84 <= in3;
  logical_y_net_x92 <= in5;
  logical_y_net_x93 <= in7;
  logical_y_net_x94 <= in9;
  o1 <= logical_y_net_x116;
  o16 <= logical_y_net_x123;
  o2 <= logical_y_net_x117;
  o3 <= logical_y_net_x124;
  out10 <= logical_y_net_x131;
  out11 <= logical_y_net_x118;
  out12 <= logical_y_net_x119;
  out13 <= logical_y_net_x120;
  out14 <= logical_y_net_x121;
  out15 <= logical_y_net_x122;
  out4 <= logical_y_net_x125;
  out5 <= logical_y_net_x126;
  out6 <= logical_y_net_x127;
  out7 <= logical_y_net_x128;
  out8 <= logical_y_net_x129;
  out9 <= logical_y_net_x130;

  or10_c461f94d22: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x85,
      b => logical_y_net_x101,
      o => logical_y_net_x118
    );

  or11_cc14b52d5c: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x86,
      b => logical_y_net_x102,
      o => logical_y_net_x119
    );

  or12_ff332ed7a5: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x87,
      b => logical_y_net_x103,
      o => logical_y_net_x120
    );

  or13_0228016e65: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x88,
      b => logical_y_net_x104,
      o => logical_y_net_x121
    );

  or14_b380d6c6e2: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x89,
      b => logical_y_net_x105,
      o => logical_y_net_x122
    );

  or15_661953340f: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x90,
      b => logical_y_net_x106,
      o => logical_y_net_x123
    );

  or1_0a2a6e4bbd: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x84,
      b => logical_y_net_x100,
      o => logical_y_net_x117
    );

  or2_03fa65f2aa: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x92,
      b => logical_y_net_x108,
      o => logical_y_net_x124
    );

  or3_195eadbd9b: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x93,
      b => logical_y_net_x109,
      o => logical_y_net_x125
    );

  or4_0d9bcb0163: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x94,
      b => logical_y_net_x110,
      o => logical_y_net_x126
    );

  or5_74601c2be9: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x95,
      b => logical_y_net_x111,
      o => logical_y_net_x127
    );

  or6_70a74a9d2e: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x96,
      b => logical_y_net_x112,
      o => logical_y_net_x128
    );

  or7_b1a3d33440: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x97,
      b => logical_y_net_x113,
      o => logical_y_net_x129
    );

  or8_bb2e74eb90: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x98,
      b => logical_y_net_x114,
      o => logical_y_net_x130
    );

  or9_bbfb01bbee: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x99,
      b => logical_y_net_x115,
      o => logical_y_net_x131
    );

  or_247ef195fa: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x91,
      b => logical_y_net_x107,
      o => logical_y_net_x116
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_2:1_Mux1"

entity x16_2_1_mux1_entity_8b394cc3d5 is
  port (
    a1: in std_logic; 
    a10: in std_logic; 
    a11: in std_logic; 
    a12: in std_logic; 
    a13: in std_logic; 
    a14: in std_logic; 
    a15: in std_logic; 
    a16: in std_logic; 
    a2: in std_logic; 
    a3: in std_logic; 
    a4: in std_logic; 
    a5: in std_logic; 
    a6: in std_logic; 
    a7: in std_logic; 
    a8: in std_logic; 
    a9: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    sel: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end x16_2_1_mux1_entity_8b394cc3d5;

architecture structural of x16_2_1_mux1_entity_8b394cc3d5 is
  signal logical_y_net_x100: std_logic;
  signal logical_y_net_x101: std_logic;
  signal logical_y_net_x102: std_logic;
  signal logical_y_net_x103: std_logic;
  signal logical_y_net_x104: std_logic;
  signal logical_y_net_x105: std_logic;
  signal logical_y_net_x106: std_logic;
  signal logical_y_net_x107: std_logic;
  signal logical_y_net_x108: std_logic;
  signal logical_y_net_x109: std_logic;
  signal logical_y_net_x110: std_logic;
  signal logical_y_net_x111: std_logic;
  signal logical_y_net_x112: std_logic;
  signal logical_y_net_x113: std_logic;
  signal logical_y_net_x114: std_logic;
  signal logical_y_net_x115: std_logic;
  signal logical_y_net_x132: std_logic;
  signal logical_y_net_x133: std_logic;
  signal logical_y_net_x134: std_logic;
  signal logical_y_net_x135: std_logic;
  signal logical_y_net_x136: std_logic;
  signal logical_y_net_x137: std_logic;
  signal logical_y_net_x138: std_logic;
  signal logical_y_net_x139: std_logic;
  signal logical_y_net_x140: std_logic;
  signal logical_y_net_x141: std_logic;
  signal logical_y_net_x142: std_logic;
  signal logical_y_net_x143: std_logic;
  signal logical_y_net_x144: std_logic;
  signal logical_y_net_x145: std_logic;
  signal logical_y_net_x146: std_logic;
  signal logical_y_net_x147: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x57: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;
  signal logical_y_net_x62: std_logic;
  signal logical_y_net_x63: std_logic;
  signal logical_y_net_x64: std_logic;
  signal logical_y_net_x65: std_logic;
  signal logical_y_net_x66: std_logic;
  signal logical_y_net_x67: std_logic;
  signal logical_y_net_x68: std_logic;
  signal logical_y_net_x84: std_logic;
  signal logical_y_net_x85: std_logic;
  signal logical_y_net_x86: std_logic;
  signal logical_y_net_x87: std_logic;
  signal logical_y_net_x88: std_logic;
  signal logical_y_net_x89: std_logic;
  signal logical_y_net_x90: std_logic;
  signal logical_y_net_x91: std_logic;
  signal logical_y_net_x92: std_logic;
  signal logical_y_net_x93: std_logic;
  signal logical_y_net_x94: std_logic;
  signal logical_y_net_x95: std_logic;
  signal logical_y_net_x96: std_logic;
  signal logical_y_net_x97: std_logic;
  signal logical_y_net_x98: std_logic;
  signal logical_y_net_x99: std_logic;
  signal slice10_y_net_x4: std_logic;
  signal slice10_y_net_x5: std_logic;
  signal slice11_y_net_x4: std_logic;
  signal slice11_y_net_x5: std_logic;
  signal slice12_y_net_x4: std_logic;
  signal slice12_y_net_x5: std_logic;
  signal slice13_y_net_x4: std_logic;
  signal slice13_y_net_x5: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice14_y_net_x5: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice15_y_net_x5: std_logic;
  signal slice1_y_net_x4: std_logic;
  signal slice1_y_net_x5: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice2_y_net_x5: std_logic;
  signal slice3_y_net_x4: std_logic;
  signal slice3_y_net_x5: std_logic;
  signal slice4_y_net_x34: std_logic;
  signal slice4_y_net_x35: std_logic;
  signal slice4_y_net_x66: std_logic;
  signal slice5_y_net_x4: std_logic;
  signal slice5_y_net_x5: std_logic;
  signal slice6_y_net_x4: std_logic;
  signal slice6_y_net_x5: std_logic;
  signal slice7_y_net_x4: std_logic;
  signal slice7_y_net_x5: std_logic;
  signal slice8_y_net_x4: std_logic;
  signal slice8_y_net_x5: std_logic;
  signal slice9_y_net_x4: std_logic;
  signal slice9_y_net_x5: std_logic;
  signal slice_y_net_x4: std_logic;
  signal slice_y_net_x5: std_logic;

begin
  slice_y_net_x5 <= a1;
  slice10_y_net_x5 <= a10;
  slice11_y_net_x5 <= a11;
  slice12_y_net_x5 <= a12;
  slice13_y_net_x5 <= a13;
  slice14_y_net_x5 <= a14;
  slice15_y_net_x5 <= a15;
  slice2_y_net_x5 <= a16;
  slice1_y_net_x5 <= a2;
  slice3_y_net_x5 <= a3;
  slice4_y_net_x35 <= a4;
  slice5_y_net_x5 <= a5;
  slice6_y_net_x5 <= a6;
  slice7_y_net_x5 <= a7;
  slice8_y_net_x5 <= a8;
  slice9_y_net_x5 <= a9;
  slice_y_net_x4 <= b1;
  slice10_y_net_x4 <= b10;
  slice11_y_net_x4 <= b11;
  slice12_y_net_x4 <= b12;
  slice13_y_net_x4 <= b13;
  slice14_y_net_x4 <= b14;
  slice15_y_net_x4 <= b15;
  slice2_y_net_x4 <= b16;
  slice1_y_net_x4 <= b2;
  slice3_y_net_x4 <= b3;
  slice4_y_net_x34 <= b4;
  slice5_y_net_x4 <= b5;
  slice6_y_net_x4 <= b6;
  slice7_y_net_x4 <= b7;
  slice8_y_net_x4 <= b8;
  slice9_y_net_x4 <= b9;
  slice4_y_net_x66 <= sel;
  o1 <= logical_y_net_x132;
  o10 <= logical_y_net_x147;
  o11 <= logical_y_net_x134;
  o12 <= logical_y_net_x135;
  o13 <= logical_y_net_x136;
  o14 <= logical_y_net_x137;
  o15 <= logical_y_net_x138;
  o16 <= logical_y_net_x139;
  o2 <= logical_y_net_x133;
  o3 <= logical_y_net_x140;
  o4 <= logical_y_net_x141;
  o5 <= logical_y_net_x142;
  o6 <= logical_y_net_x143;
  o7 <= logical_y_net_x144;
  o8 <= logical_y_net_x145;
  o9 <= logical_y_net_x146;

  x16_and1_678c19c187: entity work.x16_and1_entity_678c19c187
    port map (
      a1 => slice_y_net_x4,
      a16 => slice2_y_net_x4,
      b1 => slice4_y_net_x66,
      in11 => slice6_y_net_x4,
      in13 => slice7_y_net_x4,
      in15 => slice8_y_net_x4,
      in17 => slice9_y_net_x4,
      in19 => slice10_y_net_x4,
      in21 => slice11_y_net_x4,
      in23 => slice12_y_net_x4,
      in25 => slice13_y_net_x4,
      in27 => slice14_y_net_x4,
      in29 => slice15_y_net_x4,
      in3 => slice1_y_net_x4,
      in5 => slice3_y_net_x4,
      in7 => slice4_y_net_x34,
      in9 => slice5_y_net_x4,
      o1 => logical_y_net_x107,
      o16 => logical_y_net_x106,
      o2 => logical_y_net_x100,
      o3 => logical_y_net_x108,
      out10 => logical_y_net_x115,
      out11 => logical_y_net_x101,
      out12 => logical_y_net_x102,
      out13 => logical_y_net_x103,
      out14 => logical_y_net_x104,
      out15 => logical_y_net_x105,
      out4 => logical_y_net_x109,
      out5 => logical_y_net_x110,
      out6 => logical_y_net_x111,
      out7 => logical_y_net_x112,
      out8 => logical_y_net_x113,
      out9 => logical_y_net_x114
    );

  x16_and_7d8d1ce640: entity work.x16_and_entity_7d8d1ce640
    port map (
      a1 => slice_y_net_x5,
      a16 => slice2_y_net_x5,
      b1 => logical_y_net_x53,
      b10 => logical_y_net_x68,
      b11 => logical_y_net_x55,
      b12 => logical_y_net_x56,
      b13 => logical_y_net_x59,
      b14 => logical_y_net_x60,
      b15 => logical_y_net_x57,
      b16 => logical_y_net_x58,
      b2 => logical_y_net_x54,
      b3 => logical_y_net_x61,
      b4 => logical_y_net_x62,
      b5 => logical_y_net_x63,
      b6 => logical_y_net_x64,
      b7 => logical_y_net_x65,
      b8 => logical_y_net_x66,
      b9 => logical_y_net_x67,
      in11 => slice6_y_net_x5,
      in13 => slice7_y_net_x5,
      in15 => slice8_y_net_x5,
      in17 => slice9_y_net_x5,
      in19 => slice10_y_net_x5,
      in21 => slice11_y_net_x5,
      in23 => slice12_y_net_x5,
      in25 => slice13_y_net_x5,
      in27 => slice14_y_net_x5,
      in29 => slice15_y_net_x5,
      in3 => slice1_y_net_x5,
      in5 => slice3_y_net_x5,
      in7 => slice4_y_net_x35,
      in9 => slice5_y_net_x5,
      o1 => logical_y_net_x91,
      o16 => logical_y_net_x90,
      o2 => logical_y_net_x84,
      o3 => logical_y_net_x92,
      out10 => logical_y_net_x99,
      out11 => logical_y_net_x85,
      out12 => logical_y_net_x86,
      out13 => logical_y_net_x87,
      out14 => logical_y_net_x88,
      out15 => logical_y_net_x89,
      out4 => logical_y_net_x93,
      out5 => logical_y_net_x94,
      out6 => logical_y_net_x95,
      out7 => logical_y_net_x96,
      out8 => logical_y_net_x97,
      out9 => logical_y_net_x98
    );

  x16_not_d993077086: entity work.x16_not_entity_d993077086
    port map (
      a1 => slice4_y_net_x66,
      o1 => logical_y_net_x53,
      o10 => logical_y_net_x59,
      o11 => logical_y_net_x60,
      o12 => logical_y_net_x57,
      o16 => logical_y_net_x58,
      o2 => logical_y_net_x54,
      o3 => logical_y_net_x61,
      o4 => logical_y_net_x63,
      o5 => logical_y_net_x64,
      o6 => logical_y_net_x65,
      o7 => logical_y_net_x67,
      o8 => logical_y_net_x68,
      o9 => logical_y_net_x55,
      out1 => logical_y_net_x66,
      out2 => logical_y_net_x56,
      out4 => logical_y_net_x62
    );

  x16_or_2effd3130b: entity work.x16_or_entity_2effd3130b
    port map (
      a1 => logical_y_net_x91,
      a16 => logical_y_net_x90,
      b1 => logical_y_net_x107,
      b10 => logical_y_net_x115,
      b11 => logical_y_net_x101,
      b12 => logical_y_net_x102,
      b13 => logical_y_net_x103,
      b14 => logical_y_net_x104,
      b15 => logical_y_net_x105,
      b16 => logical_y_net_x106,
      b2 => logical_y_net_x100,
      b3 => logical_y_net_x108,
      b4 => logical_y_net_x109,
      b5 => logical_y_net_x110,
      b6 => logical_y_net_x111,
      b7 => logical_y_net_x112,
      b8 => logical_y_net_x113,
      b9 => logical_y_net_x114,
      in11 => logical_y_net_x95,
      in13 => logical_y_net_x96,
      in15 => logical_y_net_x97,
      in17 => logical_y_net_x98,
      in19 => logical_y_net_x99,
      in21 => logical_y_net_x85,
      in23 => logical_y_net_x86,
      in25 => logical_y_net_x87,
      in27 => logical_y_net_x88,
      in29 => logical_y_net_x89,
      in3 => logical_y_net_x84,
      in5 => logical_y_net_x92,
      in7 => logical_y_net_x93,
      in9 => logical_y_net_x94,
      o1 => logical_y_net_x132,
      o16 => logical_y_net_x139,
      o2 => logical_y_net_x133,
      o3 => logical_y_net_x140,
      out10 => logical_y_net_x147,
      out11 => logical_y_net_x134,
      out12 => logical_y_net_x135,
      out13 => logical_y_net_x136,
      out14 => logical_y_net_x137,
      out15 => logical_y_net_x138,
      out4 => logical_y_net_x141,
      out5 => logical_y_net_x142,
      out6 => logical_y_net_x143,
      out7 => logical_y_net_x144,
      out8 => logical_y_net_x145,
      out9 => logical_y_net_x146
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_Register1/8_Register"

entity x8_register_entity_c6b1802f67 is
  port (
    ce_1: in std_logic; 
    clk: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic; 
    din2: in std_logic; 
    din3: in std_logic; 
    din4: in std_logic; 
    din5: in std_logic; 
    din6: in std_logic; 
    din7: in std_logic; 
    din8: in std_logic; 
    en: in std_logic; 
    dout1: out std_logic; 
    dout2: out std_logic; 
    dout3: out std_logic; 
    dout4: out std_logic; 
    dout5: out std_logic; 
    dout6: out std_logic; 
    dout7: out std_logic; 
    dout8: out std_logic
  );
end x8_register_entity_c6b1802f67;

architecture structural of x8_register_entity_c6b1802f67 is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert1_dout_net_x2: std_logic;
  signal convert2_dout_net_x0: std_logic;
  signal convert3_dout_net_x0: std_logic;
  signal convert4_dout_net_x0: std_logic;
  signal convert5_dout_net_x0: std_logic;
  signal convert6_dout_net_x0: std_logic;
  signal convert7_dout_net_x0: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal d_ff_vhdl1_q_net: std_logic;
  signal d_ff_vhdl2_q_net: std_logic;
  signal d_ff_vhdl3_q_net: std_logic;
  signal d_ff_vhdl4_q_net: std_logic;
  signal d_ff_vhdl5_q_net: std_logic;
  signal d_ff_vhdl6_q_net: std_logic;
  signal d_ff_vhdl7_q_net: std_logic;
  signal d_ff_vhdl_q_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal slice1_y_net_x0: std_logic;
  signal slice3_y_net_x0: std_logic;
  signal slice4_y_net_x0: std_logic;
  signal slice5_y_net_x0: std_logic;
  signal slice6_y_net_x0: std_logic;
  signal slice7_y_net_x0: std_logic;
  signal slice8_y_net_x0: std_logic;
  signal slice_y_net_x0: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  convert1_dout_net_x1 <= clk;
  clk_1_sg_x3 <= clk_1;
  slice_y_net_x0 <= din1;
  slice1_y_net_x0 <= din2;
  slice3_y_net_x0 <= din3;
  slice4_y_net_x0 <= din4;
  slice5_y_net_x0 <= din5;
  slice6_y_net_x0 <= din6;
  slice7_y_net_x0 <= din7;
  slice8_y_net_x0 <= din8;
  logical_y_net_x0 <= en;
  dout1 <= convert_dout_net_x0;
  dout2 <= convert1_dout_net_x2;
  dout3 <= convert2_dout_net_x0;
  dout4 <= convert3_dout_net_x0;
  dout5 <= convert4_dout_net_x0;
  dout6 <= convert5_dout_net_x0;
  dout7 <= convert6_dout_net_x0;
  dout8 <= convert7_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl_q_net,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl1_q_net,
      en => "1",
      dout(0) => convert1_dout_net_x2
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl2_q_net,
      en => "1",
      dout(0) => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl3_q_net,
      en => "1",
      dout(0) => convert3_dout_net_x0
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl4_q_net,
      en => "1",
      dout(0) => convert4_dout_net_x0
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl5_q_net,
      en => "1",
      dout(0) => convert5_dout_net_x0
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl6_q_net,
      en => "1",
      dout(0) => convert6_dout_net_x0
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      din(0) => d_ff_vhdl7_q_net,
      en => "1",
      dout(0) => convert7_dout_net_x0
    );

  d_ff_vhdl: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl_q_net
    );

  d_ff_vhdl1: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice1_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl1_q_net
    );

  d_ff_vhdl2: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice3_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl2_q_net
    );

  d_ff_vhdl3: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice4_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl3_q_net
    );

  d_ff_vhdl4: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice5_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl4_q_net
    );

  d_ff_vhdl5: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice6_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl5_q_net
    );

  d_ff_vhdl6: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice7_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl6_q_net
    );

  d_ff_vhdl7: entity work.D_FlipFlop
    port map (
      clk => convert1_dout_net_x1,
      d => slice8_y_net_x0,
      en => logical_y_net_x0,
      q => d_ff_vhdl7_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/16_Register1"

entity x16_register1_entity_785fb9ec27 is
  port (
    ce_1: in std_logic; 
    clk: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic; 
    din10: in std_logic; 
    din11: in std_logic; 
    din12: in std_logic; 
    din13: in std_logic; 
    din14: in std_logic; 
    din15: in std_logic; 
    din16: in std_logic; 
    din2: in std_logic; 
    din3: in std_logic; 
    din4: in std_logic; 
    din5: in std_logic; 
    din6: in std_logic; 
    din7: in std_logic; 
    din8: in std_logic; 
    din9: in std_logic; 
    en: in std_logic; 
    dout1: out std_logic; 
    dout10: out std_logic; 
    dout11: out std_logic; 
    dout12: out std_logic; 
    dout13: out std_logic; 
    dout14: out std_logic; 
    dout15: out std_logic; 
    dout16: out std_logic; 
    dout2: out std_logic; 
    dout3: out std_logic; 
    dout4: out std_logic; 
    dout5: out std_logic; 
    dout6: out std_logic; 
    dout7: out std_logic; 
    dout8: out std_logic; 
    dout9: out std_logic
  );
end x16_register1_entity_785fb9ec27;

architecture structural of x16_register1_entity_785fb9ec27 is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal convert1_dout_net_x4: std_logic;
  signal convert1_dout_net_x5: std_logic;
  signal convert1_dout_net_x6: std_logic;
  signal convert2_dout_net_x2: std_logic;
  signal convert2_dout_net_x3: std_logic;
  signal convert3_dout_net_x2: std_logic;
  signal convert3_dout_net_x3: std_logic;
  signal convert4_dout_net_x2: std_logic;
  signal convert4_dout_net_x3: std_logic;
  signal convert5_dout_net_x2: std_logic;
  signal convert5_dout_net_x3: std_logic;
  signal convert6_dout_net_x2: std_logic;
  signal convert6_dout_net_x3: std_logic;
  signal convert7_dout_net_x2: std_logic;
  signal convert7_dout_net_x3: std_logic;
  signal convert_dout_net_x2: std_logic;
  signal convert_dout_net_x3: std_logic;
  signal logical_y_net_x2: std_logic;
  signal slice10_y_net_x1: std_logic;
  signal slice11_y_net_x1: std_logic;
  signal slice12_y_net_x1: std_logic;
  signal slice13_y_net_x1: std_logic;
  signal slice14_y_net_x1: std_logic;
  signal slice15_y_net_x1: std_logic;
  signal slice1_y_net_x1: std_logic;
  signal slice2_y_net_x1: std_logic;
  signal slice3_y_net_x1: std_logic;
  signal slice4_y_net_x1: std_logic;
  signal slice5_y_net_x1: std_logic;
  signal slice6_y_net_x1: std_logic;
  signal slice7_y_net_x1: std_logic;
  signal slice8_y_net_x1: std_logic;
  signal slice9_y_net_x1: std_logic;
  signal slice_y_net_x1: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  convert1_dout_net_x4 <= clk;
  clk_1_sg_x5 <= clk_1;
  slice_y_net_x1 <= din1;
  slice10_y_net_x1 <= din10;
  slice11_y_net_x1 <= din11;
  slice12_y_net_x1 <= din12;
  slice13_y_net_x1 <= din13;
  slice14_y_net_x1 <= din14;
  slice15_y_net_x1 <= din15;
  slice2_y_net_x1 <= din16;
  slice1_y_net_x1 <= din2;
  slice3_y_net_x1 <= din3;
  slice4_y_net_x1 <= din4;
  slice5_y_net_x1 <= din5;
  slice6_y_net_x1 <= din6;
  slice7_y_net_x1 <= din7;
  slice8_y_net_x1 <= din8;
  slice9_y_net_x1 <= din9;
  logical_y_net_x2 <= en;
  dout1 <= convert_dout_net_x2;
  dout10 <= convert1_dout_net_x6;
  dout11 <= convert2_dout_net_x3;
  dout12 <= convert3_dout_net_x3;
  dout13 <= convert4_dout_net_x3;
  dout14 <= convert5_dout_net_x3;
  dout15 <= convert6_dout_net_x3;
  dout16 <= convert7_dout_net_x3;
  dout2 <= convert1_dout_net_x5;
  dout3 <= convert2_dout_net_x2;
  dout4 <= convert3_dout_net_x2;
  dout5 <= convert4_dout_net_x2;
  dout6 <= convert5_dout_net_x2;
  dout7 <= convert6_dout_net_x2;
  dout8 <= convert7_dout_net_x2;
  dout9 <= convert_dout_net_x3;

  x8_register1_73617ebec7: entity work.x8_register_entity_c6b1802f67
    port map (
      ce_1 => ce_1_sg_x5,
      clk => convert1_dout_net_x4,
      clk_1 => clk_1_sg_x5,
      din1 => slice9_y_net_x1,
      din2 => slice10_y_net_x1,
      din3 => slice11_y_net_x1,
      din4 => slice12_y_net_x1,
      din5 => slice13_y_net_x1,
      din6 => slice14_y_net_x1,
      din7 => slice15_y_net_x1,
      din8 => slice2_y_net_x1,
      en => logical_y_net_x2,
      dout1 => convert_dout_net_x3,
      dout2 => convert1_dout_net_x6,
      dout3 => convert2_dout_net_x3,
      dout4 => convert3_dout_net_x3,
      dout5 => convert4_dout_net_x3,
      dout6 => convert5_dout_net_x3,
      dout7 => convert6_dout_net_x3,
      dout8 => convert7_dout_net_x3
    );

  x8_register_c6b1802f67: entity work.x8_register_entity_c6b1802f67
    port map (
      ce_1 => ce_1_sg_x5,
      clk => convert1_dout_net_x4,
      clk_1 => clk_1_sg_x5,
      din1 => slice_y_net_x1,
      din2 => slice1_y_net_x1,
      din3 => slice3_y_net_x1,
      din4 => slice4_y_net_x1,
      din5 => slice5_y_net_x1,
      din6 => slice6_y_net_x1,
      din7 => slice7_y_net_x1,
      din8 => slice8_y_net_x1,
      en => logical_y_net_x2,
      dout1 => convert_dout_net_x2,
      dout2 => convert1_dout_net_x5,
      dout3 => convert2_dout_net_x2,
      dout4 => convert3_dout_net_x2,
      dout5 => convert4_dout_net_x2,
      dout6 => convert5_dout_net_x2,
      dout7 => convert6_dout_net_x2,
      dout8 => convert7_dout_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_4:1_Mux1/16_2:1_Mux2/16_And"

entity x16_and_entity_0bf56c0a02 is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    o1: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    out10: out std_logic; 
    out11: out std_logic; 
    out12: out std_logic; 
    out13: out std_logic; 
    out14: out std_logic; 
    out15: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic
  );
end x16_and_entity_0bf56c0a02;

architecture structural of x16_and_entity_0bf56c0a02 is
  signal constant1_op_net_x32: std_logic;
  signal logical_y_net_x35: std_logic;
  signal logical_y_net_x36: std_logic;
  signal logical_y_net_x37: std_logic;
  signal logical_y_net_x38: std_logic;
  signal logical_y_net_x39: std_logic;
  signal logical_y_net_x40: std_logic;
  signal logical_y_net_x41: std_logic;
  signal logical_y_net_x42: std_logic;
  signal logical_y_net_x43: std_logic;
  signal logical_y_net_x44: std_logic;
  signal logical_y_net_x45: std_logic;
  signal logical_y_net_x46: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x48: std_logic;
  signal logical_y_net_x49: std_logic;
  signal logical_y_net_x50: std_logic;
  signal logical_y_net_x51: std_logic;
  signal logical_y_net_x52: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x57: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;
  signal logical_y_net_x62: std_logic;
  signal logical_y_net_x63: std_logic;
  signal logical_y_net_x64: std_logic;
  signal logical_y_net_x65: std_logic;
  signal logical_y_net_x66: std_logic;

begin
  constant1_op_net_x32 <= a1;
  logical_y_net_x35 <= b1;
  logical_y_net_x50 <= b10;
  logical_y_net_x37 <= b11;
  logical_y_net_x38 <= b12;
  logical_y_net_x41 <= b13;
  logical_y_net_x42 <= b14;
  logical_y_net_x39 <= b15;
  logical_y_net_x40 <= b16;
  logical_y_net_x36 <= b2;
  logical_y_net_x43 <= b3;
  logical_y_net_x44 <= b4;
  logical_y_net_x45 <= b5;
  logical_y_net_x46 <= b6;
  logical_y_net_x47 <= b7;
  logical_y_net_x48 <= b8;
  logical_y_net_x49 <= b9;
  o1 <= logical_y_net_x58;
  o16 <= logical_y_net_x57;
  o2 <= logical_y_net_x51;
  o3 <= logical_y_net_x59;
  out10 <= logical_y_net_x66;
  out11 <= logical_y_net_x52;
  out12 <= logical_y_net_x53;
  out13 <= logical_y_net_x54;
  out14 <= logical_y_net_x55;
  out15 <= logical_y_net_x56;
  out4 <= logical_y_net_x60;
  out5 <= logical_y_net_x61;
  out6 <= logical_y_net_x62;
  out7 <= logical_y_net_x63;
  out8 <= logical_y_net_x64;
  out9 <= logical_y_net_x65;

  and10_d5f15f9f1e: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x37,
      o => logical_y_net_x52
    );

  and11_af32074777: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x38,
      o => logical_y_net_x53
    );

  and12_d9ae9acece: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x41,
      o => logical_y_net_x54
    );

  and13_3e602dad13: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x42,
      o => logical_y_net_x55
    );

  and14_a10d9cca80: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x39,
      o => logical_y_net_x56
    );

  and15_51027e188a: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x40,
      o => logical_y_net_x57
    );

  and16_e0351ba4df: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x35,
      o => logical_y_net_x58
    );

  and1_092e56745a: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x36,
      o => logical_y_net_x51
    );

  and2_a1a933778c: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x43,
      o => logical_y_net_x59
    );

  and3_8939566a6f: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x44,
      o => logical_y_net_x60
    );

  and4_36b7c4b7c8: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x45,
      o => logical_y_net_x61
    );

  and5_950b54ae8d: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x46,
      o => logical_y_net_x62
    );

  and6_f7867de553: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x47,
      o => logical_y_net_x63
    );

  and7_ee2b7ceb81: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x48,
      o => logical_y_net_x64
    );

  and8_905d396c22: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x49,
      o => logical_y_net_x65
    );

  and9_f738b69c24: entity work.and1_entity_13c07394a5
    port map (
      a => constant1_op_net_x32,
      b => logical_y_net_x50,
      o => logical_y_net_x66
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_4:1_Mux1/16_2:1_Mux2/16_And1"

entity x16_and1_entity_464f128a6a is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    o1: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    out10: out std_logic; 
    out11: out std_logic; 
    out12: out std_logic; 
    out13: out std_logic; 
    out14: out std_logic; 
    out15: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic
  );
end x16_and1_entity_464f128a6a;

architecture structural of x16_and1_entity_464f128a6a is
  signal logical_y_net_x18: std_logic;
  signal logical_y_net_x20: std_logic;
  signal logical_y_net_x21: std_logic;
  signal logical_y_net_x22: std_logic;
  signal logical_y_net_x23: std_logic;
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x25: std_logic;
  signal logical_y_net_x26: std_logic;
  signal logical_y_net_x27: std_logic;
  signal logical_y_net_x28: std_logic;
  signal logical_y_net_x29: std_logic;
  signal logical_y_net_x30: std_logic;
  signal logical_y_net_x33: std_logic;
  signal logical_y_net_x34: std_logic;
  signal logical_y_net_x35: std_logic;
  signal logical_y_net_x36: std_logic;
  signal logical_y_net_x37: std_logic;
  signal slice8_y_net_x99: std_logic;

begin
  logical_y_net_x33 <= a1;
  slice8_y_net_x99 <= b1;
  o1 <= logical_y_net_x34;
  o16 <= logical_y_net_x25;
  o2 <= logical_y_net_x20;
  o3 <= logical_y_net_x35;
  out10 <= logical_y_net_x37;
  out11 <= logical_y_net_x21;
  out12 <= logical_y_net_x18;
  out13 <= logical_y_net_x22;
  out14 <= logical_y_net_x23;
  out15 <= logical_y_net_x24;
  out4 <= logical_y_net_x36;
  out5 <= logical_y_net_x26;
  out6 <= logical_y_net_x27;
  out7 <= logical_y_net_x28;
  out8 <= logical_y_net_x29;
  out9 <= logical_y_net_x30;

  and10_fe1932ad59: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x21
    );

  and11_b43880b460: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x18
    );

  and12_febece5731: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x22
    );

  and13_c02f67ad98: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x23
    );

  and14_dff9676764: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x24
    );

  and15_e1546ac3b3: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x25
    );

  and16_e37ca3c365: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x34
    );

  and1_2f1efe9da4: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x20
    );

  and2_0adfde72e9: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x35
    );

  and3_3c8a1f2e1d: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x36
    );

  and4_f61bc8a766: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x26
    );

  and5_47784e594d: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x27
    );

  and6_e7bbb05d23: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x28
    );

  and7_841b4c72dc: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x29
    );

  and8_0ec45e2f10: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x30
    );

  and9_a33182c43c: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => slice8_y_net_x99,
      o => logical_y_net_x37
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_4:1_Mux1/16_2:1_Mux2"

entity x16_2_1_mux2_entity_d3afe5ca28 is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    sel: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end x16_2_1_mux2_entity_d3afe5ca28;

architecture structural of x16_2_1_mux2_entity_d3afe5ca28 is
  signal constant1_op_net_x33: std_logic;
  signal logical_y_net_x101: std_logic;
  signal logical_y_net_x102: std_logic;
  signal logical_y_net_x103: std_logic;
  signal logical_y_net_x104: std_logic;
  signal logical_y_net_x105: std_logic;
  signal logical_y_net_x163: std_logic;
  signal logical_y_net_x164: std_logic;
  signal logical_y_net_x165: std_logic;
  signal logical_y_net_x166: std_logic;
  signal logical_y_net_x167: std_logic;
  signal logical_y_net_x168: std_logic;
  signal logical_y_net_x169: std_logic;
  signal logical_y_net_x170: std_logic;
  signal logical_y_net_x171: std_logic;
  signal logical_y_net_x172: std_logic;
  signal logical_y_net_x173: std_logic;
  signal logical_y_net_x186: std_logic;
  signal logical_y_net_x187: std_logic;
  signal logical_y_net_x188: std_logic;
  signal logical_y_net_x189: std_logic;
  signal logical_y_net_x190: std_logic;
  signal logical_y_net_x191: std_logic;
  signal logical_y_net_x192: std_logic;
  signal logical_y_net_x193: std_logic;
  signal logical_y_net_x194: std_logic;
  signal logical_y_net_x195: std_logic;
  signal logical_y_net_x196: std_logic;
  signal logical_y_net_x197: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x57: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;
  signal logical_y_net_x62: std_logic;
  signal logical_y_net_x63: std_logic;
  signal logical_y_net_x64: std_logic;
  signal logical_y_net_x65: std_logic;
  signal logical_y_net_x66: std_logic;
  signal logical_y_net_x67: std_logic;
  signal logical_y_net_x68: std_logic;
  signal logical_y_net_x76: std_logic;
  signal logical_y_net_x77: std_logic;
  signal logical_y_net_x78: std_logic;
  signal logical_y_net_x79: std_logic;
  signal logical_y_net_x80: std_logic;
  signal logical_y_net_x81: std_logic;
  signal logical_y_net_x82: std_logic;
  signal logical_y_net_x83: std_logic;
  signal logical_y_net_x84: std_logic;
  signal logical_y_net_x85: std_logic;
  signal logical_y_net_x86: std_logic;
  signal logical_y_net_x87: std_logic;
  signal logical_y_net_x88: std_logic;
  signal logical_y_net_x89: std_logic;
  signal logical_y_net_x90: std_logic;
  signal logical_y_net_x91: std_logic;
  signal logical_y_net_x92: std_logic;
  signal logical_y_net_x93: std_logic;
  signal logical_y_net_x94: std_logic;
  signal logical_y_net_x95: std_logic;
  signal logical_y_net_x96: std_logic;
  signal slice8_y_net_x133: std_logic;

begin
  constant1_op_net_x33 <= a1;
  logical_y_net_x101 <= b1;
  slice8_y_net_x133 <= sel;
  o1 <= logical_y_net_x102;
  o10 <= logical_y_net_x197;
  o11 <= logical_y_net_x104;
  o12 <= logical_y_net_x105;
  o13 <= logical_y_net_x186;
  o14 <= logical_y_net_x187;
  o15 <= logical_y_net_x188;
  o16 <= logical_y_net_x189;
  o2 <= logical_y_net_x103;
  o3 <= logical_y_net_x190;
  o4 <= logical_y_net_x191;
  o5 <= logical_y_net_x192;
  o6 <= logical_y_net_x193;
  o7 <= logical_y_net_x194;
  o8 <= logical_y_net_x195;
  o9 <= logical_y_net_x196;

  x16_and1_464f128a6a: entity work.x16_and1_entity_464f128a6a
    port map (
      a1 => logical_y_net_x101,
      b1 => slice8_y_net_x133,
      o1 => logical_y_net_x165,
      o16 => logical_y_net_x164,
      o2 => logical_y_net_x92,
      o3 => logical_y_net_x166,
      out10 => logical_y_net_x173,
      out11 => logical_y_net_x93,
      out12 => logical_y_net_x94,
      out13 => logical_y_net_x95,
      out14 => logical_y_net_x96,
      out15 => logical_y_net_x163,
      out4 => logical_y_net_x167,
      out5 => logical_y_net_x168,
      out6 => logical_y_net_x169,
      out7 => logical_y_net_x170,
      out8 => logical_y_net_x171,
      out9 => logical_y_net_x172
    );

  x16_and_0bf56c0a02: entity work.x16_and_entity_0bf56c0a02
    port map (
      a1 => constant1_op_net_x33,
      b1 => logical_y_net_x53,
      b10 => logical_y_net_x68,
      b11 => logical_y_net_x55,
      b12 => logical_y_net_x56,
      b13 => logical_y_net_x59,
      b14 => logical_y_net_x60,
      b15 => logical_y_net_x57,
      b16 => logical_y_net_x58,
      b2 => logical_y_net_x54,
      b3 => logical_y_net_x61,
      b4 => logical_y_net_x62,
      b5 => logical_y_net_x63,
      b6 => logical_y_net_x64,
      b7 => logical_y_net_x65,
      b8 => logical_y_net_x66,
      b9 => logical_y_net_x67,
      o1 => logical_y_net_x83,
      o16 => logical_y_net_x82,
      o2 => logical_y_net_x76,
      o3 => logical_y_net_x84,
      out10 => logical_y_net_x91,
      out11 => logical_y_net_x77,
      out12 => logical_y_net_x78,
      out13 => logical_y_net_x79,
      out14 => logical_y_net_x80,
      out15 => logical_y_net_x81,
      out4 => logical_y_net_x85,
      out5 => logical_y_net_x86,
      out6 => logical_y_net_x87,
      out7 => logical_y_net_x88,
      out8 => logical_y_net_x89,
      out9 => logical_y_net_x90
    );

  x16_not_0907aae34f: entity work.x16_not_entity_d993077086
    port map (
      a1 => slice8_y_net_x133,
      o1 => logical_y_net_x53,
      o10 => logical_y_net_x59,
      o11 => logical_y_net_x60,
      o12 => logical_y_net_x57,
      o16 => logical_y_net_x58,
      o2 => logical_y_net_x54,
      o3 => logical_y_net_x61,
      o4 => logical_y_net_x63,
      o5 => logical_y_net_x64,
      o6 => logical_y_net_x65,
      o7 => logical_y_net_x67,
      o8 => logical_y_net_x68,
      o9 => logical_y_net_x55,
      out1 => logical_y_net_x66,
      out2 => logical_y_net_x56,
      out4 => logical_y_net_x62
    );

  x16_or_f81d7c8b6e: entity work.x16_or_entity_2effd3130b
    port map (
      a1 => logical_y_net_x83,
      a16 => logical_y_net_x82,
      b1 => logical_y_net_x165,
      b10 => logical_y_net_x173,
      b11 => logical_y_net_x93,
      b12 => logical_y_net_x94,
      b13 => logical_y_net_x95,
      b14 => logical_y_net_x96,
      b15 => logical_y_net_x163,
      b16 => logical_y_net_x164,
      b2 => logical_y_net_x92,
      b3 => logical_y_net_x166,
      b4 => logical_y_net_x167,
      b5 => logical_y_net_x168,
      b6 => logical_y_net_x169,
      b7 => logical_y_net_x170,
      b8 => logical_y_net_x171,
      b9 => logical_y_net_x172,
      in11 => logical_y_net_x87,
      in13 => logical_y_net_x88,
      in15 => logical_y_net_x89,
      in17 => logical_y_net_x90,
      in19 => logical_y_net_x91,
      in21 => logical_y_net_x77,
      in23 => logical_y_net_x78,
      in25 => logical_y_net_x79,
      in27 => logical_y_net_x80,
      in29 => logical_y_net_x81,
      in3 => logical_y_net_x76,
      in5 => logical_y_net_x84,
      in7 => logical_y_net_x85,
      in9 => logical_y_net_x86,
      o1 => logical_y_net_x102,
      o16 => logical_y_net_x189,
      o2 => logical_y_net_x103,
      o3 => logical_y_net_x190,
      out10 => logical_y_net_x197,
      out11 => logical_y_net_x104,
      out12 => logical_y_net_x105,
      out13 => logical_y_net_x186,
      out14 => logical_y_net_x187,
      out15 => logical_y_net_x188,
      out4 => logical_y_net_x191,
      out5 => logical_y_net_x192,
      out6 => logical_y_net_x193,
      out7 => logical_y_net_x194,
      out8 => logical_y_net_x195,
      out9 => logical_y_net_x196
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_4:1_Mux1"

entity x16_4_1_mux1_entity_4bdea7359e is
  port (
    a1: in std_logic; 
    a10: in std_logic; 
    a11: in std_logic; 
    a12: in std_logic; 
    a13: in std_logic; 
    a14: in std_logic; 
    a15: in std_logic; 
    a16: in std_logic; 
    a2: in std_logic; 
    a3: in std_logic; 
    a4: in std_logic; 
    a5: in std_logic; 
    a6: in std_logic; 
    a7: in std_logic; 
    a8: in std_logic; 
    a9: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    c1: in std_logic; 
    d1: in std_logic; 
    s0: in std_logic; 
    s1: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end x16_4_1_mux1_entity_4bdea7359e;

architecture structural of x16_4_1_mux1_entity_4bdea7359e is
  signal constant1_op_net_x34: std_logic;
  signal logical_y_net_x102: std_logic;
  signal logical_y_net_x103: std_logic;
  signal logical_y_net_x104: std_logic;
  signal logical_y_net_x105: std_logic;
  signal logical_y_net_x186: std_logic;
  signal logical_y_net_x187: std_logic;
  signal logical_y_net_x188: std_logic;
  signal logical_y_net_x189: std_logic;
  signal logical_y_net_x190: std_logic;
  signal logical_y_net_x191: std_logic;
  signal logical_y_net_x192: std_logic;
  signal logical_y_net_x193: std_logic;
  signal logical_y_net_x194: std_logic;
  signal logical_y_net_x195: std_logic;
  signal logical_y_net_x196: std_logic;
  signal logical_y_net_x197: std_logic;
  signal logical_y_net_x198: std_logic;
  signal logical_y_net_x199: std_logic;
  signal logical_y_net_x200: std_logic;
  signal logical_y_net_x201: std_logic;
  signal logical_y_net_x202: std_logic;
  signal logical_y_net_x203: std_logic;
  signal logical_y_net_x204: std_logic;
  signal logical_y_net_x205: std_logic;
  signal logical_y_net_x206: std_logic;
  signal logical_y_net_x207: std_logic;
  signal logical_y_net_x208: std_logic;
  signal logical_y_net_x209: std_logic;
  signal logical_y_net_x210: std_logic;
  signal logical_y_net_x227: std_logic;
  signal logical_y_net_x228: std_logic;
  signal logical_y_net_x229: std_logic;
  signal logical_y_net_x230: std_logic;
  signal logical_y_net_x231: std_logic;
  signal logical_y_net_x232: std_logic;
  signal logical_y_net_x233: std_logic;
  signal logical_y_net_x234: std_logic;
  signal logical_y_net_x235: std_logic;
  signal logical_y_net_x236: std_logic;
  signal logical_y_net_x237: std_logic;
  signal logical_y_net_x238: std_logic;
  signal logical_y_net_x239: std_logic;
  signal logical_y_net_x240: std_logic;
  signal logical_y_net_x241: std_logic;
  signal logical_y_net_x242: std_logic;
  signal logical_y_net_x243: std_logic;
  signal logical_y_net_x244: std_logic;
  signal logical_y_net_x245: std_logic;
  signal logical_y_net_x246: std_logic;
  signal logical_y_net_x247: std_logic;
  signal logical_y_net_x248: std_logic;
  signal logical_y_net_x249: std_logic;
  signal logical_y_net_x250: std_logic;
  signal logical_y_net_x251: std_logic;
  signal logical_y_net_x252: std_logic;
  signal logical_y_net_x253: std_logic;
  signal logical_y_net_x254: std_logic;
  signal logical_y_net_x255: std_logic;
  signal logical_y_net_x256: std_logic;
  signal logical_y_net_x257: std_logic;
  signal logical_y_net_x258: std_logic;
  signal logical_y_net_x259: std_logic;
  signal logical_y_net_x260: std_logic;
  signal logical_y_net_x261: std_logic;
  signal logical_y_net_x262: std_logic;
  signal slice10_y_net_x4: std_logic;
  signal slice11_y_net_x4: std_logic;
  signal slice12_y_net_x4: std_logic;
  signal slice13_y_net_x4: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice1_y_net_x4: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice3_y_net_x4: std_logic;
  signal slice4_y_net_x4: std_logic;
  signal slice5_y_net_x4: std_logic;
  signal slice6_y_net_x4: std_logic;
  signal slice7_y_net_x4: std_logic;
  signal slice7_y_net_x67: std_logic;
  signal slice8_y_net_x134: std_logic;
  signal slice8_y_net_x4: std_logic;
  signal slice9_y_net_x4: std_logic;
  signal slice_y_net_x4: std_logic;

begin
  slice_y_net_x4 <= a1;
  slice10_y_net_x4 <= a10;
  slice11_y_net_x4 <= a11;
  slice12_y_net_x4 <= a12;
  slice13_y_net_x4 <= a13;
  slice14_y_net_x4 <= a14;
  slice15_y_net_x4 <= a15;
  slice2_y_net_x4 <= a16;
  slice1_y_net_x4 <= a2;
  slice3_y_net_x4 <= a3;
  slice4_y_net_x4 <= a4;
  slice5_y_net_x4 <= a5;
  slice6_y_net_x4 <= a6;
  slice7_y_net_x4 <= a7;
  slice8_y_net_x4 <= a8;
  slice9_y_net_x4 <= a9;
  logical_y_net_x230 <= b1;
  logical_y_net_x245 <= b10;
  logical_y_net_x232 <= b11;
  logical_y_net_x233 <= b12;
  logical_y_net_x236 <= b13;
  logical_y_net_x237 <= b14;
  logical_y_net_x234 <= b15;
  logical_y_net_x235 <= b16;
  logical_y_net_x231 <= b2;
  logical_y_net_x238 <= b3;
  logical_y_net_x239 <= b4;
  logical_y_net_x240 <= b5;
  logical_y_net_x241 <= b6;
  logical_y_net_x242 <= b7;
  logical_y_net_x243 <= b8;
  logical_y_net_x244 <= b9;
  constant1_op_net_x34 <= c1;
  logical_y_net_x246 <= d1;
  slice8_y_net_x134 <= s0;
  slice7_y_net_x67 <= s1;
  o1 <= logical_y_net_x247;
  o10 <= logical_y_net_x262;
  o11 <= logical_y_net_x249;
  o12 <= logical_y_net_x250;
  o13 <= logical_y_net_x251;
  o14 <= logical_y_net_x252;
  o15 <= logical_y_net_x253;
  o16 <= logical_y_net_x254;
  o2 <= logical_y_net_x248;
  o3 <= logical_y_net_x255;
  o4 <= logical_y_net_x256;
  o5 <= logical_y_net_x257;
  o6 <= logical_y_net_x258;
  o7 <= logical_y_net_x259;
  o8 <= logical_y_net_x260;
  o9 <= logical_y_net_x261;

  x16_2_1_mux1_48ced542cb: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => logical_y_net_x195,
      a10 => logical_y_net_x210,
      a11 => logical_y_net_x197,
      a12 => logical_y_net_x198,
      a13 => logical_y_net_x199,
      a14 => logical_y_net_x200,
      a15 => logical_y_net_x201,
      a16 => logical_y_net_x202,
      a2 => logical_y_net_x196,
      a3 => logical_y_net_x203,
      a4 => logical_y_net_x204,
      a5 => logical_y_net_x205,
      a6 => logical_y_net_x206,
      a7 => logical_y_net_x207,
      a8 => logical_y_net_x208,
      a9 => logical_y_net_x209,
      b1 => logical_y_net_x102,
      b10 => logical_y_net_x229,
      b11 => logical_y_net_x104,
      b12 => logical_y_net_x105,
      b13 => logical_y_net_x186,
      b14 => logical_y_net_x187,
      b15 => logical_y_net_x188,
      b16 => logical_y_net_x189,
      b2 => logical_y_net_x103,
      b3 => logical_y_net_x190,
      b4 => logical_y_net_x191,
      b5 => logical_y_net_x192,
      b6 => logical_y_net_x193,
      b7 => logical_y_net_x194,
      b8 => logical_y_net_x227,
      b9 => logical_y_net_x228,
      sel => slice7_y_net_x67,
      o1 => logical_y_net_x247,
      o10 => logical_y_net_x262,
      o11 => logical_y_net_x249,
      o12 => logical_y_net_x250,
      o13 => logical_y_net_x251,
      o14 => logical_y_net_x252,
      o15 => logical_y_net_x253,
      o16 => logical_y_net_x254,
      o2 => logical_y_net_x248,
      o3 => logical_y_net_x255,
      o4 => logical_y_net_x256,
      o5 => logical_y_net_x257,
      o6 => logical_y_net_x258,
      o7 => logical_y_net_x259,
      o8 => logical_y_net_x260,
      o9 => logical_y_net_x261
    );

  x16_2_1_mux2_d3afe5ca28: entity work.x16_2_1_mux2_entity_d3afe5ca28
    port map (
      a1 => constant1_op_net_x34,
      b1 => logical_y_net_x246,
      sel => slice8_y_net_x134,
      o1 => logical_y_net_x102,
      o10 => logical_y_net_x229,
      o11 => logical_y_net_x104,
      o12 => logical_y_net_x105,
      o13 => logical_y_net_x186,
      o14 => logical_y_net_x187,
      o15 => logical_y_net_x188,
      o16 => logical_y_net_x189,
      o2 => logical_y_net_x103,
      o3 => logical_y_net_x190,
      o4 => logical_y_net_x191,
      o5 => logical_y_net_x192,
      o6 => logical_y_net_x193,
      o7 => logical_y_net_x194,
      o8 => logical_y_net_x227,
      o9 => logical_y_net_x228
    );

  x16_2_1_mux_24575e9d93: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => slice_y_net_x4,
      a10 => slice10_y_net_x4,
      a11 => slice11_y_net_x4,
      a12 => slice12_y_net_x4,
      a13 => slice13_y_net_x4,
      a14 => slice14_y_net_x4,
      a15 => slice15_y_net_x4,
      a16 => slice2_y_net_x4,
      a2 => slice1_y_net_x4,
      a3 => slice3_y_net_x4,
      a4 => slice4_y_net_x4,
      a5 => slice5_y_net_x4,
      a6 => slice6_y_net_x4,
      a7 => slice7_y_net_x4,
      a8 => slice8_y_net_x4,
      a9 => slice9_y_net_x4,
      b1 => logical_y_net_x230,
      b10 => logical_y_net_x245,
      b11 => logical_y_net_x232,
      b12 => logical_y_net_x233,
      b13 => logical_y_net_x236,
      b14 => logical_y_net_x237,
      b15 => logical_y_net_x234,
      b16 => logical_y_net_x235,
      b2 => logical_y_net_x231,
      b3 => logical_y_net_x238,
      b4 => logical_y_net_x239,
      b5 => logical_y_net_x240,
      b6 => logical_y_net_x241,
      b7 => logical_y_net_x242,
      b8 => logical_y_net_x243,
      b9 => logical_y_net_x244,
      sel => slice8_y_net_x134,
      o1 => logical_y_net_x195,
      o10 => logical_y_net_x210,
      o11 => logical_y_net_x197,
      o12 => logical_y_net_x198,
      o13 => logical_y_net_x199,
      o14 => logical_y_net_x200,
      o15 => logical_y_net_x201,
      o16 => logical_y_net_x202,
      o2 => logical_y_net_x196,
      o3 => logical_y_net_x203,
      o4 => logical_y_net_x204,
      o5 => logical_y_net_x205,
      o6 => logical_y_net_x206,
      o7 => logical_y_net_x207,
      o8 => logical_y_net_x208,
      o9 => logical_y_net_x209
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_Adder/Full_Adder/Xor"

entity xor_entity_e86b1d8e23 is
  port (
    a: in std_logic; 
    b: in std_logic; 
    o: out std_logic
  );
end xor_entity_e86b1d8e23;

architecture structural of xor_entity_e86b1d8e23 is
  signal logical_y_net_x10: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x265: std_logic;
  signal logical_y_net_x266: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x5: std_logic;
  signal logical_y_net_x9: std_logic;

begin
  logical_y_net_x266 <= a;
  logical_y_net_x265 <= b;
  o <= logical_y_net_x12;

  and1_69d353cb2f: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x5,
      b => logical_y_net_x266,
      o => logical_y_net_x9
    );

  and3_6ca6057c48: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x4,
      b => logical_y_net_x265,
      o => logical_y_net_x10
    );

  not1_b6b6c72481: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x266,
      o => logical_y_net_x4
    );

  not2_79c04bfc7b: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x265,
      o => logical_y_net_x5
    );

  or_d19f1bacba: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x10,
      b => logical_y_net_x9,
      o => logical_y_net_x12
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_Adder/Full_Adder"

entity full_adder_entity_2dcec756db is
  port (
    a: in std_logic; 
    b: in std_logic; 
    c_in: in std_logic; 
    c_o: out std_logic; 
    s: out std_logic
  );
end full_adder_entity_2dcec756db;

architecture structural of full_adder_entity_2dcec756db is
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x17: std_logic;
  signal logical_y_net_x18: std_logic;
  signal logical_y_net_x185: std_logic;
  signal logical_y_net_x19: std_logic;
  signal logical_y_net_x267: std_logic;
  signal logical_y_net_x268: std_logic;
  signal logical_y_net_x8: std_logic;

begin
  logical_y_net_x268 <= a;
  logical_y_net_x267 <= b;
  logical_y_net_x18 <= c_in;
  c_o <= logical_y_net_x19;
  s <= logical_y_net_x185;

  and1_3196aa3ffd: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x268,
      b => logical_y_net_x267,
      o => logical_y_net_x8
    );

  and2_9af5401d85: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x267,
      b => logical_y_net_x18,
      o => logical_y_net_x11
    );

  and3_1ad68dfbac: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x18,
      b => logical_y_net_x268,
      o => logical_y_net_x12
    );

  or1_636ce19b23: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x13,
      b => logical_y_net_x12,
      o => logical_y_net_x19
    );

  or2_65e9293bd3: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x8,
      b => logical_y_net_x11,
      o => logical_y_net_x13
    );

  xor1_15c7ed2de9: entity work.xor_entity_e86b1d8e23
    port map (
      a => logical_y_net_x17,
      b => logical_y_net_x18,
      o => logical_y_net_x185
    );

  xor_e86b1d8e23: entity work.xor_entity_e86b1d8e23
    port map (
      a => logical_y_net_x268,
      b => logical_y_net_x267,
      o => logical_y_net_x17
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_Adder/Full_Adder14"

entity full_adder14_entity_cb5f3fd809 is
  port (
    a: in std_logic; 
    b: in std_logic; 
    c_in: in std_logic; 
    s: out std_logic
  );
end full_adder14_entity_cb5f3fd809;

architecture structural of full_adder14_entity_cb5f3fd809 is
  signal logical_y_net_x18: std_logic;
  signal logical_y_net_x19: std_logic;
  signal logical_y_net_x191: std_logic;
  signal logical_y_net_x255: std_logic;
  signal logical_y_net_x256: std_logic;

begin
  logical_y_net_x256 <= a;
  logical_y_net_x255 <= b;
  logical_y_net_x19 <= c_in;
  s <= logical_y_net_x191;

  xor1_f3e760d782: entity work.xor_entity_e86b1d8e23
    port map (
      a => logical_y_net_x18,
      b => logical_y_net_x19,
      o => logical_y_net_x191
    );

  xor_8ccc89b1a3: entity work.xor_entity_e86b1d8e23
    port map (
      a => logical_y_net_x256,
      b => logical_y_net_x255,
      o => logical_y_net_x18
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_Adder/Half_Adder"

entity half_adder_entity_ecad446fd2 is
  port (
    a: in std_logic; 
    b: in std_logic; 
    c: out std_logic; 
    s: out std_logic
  );
end half_adder_entity_ecad446fd2;

architecture structural of half_adder_entity_ecad446fd2 is
  signal logical_y_net_x200: std_logic;
  signal logical_y_net_x21: std_logic;
  signal logical_y_net_x266: std_logic;
  signal logical_y_net_x267: std_logic;

begin
  logical_y_net_x267 <= a;
  logical_y_net_x266 <= b;
  c <= logical_y_net_x21;
  s <= logical_y_net_x200;

  and1_19450adc33: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x267,
      b => logical_y_net_x266,
      o => logical_y_net_x21
    );

  xor1_b576d16ae5: entity work.xor_entity_e86b1d8e23
    port map (
      a => logical_y_net_x267,
      b => logical_y_net_x266,
      o => logical_y_net_x200
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_Adder"

entity x16_adder_entity_8faba9948c is
  port (
    a1: in std_logic; 
    a10: in std_logic; 
    a11: in std_logic; 
    a12: in std_logic; 
    a13: in std_logic; 
    a14: in std_logic; 
    a15: in std_logic; 
    a16: in std_logic; 
    a2: in std_logic; 
    a3: in std_logic; 
    a4: in std_logic; 
    a5: in std_logic; 
    a6: in std_logic; 
    a7: in std_logic; 
    a8: in std_logic; 
    a9: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    s1: out std_logic; 
    s10: out std_logic; 
    s11: out std_logic; 
    s12: out std_logic; 
    s13: out std_logic; 
    s14: out std_logic; 
    s15: out std_logic; 
    s16: out std_logic; 
    s2: out std_logic; 
    s3: out std_logic; 
    s4: out std_logic; 
    s5: out std_logic; 
    s6: out std_logic; 
    s7: out std_logic; 
    s8: out std_logic; 
    s9: out std_logic
  );
end x16_adder_entity_8faba9948c;

architecture structural of x16_adder_entity_8faba9948c is
  signal logical_y_net_x19: std_logic;
  signal logical_y_net_x21: std_logic;
  signal logical_y_net_x22: std_logic;
  signal logical_y_net_x25: std_logic;
  signal logical_y_net_x29: std_logic;
  signal logical_y_net_x296: std_logic;
  signal logical_y_net_x297: std_logic;
  signal logical_y_net_x298: std_logic;
  signal logical_y_net_x299: std_logic;
  signal logical_y_net_x300: std_logic;
  signal logical_y_net_x301: std_logic;
  signal logical_y_net_x302: std_logic;
  signal logical_y_net_x303: std_logic;
  signal logical_y_net_x304: std_logic;
  signal logical_y_net_x305: std_logic;
  signal logical_y_net_x306: std_logic;
  signal logical_y_net_x307: std_logic;
  signal logical_y_net_x308: std_logic;
  signal logical_y_net_x309: std_logic;
  signal logical_y_net_x310: std_logic;
  signal logical_y_net_x311: std_logic;
  signal logical_y_net_x312: std_logic;
  signal logical_y_net_x313: std_logic;
  signal logical_y_net_x314: std_logic;
  signal logical_y_net_x315: std_logic;
  signal logical_y_net_x316: std_logic;
  signal logical_y_net_x317: std_logic;
  signal logical_y_net_x318: std_logic;
  signal logical_y_net_x319: std_logic;
  signal logical_y_net_x320: std_logic;
  signal logical_y_net_x321: std_logic;
  signal logical_y_net_x322: std_logic;
  signal logical_y_net_x323: std_logic;
  signal logical_y_net_x324: std_logic;
  signal logical_y_net_x325: std_logic;
  signal logical_y_net_x326: std_logic;
  signal logical_y_net_x327: std_logic;
  signal logical_y_net_x328: std_logic;
  signal logical_y_net_x329: std_logic;
  signal logical_y_net_x330: std_logic;
  signal logical_y_net_x331: std_logic;
  signal logical_y_net_x332: std_logic;
  signal logical_y_net_x333: std_logic;
  signal logical_y_net_x334: std_logic;
  signal logical_y_net_x335: std_logic;
  signal logical_y_net_x336: std_logic;
  signal logical_y_net_x337: std_logic;
  signal logical_y_net_x338: std_logic;
  signal logical_y_net_x339: std_logic;
  signal logical_y_net_x340: std_logic;
  signal logical_y_net_x341: std_logic;
  signal logical_y_net_x342: std_logic;
  signal logical_y_net_x343: std_logic;
  signal logical_y_net_x344: std_logic;
  signal logical_y_net_x345: std_logic;
  signal logical_y_net_x346: std_logic;
  signal logical_y_net_x347: std_logic;
  signal logical_y_net_x348: std_logic;
  signal logical_y_net_x349: std_logic;
  signal logical_y_net_x350: std_logic;
  signal logical_y_net_x351: std_logic;
  signal logical_y_net_x41: std_logic;
  signal logical_y_net_x52: std_logic;

begin
  logical_y_net_x320 <= a1;
  logical_y_net_x335 <= a10;
  logical_y_net_x322 <= a11;
  logical_y_net_x323 <= a12;
  logical_y_net_x324 <= a13;
  logical_y_net_x325 <= a14;
  logical_y_net_x326 <= a15;
  logical_y_net_x327 <= a16;
  logical_y_net_x321 <= a2;
  logical_y_net_x328 <= a3;
  logical_y_net_x329 <= a4;
  logical_y_net_x330 <= a5;
  logical_y_net_x331 <= a6;
  logical_y_net_x332 <= a7;
  logical_y_net_x333 <= a8;
  logical_y_net_x334 <= a9;
  logical_y_net_x304 <= b1;
  logical_y_net_x319 <= b10;
  logical_y_net_x306 <= b11;
  logical_y_net_x307 <= b12;
  logical_y_net_x308 <= b13;
  logical_y_net_x309 <= b14;
  logical_y_net_x310 <= b15;
  logical_y_net_x311 <= b16;
  logical_y_net_x305 <= b2;
  logical_y_net_x312 <= b3;
  logical_y_net_x313 <= b4;
  logical_y_net_x314 <= b5;
  logical_y_net_x315 <= b6;
  logical_y_net_x316 <= b7;
  logical_y_net_x317 <= b8;
  logical_y_net_x318 <= b9;
  s1 <= logical_y_net_x342;
  s10 <= logical_y_net_x346;
  s11 <= logical_y_net_x345;
  s12 <= logical_y_net_x344;
  s13 <= logical_y_net_x343;
  s14 <= logical_y_net_x337;
  s15 <= logical_y_net_x336;
  s16 <= logical_y_net_x351;
  s2 <= logical_y_net_x341;
  s3 <= logical_y_net_x340;
  s4 <= logical_y_net_x339;
  s5 <= logical_y_net_x338;
  s6 <= logical_y_net_x350;
  s7 <= logical_y_net_x349;
  s8 <= logical_y_net_x348;
  s9 <= logical_y_net_x347;

  full_adder10_71a1a5a0f3: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x330,
      b => logical_y_net_x314,
      c_in => logical_y_net_x303,
      c_o => logical_y_net_x297,
      s => logical_y_net_x338
    );

  full_adder11_70be63553b: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x329,
      b => logical_y_net_x313,
      c_in => logical_y_net_x297,
      c_o => logical_y_net_x22,
      s => logical_y_net_x339
    );

  full_adder12_547a700ec5: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x328,
      b => logical_y_net_x312,
      c_in => logical_y_net_x22,
      c_o => logical_y_net_x298,
      s => logical_y_net_x340
    );

  full_adder13_5c5094ccf6: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x321,
      b => logical_y_net_x305,
      c_in => logical_y_net_x298,
      c_o => logical_y_net_x19,
      s => logical_y_net_x341
    );

  full_adder14_cb5f3fd809: entity work.full_adder14_entity_cb5f3fd809
    port map (
      a => logical_y_net_x320,
      b => logical_y_net_x304,
      c_in => logical_y_net_x19,
      s => logical_y_net_x342
    );

  full_adder1_7401808cc4: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x325,
      b => logical_y_net_x309,
      c_in => logical_y_net_x29,
      c_o => logical_y_net_x296,
      s => logical_y_net_x337
    );

  full_adder2_13f6d1eed8: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x324,
      b => logical_y_net_x308,
      c_in => logical_y_net_x296,
      c_o => logical_y_net_x299,
      s => logical_y_net_x343
    );

  full_adder3_11ecd6dc75: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x323,
      b => logical_y_net_x307,
      c_in => logical_y_net_x299,
      c_o => logical_y_net_x25,
      s => logical_y_net_x344
    );

  full_adder4_654c7d8ec1: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x322,
      b => logical_y_net_x306,
      c_in => logical_y_net_x25,
      c_o => logical_y_net_x41,
      s => logical_y_net_x345
    );

  full_adder5_4e542f9d9b: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x335,
      b => logical_y_net_x319,
      c_in => logical_y_net_x41,
      c_o => logical_y_net_x52,
      s => logical_y_net_x346
    );

  full_adder6_5988170dfe: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x334,
      b => logical_y_net_x318,
      c_in => logical_y_net_x52,
      c_o => logical_y_net_x300,
      s => logical_y_net_x347
    );

  full_adder7_6051d9be54: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x333,
      b => logical_y_net_x317,
      c_in => logical_y_net_x300,
      c_o => logical_y_net_x301,
      s => logical_y_net_x348
    );

  full_adder8_c7484504fc: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x332,
      b => logical_y_net_x316,
      c_in => logical_y_net_x301,
      c_o => logical_y_net_x302,
      s => logical_y_net_x349
    );

  full_adder9_8ab40fc2c3: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x331,
      b => logical_y_net_x315,
      c_in => logical_y_net_x302,
      c_o => logical_y_net_x303,
      s => logical_y_net_x350
    );

  full_adder_2dcec756db: entity work.full_adder_entity_2dcec756db
    port map (
      a => logical_y_net_x326,
      b => logical_y_net_x310,
      c_in => logical_y_net_x21,
      c_o => logical_y_net_x29,
      s => logical_y_net_x336
    );

  half_adder_ecad446fd2: entity work.half_adder_entity_ecad446fd2
    port map (
      a => logical_y_net_x327,
      b => logical_y_net_x311,
      c => logical_y_net_x21,
      s => logical_y_net_x351
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/16_Not"

entity x16_not_entity_ea96ce0060 is
  port (
    a1: in std_logic; 
    a16: in std_logic; 
    a2: in std_logic; 
    a3: in std_logic; 
    a4: in std_logic; 
    in1: in std_logic; 
    in10: in std_logic; 
    in11: in std_logic; 
    in2: in std_logic; 
    in3: in std_logic; 
    in4: in std_logic; 
    in5: in std_logic; 
    in6: in std_logic; 
    in7: in std_logic; 
    in8: in std_logic; 
    in9: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic; 
    out1: out std_logic; 
    out2: out std_logic; 
    out4: out std_logic
  );
end x16_not_entity_ea96ce0060;

architecture structural of x16_not_entity_ea96ce0060 is
  signal logical_y_net_x265: std_logic;
  signal logical_y_net_x266: std_logic;
  signal logical_y_net_x267: std_logic;
  signal logical_y_net_x268: std_logic;
  signal logical_y_net_x269: std_logic;
  signal logical_y_net_x270: std_logic;
  signal logical_y_net_x271: std_logic;
  signal logical_y_net_x272: std_logic;
  signal logical_y_net_x273: std_logic;
  signal logical_y_net_x274: std_logic;
  signal logical_y_net_x275: std_logic;
  signal logical_y_net_x276: std_logic;
  signal logical_y_net_x277: std_logic;
  signal logical_y_net_x278: std_logic;
  signal logical_y_net_x279: std_logic;
  signal logical_y_net_x280: std_logic;
  signal logical_y_net_x281: std_logic;
  signal logical_y_net_x282: std_logic;
  signal logical_y_net_x283: std_logic;
  signal logical_y_net_x284: std_logic;
  signal logical_y_net_x285: std_logic;
  signal logical_y_net_x286: std_logic;
  signal logical_y_net_x287: std_logic;
  signal logical_y_net_x288: std_logic;
  signal logical_y_net_x289: std_logic;
  signal logical_y_net_x290: std_logic;
  signal logical_y_net_x291: std_logic;
  signal logical_y_net_x292: std_logic;
  signal logical_y_net_x75: std_logic;
  signal logical_y_net_x76: std_logic;
  signal logical_y_net_x77: std_logic;
  signal logical_y_net_x78: std_logic;

begin
  logical_y_net_x265 <= a1;
  logical_y_net_x272 <= a16;
  logical_y_net_x275 <= a2;
  logical_y_net_x279 <= a3;
  logical_y_net_x269 <= a4;
  logical_y_net_x276 <= in1;
  logical_y_net_x270 <= in10;
  logical_y_net_x271 <= in11;
  logical_y_net_x277 <= in2;
  logical_y_net_x266 <= in3;
  logical_y_net_x278 <= in4;
  logical_y_net_x273 <= in5;
  logical_y_net_x280 <= in6;
  logical_y_net_x274 <= in7;
  logical_y_net_x267 <= in8;
  logical_y_net_x268 <= in9;
  o1 <= logical_y_net_x75;
  o10 <= logical_y_net_x283;
  o11 <= logical_y_net_x284;
  o12 <= logical_y_net_x281;
  o16 <= logical_y_net_x282;
  o2 <= logical_y_net_x76;
  o3 <= logical_y_net_x285;
  o4 <= logical_y_net_x287;
  o5 <= logical_y_net_x288;
  o6 <= logical_y_net_x289;
  o7 <= logical_y_net_x291;
  o8 <= logical_y_net_x292;
  o9 <= logical_y_net_x77;
  out1 <= logical_y_net_x290;
  out2 <= logical_y_net_x78;
  out4 <= logical_y_net_x286;

  not10_4874ba2f98: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x267,
      o => logical_y_net_x77
    );

  not11_e1056e8636: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x268,
      o => logical_y_net_x78
    );

  not12_91f007e365: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x271,
      o => logical_y_net_x281
    );

  not13_2a095d9992: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x272,
      o => logical_y_net_x282
    );

  not14_f6ea8b9089: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x269,
      o => logical_y_net_x283
    );

  not15_744cf362f2: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x270,
      o => logical_y_net_x284
    );

  not1_565328a371: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x266,
      o => logical_y_net_x76
    );

  not2_b57870875c: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x273,
      o => logical_y_net_x285
    );

  not3_6e5675a721: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x274,
      o => logical_y_net_x286
    );

  not4_15905661ad: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x275,
      o => logical_y_net_x287
    );

  not5_72d56c9810: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x276,
      o => logical_y_net_x288
    );

  not6_dc1a2cada5: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x277,
      o => logical_y_net_x289
    );

  not7_8765697587: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x278,
      o => logical_y_net_x290
    );

  not8_8f1fbd467e: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x279,
      o => logical_y_net_x291
    );

  not9_2afa8035d3: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x280,
      o => logical_y_net_x292
    );

  not_e276373bc5: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x265,
      o => logical_y_net_x75
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1/Or_8_Way"

entity or_8_way_entity_bcf741cbd1 is
  port (
    a1: in std_logic; 
    a8: in std_logic; 
    in1: in std_logic; 
    in2: in std_logic; 
    in3: in std_logic; 
    in4: in std_logic; 
    in5: in std_logic; 
    in6: in std_logic; 
    o: out std_logic
  );
end or_8_way_entity_bcf741cbd1;

architecture structural of or_8_way_entity_bcf741cbd1 is
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x17: std_logic;
  signal logical_y_net_x18: std_logic;
  signal logical_y_net_x19: std_logic;
  signal logical_y_net_x279: std_logic;
  signal logical_y_net_x280: std_logic;
  signal logical_y_net_x281: std_logic;
  signal logical_y_net_x282: std_logic;
  signal logical_y_net_x283: std_logic;
  signal logical_y_net_x284: std_logic;
  signal logical_y_net_x285: std_logic;
  signal logical_y_net_x286: std_logic;
  signal logical_y_net_x287: std_logic;
  signal logical_y_net_x9: std_logic;

begin
  logical_y_net_x280 <= a1;
  logical_y_net_x287 <= a8;
  logical_y_net_x282 <= in1;
  logical_y_net_x283 <= in2;
  logical_y_net_x281 <= in3;
  logical_y_net_x284 <= in4;
  logical_y_net_x285 <= in5;
  logical_y_net_x286 <= in6;
  o <= logical_y_net_x19;

  or1_1fb3202750: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x9,
      b => logical_y_net_x282,
      o => logical_y_net_x13
    );

  or2_fbd5fecb2d: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x13,
      b => logical_y_net_x283,
      o => logical_y_net_x16
    );

  or3_8679af24e5: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x16,
      b => logical_y_net_x284,
      o => logical_y_net_x17
    );

  or4_a52fd1b53e: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x17,
      b => logical_y_net_x285,
      o => logical_y_net_x18
    );

  or5_b04369a15d: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x18,
      b => logical_y_net_x286,
      o => logical_y_net_x279
    );

  or6_1d8505b655: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x279,
      b => logical_y_net_x287,
      o => logical_y_net_x19
    );

  or_cfb87fe474: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x280,
      b => logical_y_net_x281,
      o => logical_y_net_x9
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/ALU1"

entity alu1_entity_24dcba9862 is
  port (
    f: in std_logic; 
    no: in std_logic; 
    nx: in std_logic; 
    ny: in std_logic; 
    x1: in std_logic; 
    x10: in std_logic; 
    x11: in std_logic; 
    x12: in std_logic; 
    x13: in std_logic; 
    x14: in std_logic; 
    x15: in std_logic; 
    x16: in std_logic; 
    x2: in std_logic; 
    x3: in std_logic; 
    x4: in std_logic; 
    x5: in std_logic; 
    x6: in std_logic; 
    x7: in std_logic; 
    x8: in std_logic; 
    x9: in std_logic; 
    y1: in std_logic; 
    y10: in std_logic; 
    y11: in std_logic; 
    y12: in std_logic; 
    y13: in std_logic; 
    y14: in std_logic; 
    y15: in std_logic; 
    y16: in std_logic; 
    y2: in std_logic; 
    y3: in std_logic; 
    y4: in std_logic; 
    y5: in std_logic; 
    y6: in std_logic; 
    y7: in std_logic; 
    y8: in std_logic; 
    y9: in std_logic; 
    zx: in std_logic; 
    zy: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic; 
    zr: out std_logic
  );
end alu1_entity_24dcba9862;

architecture structural of alu1_entity_24dcba9862 is
  signal constant1_op_net_x36: std_logic;
  signal constant_op_net_x36: std_logic;
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x19: std_logic;
  signal logical_y_net_x20: std_logic;
  signal logical_y_net_x248: std_logic;
  signal logical_y_net_x249: std_logic;
  signal logical_y_net_x250: std_logic;
  signal logical_y_net_x251: std_logic;
  signal logical_y_net_x252: std_logic;
  signal logical_y_net_x253: std_logic;
  signal logical_y_net_x254: std_logic;
  signal logical_y_net_x255: std_logic;
  signal logical_y_net_x256: std_logic;
  signal logical_y_net_x257: std_logic;
  signal logical_y_net_x258: std_logic;
  signal logical_y_net_x259: std_logic;
  signal logical_y_net_x260: std_logic;
  signal logical_y_net_x261: std_logic;
  signal logical_y_net_x262: std_logic;
  signal logical_y_net_x263: std_logic;
  signal logical_y_net_x265: std_logic;
  signal logical_y_net_x266: std_logic;
  signal logical_y_net_x267: std_logic;
  signal logical_y_net_x268: std_logic;
  signal logical_y_net_x269: std_logic;
  signal logical_y_net_x270: std_logic;
  signal logical_y_net_x271: std_logic;
  signal logical_y_net_x272: std_logic;
  signal logical_y_net_x273: std_logic;
  signal logical_y_net_x274: std_logic;
  signal logical_y_net_x275: std_logic;
  signal logical_y_net_x276: std_logic;
  signal logical_y_net_x277: std_logic;
  signal logical_y_net_x278: std_logic;
  signal logical_y_net_x279: std_logic;
  signal logical_y_net_x280: std_logic;
  signal logical_y_net_x336: std_logic;
  signal logical_y_net_x337: std_logic;
  signal logical_y_net_x338: std_logic;
  signal logical_y_net_x339: std_logic;
  signal logical_y_net_x340: std_logic;
  signal logical_y_net_x341: std_logic;
  signal logical_y_net_x342: std_logic;
  signal logical_y_net_x343: std_logic;
  signal logical_y_net_x344: std_logic;
  signal logical_y_net_x345: std_logic;
  signal logical_y_net_x346: std_logic;
  signal logical_y_net_x347: std_logic;
  signal logical_y_net_x348: std_logic;
  signal logical_y_net_x349: std_logic;
  signal logical_y_net_x350: std_logic;
  signal logical_y_net_x351: std_logic;
  signal logical_y_net_x352: std_logic;
  signal logical_y_net_x353: std_logic;
  signal logical_y_net_x354: std_logic;
  signal logical_y_net_x355: std_logic;
  signal logical_y_net_x356: std_logic;
  signal logical_y_net_x357: std_logic;
  signal logical_y_net_x358: std_logic;
  signal logical_y_net_x359: std_logic;
  signal logical_y_net_x360: std_logic;
  signal logical_y_net_x361: std_logic;
  signal logical_y_net_x362: std_logic;
  signal logical_y_net_x363: std_logic;
  signal logical_y_net_x364: std_logic;
  signal logical_y_net_x365: std_logic;
  signal logical_y_net_x366: std_logic;
  signal logical_y_net_x367: std_logic;
  signal logical_y_net_x368: std_logic;
  signal logical_y_net_x369: std_logic;
  signal logical_y_net_x370: std_logic;
  signal logical_y_net_x371: std_logic;
  signal logical_y_net_x372: std_logic;
  signal logical_y_net_x373: std_logic;
  signal logical_y_net_x374: std_logic;
  signal logical_y_net_x375: std_logic;
  signal logical_y_net_x376: std_logic;
  signal logical_y_net_x377: std_logic;
  signal logical_y_net_x378: std_logic;
  signal logical_y_net_x379: std_logic;
  signal logical_y_net_x380: std_logic;
  signal logical_y_net_x381: std_logic;
  signal logical_y_net_x382: std_logic;
  signal logical_y_net_x383: std_logic;
  signal logical_y_net_x384: std_logic;
  signal logical_y_net_x385: std_logic;
  signal logical_y_net_x386: std_logic;
  signal logical_y_net_x387: std_logic;
  signal logical_y_net_x388: std_logic;
  signal logical_y_net_x389: std_logic;
  signal logical_y_net_x390: std_logic;
  signal logical_y_net_x391: std_logic;
  signal logical_y_net_x392: std_logic;
  signal logical_y_net_x393: std_logic;
  signal logical_y_net_x394: std_logic;
  signal logical_y_net_x395: std_logic;
  signal logical_y_net_x396: std_logic;
  signal logical_y_net_x397: std_logic;
  signal logical_y_net_x398: std_logic;
  signal logical_y_net_x399: std_logic;
  signal logical_y_net_x400: std_logic;
  signal logical_y_net_x401: std_logic;
  signal logical_y_net_x402: std_logic;
  signal logical_y_net_x403: std_logic;
  signal logical_y_net_x404: std_logic;
  signal logical_y_net_x405: std_logic;
  signal logical_y_net_x406: std_logic;
  signal logical_y_net_x407: std_logic;
  signal logical_y_net_x408: std_logic;
  signal logical_y_net_x409: std_logic;
  signal logical_y_net_x410: std_logic;
  signal logical_y_net_x411: std_logic;
  signal logical_y_net_x412: std_logic;
  signal logical_y_net_x413: std_logic;
  signal logical_y_net_x414: std_logic;
  signal logical_y_net_x415: std_logic;
  signal logical_y_net_x416: std_logic;
  signal logical_y_net_x417: std_logic;
  signal logical_y_net_x418: std_logic;
  signal logical_y_net_x419: std_logic;
  signal logical_y_net_x420: std_logic;
  signal logical_y_net_x421: std_logic;
  signal logical_y_net_x422: std_logic;
  signal logical_y_net_x423: std_logic;
  signal logical_y_net_x424: std_logic;
  signal logical_y_net_x425: std_logic;
  signal logical_y_net_x426: std_logic;
  signal logical_y_net_x427: std_logic;
  signal logical_y_net_x428: std_logic;
  signal logical_y_net_x429: std_logic;
  signal logical_y_net_x430: std_logic;
  signal logical_y_net_x431: std_logic;
  signal logical_y_net_x432: std_logic;
  signal logical_y_net_x433: std_logic;
  signal logical_y_net_x434: std_logic;
  signal logical_y_net_x435: std_logic;
  signal logical_y_net_x436: std_logic;
  signal logical_y_net_x437: std_logic;
  signal logical_y_net_x438: std_logic;
  signal logical_y_net_x439: std_logic;
  signal logical_y_net_x440: std_logic;
  signal logical_y_net_x441: std_logic;
  signal logical_y_net_x442: std_logic;
  signal logical_y_net_x443: std_logic;
  signal logical_y_net_x444: std_logic;
  signal logical_y_net_x445: std_logic;
  signal logical_y_net_x446: std_logic;
  signal logical_y_net_x75: std_logic;
  signal logical_y_net_x76: std_logic;
  signal logical_y_net_x77: std_logic;
  signal logical_y_net_x78: std_logic;
  signal slice10_y_net_x10: std_logic;
  signal slice10_y_net_x67: std_logic;
  signal slice10_y_net_x9: std_logic;
  signal slice11_y_net_x10: std_logic;
  signal slice11_y_net_x9: std_logic;
  signal slice12_y_net_x10: std_logic;
  signal slice12_y_net_x9: std_logic;
  signal slice13_y_net_x10: std_logic;
  signal slice13_y_net_x9: std_logic;
  signal slice14_y_net_x10: std_logic;
  signal slice14_y_net_x9: std_logic;
  signal slice15_y_net_x10: std_logic;
  signal slice15_y_net_x9: std_logic;
  signal slice1_y_net_x10: std_logic;
  signal slice1_y_net_x9: std_logic;
  signal slice2_y_net_x10: std_logic;
  signal slice2_y_net_x9: std_logic;
  signal slice3_y_net_x10: std_logic;
  signal slice3_y_net_x9: std_logic;
  signal slice4_y_net_x10: std_logic;
  signal slice4_y_net_x9: std_logic;
  signal slice5_y_net_x10: std_logic;
  signal slice5_y_net_x68: std_logic;
  signal slice5_y_net_x9: std_logic;
  signal slice6_y_net_x10: std_logic;
  signal slice6_y_net_x135: std_logic;
  signal slice6_y_net_x9: std_logic;
  signal slice7_y_net_x10: std_logic;
  signal slice7_y_net_x68: std_logic;
  signal slice7_y_net_x9: std_logic;
  signal slice8_y_net_x10: std_logic;
  signal slice8_y_net_x135: std_logic;
  signal slice8_y_net_x9: std_logic;
  signal slice9_y_net_x10: std_logic;
  signal slice9_y_net_x67: std_logic;
  signal slice9_y_net_x9: std_logic;
  signal slice_y_net_x10: std_logic;
  signal slice_y_net_x9: std_logic;

begin
  slice9_y_net_x67 <= f;
  slice10_y_net_x67 <= no;
  slice6_y_net_x135 <= nx;
  slice8_y_net_x135 <= ny;
  slice_y_net_x9 <= x1;
  slice10_y_net_x9 <= x10;
  slice11_y_net_x9 <= x11;
  slice12_y_net_x9 <= x12;
  slice13_y_net_x9 <= x13;
  slice14_y_net_x9 <= x14;
  slice15_y_net_x9 <= x15;
  slice2_y_net_x9 <= x16;
  slice1_y_net_x9 <= x2;
  slice3_y_net_x9 <= x3;
  slice4_y_net_x9 <= x4;
  slice5_y_net_x9 <= x5;
  slice6_y_net_x9 <= x6;
  slice7_y_net_x9 <= x7;
  slice8_y_net_x9 <= x8;
  slice9_y_net_x9 <= x9;
  slice_y_net_x10 <= y1;
  slice10_y_net_x10 <= y10;
  slice11_y_net_x10 <= y11;
  slice12_y_net_x10 <= y12;
  slice13_y_net_x10 <= y13;
  slice14_y_net_x10 <= y14;
  slice15_y_net_x10 <= y15;
  slice2_y_net_x10 <= y16;
  slice1_y_net_x10 <= y2;
  slice3_y_net_x10 <= y3;
  slice4_y_net_x10 <= y4;
  slice5_y_net_x10 <= y5;
  slice6_y_net_x10 <= y6;
  slice7_y_net_x10 <= y7;
  slice8_y_net_x10 <= y8;
  slice9_y_net_x10 <= y9;
  slice5_y_net_x68 <= zx;
  slice7_y_net_x68 <= zy;
  o1 <= logical_y_net_x430;
  o10 <= logical_y_net_x445;
  o11 <= logical_y_net_x432;
  o12 <= logical_y_net_x433;
  o13 <= logical_y_net_x434;
  o14 <= logical_y_net_x435;
  o15 <= logical_y_net_x436;
  o16 <= logical_y_net_x437;
  o2 <= logical_y_net_x431;
  o3 <= logical_y_net_x438;
  o4 <= logical_y_net_x439;
  o5 <= logical_y_net_x440;
  o6 <= logical_y_net_x441;
  o7 <= logical_y_net_x442;
  o8 <= logical_y_net_x443;
  o9 <= logical_y_net_x444;
  zr <= logical_y_net_x446;

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x36
    );

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x36
    );

  not1_ace9623961: entity work.not_entity_750f1f8f15
    port map (
      a => constant1_op_net_x36,
      o => logical_y_net_x428
    );

  not2_c964819328: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x11,
      o => logical_y_net_x446
    );

  not3_faf699fd4d: entity work.not_entity_750f1f8f15
    port map (
      a => constant_op_net_x36,
      o => logical_y_net_x429
    );

  or6_320505ba9f: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x20,
      b => logical_y_net_x19,
      o => logical_y_net_x11
    );

  or_8_way1_e1942afa45: entity work.or_8_way_entity_bcf741cbd1
    port map (
      a1 => logical_y_net_x444,
      a8 => logical_y_net_x437,
      in1 => logical_y_net_x432,
      in2 => logical_y_net_x433,
      in3 => logical_y_net_x445,
      in4 => logical_y_net_x434,
      in5 => logical_y_net_x435,
      in6 => logical_y_net_x436,
      o => logical_y_net_x20
    );

  or_8_way_bcf741cbd1: entity work.or_8_way_entity_bcf741cbd1
    port map (
      a1 => logical_y_net_x430,
      a8 => logical_y_net_x443,
      in1 => logical_y_net_x438,
      in2 => logical_y_net_x439,
      in3 => logical_y_net_x431,
      in4 => logical_y_net_x440,
      in5 => logical_y_net_x441,
      in6 => logical_y_net_x442,
      o => logical_y_net_x19
    );

  x16_2_1_mux1_79d54aa7b9: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => logical_y_net_x265,
      a10 => logical_y_net_x280,
      a11 => logical_y_net_x267,
      a12 => logical_y_net_x268,
      a13 => logical_y_net_x269,
      a14 => logical_y_net_x270,
      a15 => logical_y_net_x271,
      a16 => logical_y_net_x272,
      a2 => logical_y_net_x266,
      a3 => logical_y_net_x273,
      a4 => logical_y_net_x274,
      a5 => logical_y_net_x275,
      a6 => logical_y_net_x276,
      a7 => logical_y_net_x277,
      a8 => logical_y_net_x278,
      a9 => logical_y_net_x279,
      b1 => logical_y_net_x75,
      b10 => logical_y_net_x411,
      b11 => logical_y_net_x77,
      b12 => logical_y_net_x78,
      b13 => logical_y_net_x402,
      b14 => logical_y_net_x403,
      b15 => logical_y_net_x400,
      b16 => logical_y_net_x401,
      b2 => logical_y_net_x76,
      b3 => logical_y_net_x404,
      b4 => logical_y_net_x405,
      b5 => logical_y_net_x406,
      b6 => logical_y_net_x407,
      b7 => logical_y_net_x408,
      b8 => logical_y_net_x409,
      b9 => logical_y_net_x410,
      sel => slice10_y_net_x67,
      o1 => logical_y_net_x430,
      o10 => logical_y_net_x445,
      o11 => logical_y_net_x432,
      o12 => logical_y_net_x433,
      o13 => logical_y_net_x434,
      o14 => logical_y_net_x435,
      o15 => logical_y_net_x436,
      o16 => logical_y_net_x437,
      o2 => logical_y_net_x431,
      o3 => logical_y_net_x438,
      o4 => logical_y_net_x439,
      o5 => logical_y_net_x440,
      o6 => logical_y_net_x441,
      o7 => logical_y_net_x442,
      o8 => logical_y_net_x443,
      o9 => logical_y_net_x444
    );

  x16_2_1_mux_a06a66bae0: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => logical_y_net_x391,
      a10 => logical_y_net_x399,
      a11 => logical_y_net_x385,
      a12 => logical_y_net_x386,
      a13 => logical_y_net_x387,
      a14 => logical_y_net_x388,
      a15 => logical_y_net_x389,
      a16 => logical_y_net_x390,
      a2 => logical_y_net_x384,
      a3 => logical_y_net_x392,
      a4 => logical_y_net_x393,
      a5 => logical_y_net_x394,
      a6 => logical_y_net_x395,
      a7 => logical_y_net_x396,
      a8 => logical_y_net_x397,
      a9 => logical_y_net_x398,
      b1 => logical_y_net_x342,
      b10 => logical_y_net_x378,
      b11 => logical_y_net_x377,
      b12 => logical_y_net_x344,
      b13 => logical_y_net_x343,
      b14 => logical_y_net_x337,
      b15 => logical_y_net_x336,
      b16 => logical_y_net_x383,
      b2 => logical_y_net_x341,
      b3 => logical_y_net_x340,
      b4 => logical_y_net_x339,
      b5 => logical_y_net_x338,
      b6 => logical_y_net_x382,
      b7 => logical_y_net_x381,
      b8 => logical_y_net_x380,
      b9 => logical_y_net_x379,
      sel => slice9_y_net_x67,
      o1 => logical_y_net_x265,
      o10 => logical_y_net_x280,
      o11 => logical_y_net_x267,
      o12 => logical_y_net_x268,
      o13 => logical_y_net_x269,
      o14 => logical_y_net_x270,
      o15 => logical_y_net_x271,
      o16 => logical_y_net_x272,
      o2 => logical_y_net_x266,
      o3 => logical_y_net_x273,
      o4 => logical_y_net_x274,
      o5 => logical_y_net_x275,
      o6 => logical_y_net_x276,
      o7 => logical_y_net_x277,
      o8 => logical_y_net_x278,
      o9 => logical_y_net_x279
    );

  x16_4_1_mux1_4bdea7359e: entity work.x16_4_1_mux1_entity_4bdea7359e
    port map (
      a1 => slice_y_net_x10,
      a10 => slice10_y_net_x10,
      a11 => slice11_y_net_x10,
      a12 => slice12_y_net_x10,
      a13 => slice13_y_net_x10,
      a14 => slice14_y_net_x10,
      a15 => slice15_y_net_x10,
      a16 => slice2_y_net_x10,
      a2 => slice1_y_net_x10,
      a3 => slice3_y_net_x10,
      a4 => slice4_y_net_x10,
      a5 => slice5_y_net_x10,
      a6 => slice6_y_net_x10,
      a7 => slice7_y_net_x10,
      a8 => slice8_y_net_x10,
      a9 => slice9_y_net_x10,
      b1 => logical_y_net_x412,
      b10 => logical_y_net_x427,
      b11 => logical_y_net_x414,
      b12 => logical_y_net_x415,
      b13 => logical_y_net_x418,
      b14 => logical_y_net_x419,
      b15 => logical_y_net_x416,
      b16 => logical_y_net_x417,
      b2 => logical_y_net_x413,
      b3 => logical_y_net_x420,
      b4 => logical_y_net_x421,
      b5 => logical_y_net_x422,
      b6 => logical_y_net_x423,
      b7 => logical_y_net_x424,
      b8 => logical_y_net_x425,
      b9 => logical_y_net_x426,
      c1 => constant1_op_net_x36,
      d1 => logical_y_net_x428,
      s0 => slice8_y_net_x135,
      s1 => slice7_y_net_x68,
      o1 => logical_y_net_x345,
      o10 => logical_y_net_x360,
      o11 => logical_y_net_x347,
      o12 => logical_y_net_x348,
      o13 => logical_y_net_x349,
      o14 => logical_y_net_x350,
      o15 => logical_y_net_x351,
      o16 => logical_y_net_x352,
      o2 => logical_y_net_x346,
      o3 => logical_y_net_x353,
      o4 => logical_y_net_x354,
      o5 => logical_y_net_x355,
      o6 => logical_y_net_x356,
      o7 => logical_y_net_x357,
      o8 => logical_y_net_x358,
      o9 => logical_y_net_x359
    );

  x16_4_1_mux2_b13135c2fa: entity work.x16_4_1_mux1_entity_4bdea7359e
    port map (
      a1 => slice_y_net_x9,
      a10 => slice10_y_net_x9,
      a11 => slice11_y_net_x9,
      a12 => slice12_y_net_x9,
      a13 => slice13_y_net_x9,
      a14 => slice14_y_net_x9,
      a15 => slice15_y_net_x9,
      a16 => slice2_y_net_x9,
      a2 => slice1_y_net_x9,
      a3 => slice3_y_net_x9,
      a4 => slice4_y_net_x9,
      a5 => slice5_y_net_x9,
      a6 => slice6_y_net_x9,
      a7 => slice7_y_net_x9,
      a8 => slice8_y_net_x9,
      a9 => slice9_y_net_x9,
      b1 => logical_y_net_x248,
      b10 => logical_y_net_x263,
      b11 => logical_y_net_x250,
      b12 => logical_y_net_x251,
      b13 => logical_y_net_x254,
      b14 => logical_y_net_x255,
      b15 => logical_y_net_x252,
      b16 => logical_y_net_x253,
      b2 => logical_y_net_x249,
      b3 => logical_y_net_x256,
      b4 => logical_y_net_x257,
      b5 => logical_y_net_x258,
      b6 => logical_y_net_x259,
      b7 => logical_y_net_x260,
      b8 => logical_y_net_x261,
      b9 => logical_y_net_x262,
      c1 => constant_op_net_x36,
      d1 => logical_y_net_x429,
      s0 => slice6_y_net_x135,
      s1 => slice5_y_net_x68,
      o1 => logical_y_net_x361,
      o10 => logical_y_net_x376,
      o11 => logical_y_net_x363,
      o12 => logical_y_net_x364,
      o13 => logical_y_net_x365,
      o14 => logical_y_net_x366,
      o15 => logical_y_net_x367,
      o16 => logical_y_net_x368,
      o2 => logical_y_net_x362,
      o3 => logical_y_net_x369,
      o4 => logical_y_net_x370,
      o5 => logical_y_net_x371,
      o6 => logical_y_net_x372,
      o7 => logical_y_net_x373,
      o8 => logical_y_net_x374,
      o9 => logical_y_net_x375
    );

  x16_adder_8faba9948c: entity work.x16_adder_entity_8faba9948c
    port map (
      a1 => logical_y_net_x361,
      a10 => logical_y_net_x376,
      a11 => logical_y_net_x363,
      a12 => logical_y_net_x364,
      a13 => logical_y_net_x365,
      a14 => logical_y_net_x366,
      a15 => logical_y_net_x367,
      a16 => logical_y_net_x368,
      a2 => logical_y_net_x362,
      a3 => logical_y_net_x369,
      a4 => logical_y_net_x370,
      a5 => logical_y_net_x371,
      a6 => logical_y_net_x372,
      a7 => logical_y_net_x373,
      a8 => logical_y_net_x374,
      a9 => logical_y_net_x375,
      b1 => logical_y_net_x345,
      b10 => logical_y_net_x360,
      b11 => logical_y_net_x347,
      b12 => logical_y_net_x348,
      b13 => logical_y_net_x349,
      b14 => logical_y_net_x350,
      b15 => logical_y_net_x351,
      b16 => logical_y_net_x352,
      b2 => logical_y_net_x346,
      b3 => logical_y_net_x353,
      b4 => logical_y_net_x354,
      b5 => logical_y_net_x355,
      b6 => logical_y_net_x356,
      b7 => logical_y_net_x357,
      b8 => logical_y_net_x358,
      b9 => logical_y_net_x359,
      s1 => logical_y_net_x342,
      s10 => logical_y_net_x378,
      s11 => logical_y_net_x377,
      s12 => logical_y_net_x344,
      s13 => logical_y_net_x343,
      s14 => logical_y_net_x337,
      s15 => logical_y_net_x336,
      s16 => logical_y_net_x383,
      s2 => logical_y_net_x341,
      s3 => logical_y_net_x340,
      s4 => logical_y_net_x339,
      s5 => logical_y_net_x338,
      s6 => logical_y_net_x382,
      s7 => logical_y_net_x381,
      s8 => logical_y_net_x380,
      s9 => logical_y_net_x379
    );

  x16_and_71a5c2518a: entity work.x16_and_entity_7d8d1ce640
    port map (
      a1 => logical_y_net_x361,
      a16 => logical_y_net_x368,
      b1 => logical_y_net_x345,
      b10 => logical_y_net_x360,
      b11 => logical_y_net_x347,
      b12 => logical_y_net_x348,
      b13 => logical_y_net_x349,
      b14 => logical_y_net_x350,
      b15 => logical_y_net_x351,
      b16 => logical_y_net_x352,
      b2 => logical_y_net_x346,
      b3 => logical_y_net_x353,
      b4 => logical_y_net_x354,
      b5 => logical_y_net_x355,
      b6 => logical_y_net_x356,
      b7 => logical_y_net_x357,
      b8 => logical_y_net_x358,
      b9 => logical_y_net_x359,
      in11 => logical_y_net_x372,
      in13 => logical_y_net_x373,
      in15 => logical_y_net_x374,
      in17 => logical_y_net_x375,
      in19 => logical_y_net_x376,
      in21 => logical_y_net_x363,
      in23 => logical_y_net_x364,
      in25 => logical_y_net_x365,
      in27 => logical_y_net_x366,
      in29 => logical_y_net_x367,
      in3 => logical_y_net_x362,
      in5 => logical_y_net_x369,
      in7 => logical_y_net_x370,
      in9 => logical_y_net_x371,
      o1 => logical_y_net_x391,
      o16 => logical_y_net_x390,
      o2 => logical_y_net_x384,
      o3 => logical_y_net_x392,
      out10 => logical_y_net_x399,
      out11 => logical_y_net_x385,
      out12 => logical_y_net_x386,
      out13 => logical_y_net_x387,
      out14 => logical_y_net_x388,
      out15 => logical_y_net_x389,
      out4 => logical_y_net_x393,
      out5 => logical_y_net_x394,
      out6 => logical_y_net_x395,
      out7 => logical_y_net_x396,
      out8 => logical_y_net_x397,
      out9 => logical_y_net_x398
    );

  x16_not1_09cd1f69b1: entity work.x16_not_entity_ea96ce0060
    port map (
      a1 => slice_y_net_x9,
      a16 => slice2_y_net_x9,
      a2 => slice5_y_net_x9,
      a3 => slice9_y_net_x9,
      a4 => slice13_y_net_x9,
      in1 => slice6_y_net_x9,
      in10 => slice14_y_net_x9,
      in11 => slice15_y_net_x9,
      in2 => slice7_y_net_x9,
      in3 => slice1_y_net_x9,
      in4 => slice8_y_net_x9,
      in5 => slice3_y_net_x9,
      in6 => slice10_y_net_x9,
      in7 => slice4_y_net_x9,
      in8 => slice11_y_net_x9,
      in9 => slice12_y_net_x9,
      o1 => logical_y_net_x248,
      o10 => logical_y_net_x254,
      o11 => logical_y_net_x255,
      o12 => logical_y_net_x252,
      o16 => logical_y_net_x253,
      o2 => logical_y_net_x249,
      o3 => logical_y_net_x256,
      o4 => logical_y_net_x258,
      o5 => logical_y_net_x259,
      o6 => logical_y_net_x260,
      o7 => logical_y_net_x262,
      o8 => logical_y_net_x263,
      o9 => logical_y_net_x250,
      out1 => logical_y_net_x261,
      out2 => logical_y_net_x251,
      out4 => logical_y_net_x257
    );

  x16_not2_16b379d6ab: entity work.x16_not_entity_ea96ce0060
    port map (
      a1 => slice_y_net_x10,
      a16 => slice2_y_net_x10,
      a2 => slice5_y_net_x10,
      a3 => slice9_y_net_x10,
      a4 => slice13_y_net_x10,
      in1 => slice6_y_net_x10,
      in10 => slice14_y_net_x10,
      in11 => slice15_y_net_x10,
      in2 => slice7_y_net_x10,
      in3 => slice1_y_net_x10,
      in4 => slice8_y_net_x10,
      in5 => slice3_y_net_x10,
      in6 => slice10_y_net_x10,
      in7 => slice4_y_net_x10,
      in8 => slice11_y_net_x10,
      in9 => slice12_y_net_x10,
      o1 => logical_y_net_x412,
      o10 => logical_y_net_x418,
      o11 => logical_y_net_x419,
      o12 => logical_y_net_x416,
      o16 => logical_y_net_x417,
      o2 => logical_y_net_x413,
      o3 => logical_y_net_x420,
      o4 => logical_y_net_x422,
      o5 => logical_y_net_x423,
      o6 => logical_y_net_x424,
      o7 => logical_y_net_x426,
      o8 => logical_y_net_x427,
      o9 => logical_y_net_x414,
      out1 => logical_y_net_x425,
      out2 => logical_y_net_x415,
      out4 => logical_y_net_x421
    );

  x16_not_ea96ce0060: entity work.x16_not_entity_ea96ce0060
    port map (
      a1 => logical_y_net_x265,
      a16 => logical_y_net_x272,
      a2 => logical_y_net_x275,
      a3 => logical_y_net_x279,
      a4 => logical_y_net_x269,
      in1 => logical_y_net_x276,
      in10 => logical_y_net_x270,
      in11 => logical_y_net_x271,
      in2 => logical_y_net_x277,
      in3 => logical_y_net_x266,
      in4 => logical_y_net_x278,
      in5 => logical_y_net_x273,
      in6 => logical_y_net_x280,
      in7 => logical_y_net_x274,
      in8 => logical_y_net_x267,
      in9 => logical_y_net_x268,
      o1 => logical_y_net_x75,
      o10 => logical_y_net_x402,
      o11 => logical_y_net_x403,
      o12 => logical_y_net_x400,
      o16 => logical_y_net_x401,
      o2 => logical_y_net_x76,
      o3 => logical_y_net_x404,
      o4 => logical_y_net_x406,
      o5 => logical_y_net_x407,
      o6 => logical_y_net_x408,
      o7 => logical_y_net_x410,
      o8 => logical_y_net_x411,
      o9 => logical_y_net_x77,
      out1 => logical_y_net_x409,
      out2 => logical_y_net_x78,
      out4 => logical_y_net_x405
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/In_Feeder1"

entity in_feeder1_entity_d766244da4 is
  port (
    in_x0: in std_logic_vector(15 downto 0); 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end in_feeder1_entity_d766244da4;

architecture structural of in_feeder1_entity_d766244da4 is
  signal dual_port_ram_16_rom_doutb_net_x0: std_logic_vector(15 downto 0);
  signal slice10_y_net_x5: std_logic;
  signal slice11_y_net_x5: std_logic;
  signal slice12_y_net_x5: std_logic;
  signal slice13_y_net_x5: std_logic;
  signal slice14_y_net_x5: std_logic;
  signal slice15_y_net_x5: std_logic;
  signal slice1_y_net_x5: std_logic;
  signal slice2_y_net_x5: std_logic;
  signal slice3_y_net_x5: std_logic;
  signal slice4_y_net_x5: std_logic;
  signal slice5_y_net_x5: std_logic;
  signal slice6_y_net_x5: std_logic;
  signal slice7_y_net_x5: std_logic;
  signal slice8_y_net_x5: std_logic;
  signal slice9_y_net_x5: std_logic;
  signal slice_y_net_x5: std_logic;

begin
  dual_port_ram_16_rom_doutb_net_x0 <= in_x0;
  o1 <= slice_y_net_x5;
  o10 <= slice10_y_net_x5;
  o11 <= slice11_y_net_x5;
  o12 <= slice12_y_net_x5;
  o13 <= slice13_y_net_x5;
  o14 <= slice14_y_net_x5;
  o15 <= slice15_y_net_x5;
  o16 <= slice2_y_net_x5;
  o2 <= slice1_y_net_x5;
  o3 <= slice3_y_net_x5;
  o4 <= slice4_y_net_x5;
  o5 <= slice5_y_net_x5;
  o6 <= slice6_y_net_x5;
  o7 <= slice7_y_net_x5;
  o8 <= slice8_y_net_x5;
  o9 <= slice9_y_net_x5;

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice_y_net_x5
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 14,
      new_msb => 14,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice1_y_net_x5
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice10_y_net_x5
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice11_y_net_x5
    );

  slice12: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice12_y_net_x5
    );

  slice13: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice13_y_net_x5
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice14_y_net_x5
    );

  slice15: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice15_y_net_x5
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice2_y_net_x5
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 13,
      new_msb => 13,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice3_y_net_x5
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice4_y_net_x5
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice5_y_net_x5
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice6_y_net_x5
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 9,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice7_y_net_x5
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice8_y_net_x5
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x0,
      y(0) => slice9_y_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/In_Feeder10"

entity in_feeder10_entity_ab0b42bce4 is
  port (
    in_x0: in std_logic_vector(15 downto 0); 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end in_feeder10_entity_ab0b42bce4;

architecture structural of in_feeder10_entity_ab0b42bce4 is
  signal dual_port_ram_16_rom_doutb_net_x1: std_logic_vector(15 downto 0);
  signal slice10_y_net_x68: std_logic;
  signal slice11_y_net_x0: std_logic;
  signal slice12_y_net_x2: std_logic;
  signal slice13_y_net_x2: std_logic;
  signal slice14_y_net_x0: std_logic;
  signal slice15_y_net_x0: std_logic;
  signal slice2_y_net_x0: std_logic;
  signal slice4_y_net_x67: std_logic;
  signal slice5_y_net_x69: std_logic;
  signal slice6_y_net_x136: std_logic;
  signal slice7_y_net_x69: std_logic;
  signal slice8_y_net_x136: std_logic;
  signal slice9_y_net_x68: std_logic;
  signal slice_y_net_x4: std_logic;

begin
  dual_port_ram_16_rom_doutb_net_x1 <= in_x0;
  o1 <= slice_y_net_x4;
  o10 <= slice10_y_net_x68;
  o11 <= slice11_y_net_x0;
  o12 <= slice12_y_net_x2;
  o13 <= slice13_y_net_x2;
  o14 <= slice14_y_net_x0;
  o15 <= slice15_y_net_x0;
  o16 <= slice2_y_net_x0;
  o4 <= slice4_y_net_x67;
  o5 <= slice5_y_net_x69;
  o6 <= slice6_y_net_x136;
  o7 <= slice7_y_net_x69;
  o8 <= slice8_y_net_x136;
  o9 <= slice9_y_net_x68;

  slice: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice_y_net_x4
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice10_y_net_x68
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice11_y_net_x0
    );

  slice12: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice12_y_net_x2
    );

  slice13: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice13_y_net_x2
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice14_y_net_x0
    );

  slice15: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice15_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice2_y_net_x0
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice4_y_net_x67
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 11,
      new_msb => 11,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice5_y_net_x69
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice6_y_net_x136
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 9,
      new_msb => 9,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice7_y_net_x69
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice8_y_net_x136
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 16,
      y_width => 1
    )
    port map (
      x => dual_port_ram_16_rom_doutb_net_x1,
      y(0) => slice9_y_net_x68
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/3_And"

entity x3_and_entity_1dfa6afb1a is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    o1: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic
  );
end x3_and_entity_1dfa6afb1a;

architecture structural of x3_and_entity_1dfa6afb1a is
  signal logical_y_net_x6: std_logic;
  signal logical_y_net_x7: std_logic;
  signal logical_y_net_x8: std_logic;
  signal slice14_y_net_x3: std_logic;
  signal slice15_y_net_x3: std_logic;
  signal slice2_y_net_x3: std_logic;
  signal slice_y_net_x11: std_logic;

begin
  slice_y_net_x11 <= a1;
  slice2_y_net_x3 <= b1;
  slice15_y_net_x3 <= b2;
  slice14_y_net_x3 <= b3;
  o1 <= logical_y_net_x7;
  o2 <= logical_y_net_x6;
  o3 <= logical_y_net_x8;

  and16_fe5d1dde07: entity work.and1_entity_13c07394a5
    port map (
      a => slice_y_net_x11,
      b => slice2_y_net_x3,
      o => logical_y_net_x7
    );

  and1_aa228edeec: entity work.and1_entity_13c07394a5
    port map (
      a => slice_y_net_x11,
      b => slice15_y_net_x3,
      o => logical_y_net_x6
    );

  and2_0f293a3ea4: entity work.and1_entity_13c07394a5
    port map (
      a => slice_y_net_x11,
      b => slice14_y_net_x3,
      o => logical_y_net_x8
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/6_And"

entity x6_and_entity_97af46e064 is
  port (
    a1: in std_logic; 
    a6: in std_logic; 
    b1: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    in3: in std_logic; 
    in5: in std_logic; 
    in7: in std_logic; 
    in9: in std_logic; 
    o1: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o6: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic
  );
end x6_and_entity_97af46e064;

architecture structural of x6_and_entity_97af46e064 is
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x25: std_logic;
  signal logical_y_net_x26: std_logic;
  signal logical_y_net_x27: std_logic;
  signal logical_y_net_x28: std_logic;
  signal logical_y_net_x29: std_logic;
  signal logical_y_net_x30: std_logic;
  signal logical_y_net_x31: std_logic;
  signal logical_y_net_x32: std_logic;
  signal logical_y_net_x33: std_logic;
  signal logical_y_net_x34: std_logic;
  signal logical_y_net_x35: std_logic;
  signal logical_y_net_x36: std_logic;
  signal logical_y_net_x37: std_logic;
  signal logical_y_net_x38: std_logic;
  signal logical_y_net_x39: std_logic;
  signal logical_y_net_x40: std_logic;
  signal logical_y_net_x41: std_logic;

begin
  logical_y_net_x30 <= a1;
  logical_y_net_x35 <= a6;
  logical_y_net_x28 <= b1;
  logical_y_net_x24 <= b2;
  logical_y_net_x26 <= b3;
  logical_y_net_x25 <= b4;
  logical_y_net_x27 <= b5;
  logical_y_net_x29 <= b6;
  logical_y_net_x31 <= in3;
  logical_y_net_x32 <= in5;
  logical_y_net_x33 <= in7;
  logical_y_net_x34 <= in9;
  o1 <= logical_y_net_x37;
  o2 <= logical_y_net_x36;
  o3 <= logical_y_net_x38;
  o6 <= logical_y_net_x41;
  out4 <= logical_y_net_x39;
  out5 <= logical_y_net_x40;

  and16_37324729e8: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x30,
      b => logical_y_net_x28,
      o => logical_y_net_x37
    );

  and1_5b5b1711c8: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x31,
      b => logical_y_net_x24,
      o => logical_y_net_x36
    );

  and2_61df65917c: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x32,
      b => logical_y_net_x26,
      o => logical_y_net_x38
    );

  and3_b7ebc2bbbd: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x33,
      b => logical_y_net_x25,
      o => logical_y_net_x39
    );

  and4_e6f6c218d8: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x34,
      b => logical_y_net_x27,
      o => logical_y_net_x40
    );

  and5_2e068489f7: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x35,
      b => logical_y_net_x29,
      o => logical_y_net_x41
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Logic"

entity logic_entity_bda62ec9e3 is
  port (
    ng: in std_logic; 
    zr: in std_logic; 
    jeq: out std_logic; 
    jge: out std_logic; 
    jgt: out std_logic; 
    jle: out std_logic; 
    jlt: out std_logic; 
    jne: out std_logic
  );
end logic_entity_bda62ec9e3;

architecture structural of logic_entity_bda62ec9e3 is
  signal logical_y_net_x35: std_logic;
  signal logical_y_net_x36: std_logic;
  signal logical_y_net_x37: std_logic;
  signal logical_y_net_x38: std_logic;
  signal logical_y_net_x39: std_logic;
  signal logical_y_net_x40: std_logic;
  signal logical_y_net_x442: std_logic;
  signal logical_y_net_x458: std_logic;
  signal logical_y_net_x6: std_logic;

begin
  logical_y_net_x442 <= ng;
  logical_y_net_x458 <= zr;
  jeq <= logical_y_net_x35;
  jge <= logical_y_net_x37;
  jgt <= logical_y_net_x39;
  jle <= logical_y_net_x40;
  jlt <= logical_y_net_x36;
  jne <= logical_y_net_x38;

  and1_d71b101ffb: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x38,
      b => logical_y_net_x442,
      o => logical_y_net_x36
    );

  and_62ca5e8e3d: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x37,
      b => logical_y_net_x458,
      o => logical_y_net_x35
    );

  not1_9ce89c3c8f: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x458,
      o => logical_y_net_x38
    );

  not2_e8b29b205c: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x6,
      o => logical_y_net_x39
    );

  not_b6fb59720e: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x442,
      o => logical_y_net_x37
    );

  or_641c9f1796: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x442,
      b => logical_y_net_x458,
      o => logical_y_net_x6
    );

  xor_ff556e0d6a: entity work.xor_entity_e86b1d8e23
    port map (
      a => logical_y_net_x442,
      b => logical_y_net_x458,
      o => logical_y_net_x40
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Or_6_Way"

entity or_6_way_entity_2425b629e6 is
  port (
    a1: in std_logic; 
    a6: in std_logic; 
    in1: in std_logic; 
    in2: in std_logic; 
    in3: in std_logic; 
    in4: in std_logic; 
    o1: out std_logic
  );
end or_6_way_entity_2425b629e6;

architecture structural of or_6_way_entity_2425b629e6 is
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x46: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x48: std_logic;
  signal logical_y_net_x49: std_logic;
  signal logical_y_net_x50: std_logic;
  signal logical_y_net_x51: std_logic;
  signal logical_y_net_x52: std_logic;
  signal logical_y_net_x9: std_logic;

begin
  logical_y_net_x47 <= a1;
  logical_y_net_x51 <= a6;
  logical_y_net_x48 <= in1;
  logical_y_net_x49 <= in2;
  logical_y_net_x46 <= in3;
  logical_y_net_x50 <= in4;
  o1 <= logical_y_net_x52;

  or1_f7a5fcbe06: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x9,
      b => logical_y_net_x48,
      o => logical_y_net_x13
    );

  or2_1f923596b8: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x13,
      b => logical_y_net_x49,
      o => logical_y_net_x16
    );

  or3_c94b26fd30: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x16,
      b => logical_y_net_x50,
      o => logical_y_net_x12
    );

  or4_c01b463522: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x12,
      b => logical_y_net_x51,
      o => logical_y_net_x52
    );

  or_d174fa4481: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x47,
      b => logical_y_net_x46,
      o => logical_y_net_x9
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Subsystem2/1_1:2_DeMux2"

entity x1_1_2_demux2_entity_3ab8e156cd is
  port (
    in_x0: in std_logic; 
    sel: in std_logic; 
    o1: out std_logic; 
    o2: out std_logic
  );
end x1_1_2_demux2_entity_3ab8e156cd;

architecture structural of x1_1_2_demux2_entity_3ab8e156cd is
  signal constant_op_net_x4: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x16: std_logic;

begin
  constant_op_net_x4 <= in_x0;
  logical_y_net_x14 <= sel;
  o1 <= logical_y_net_x15;
  o2 <= logical_y_net_x16;

  and1_aa515769de: entity work.and1_entity_13c07394a5
    port map (
      a => constant_op_net_x4,
      b => logical_y_net_x13,
      o => logical_y_net_x15
    );

  and2_cd761efcfe: entity work.and1_entity_13c07394a5
    port map (
      a => constant_op_net_x4,
      b => logical_y_net_x14,
      o => logical_y_net_x16
    );

  not1_ff26f2934d: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x14,
      o => logical_y_net_x13
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Subsystem2/Subsystem/1_1:2_DeMux"

entity x1_1_2_demux_entity_a9aa2ad98c is
  port (
    in_x0: in std_logic; 
    sel: in std_logic; 
    o2: out std_logic
  );
end x1_1_2_demux_entity_a9aa2ad98c;

architecture structural of x1_1_2_demux_entity_a9aa2ad98c is
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x33: std_logic;

begin
  logical_y_net_x15 <= in_x0;
  logical_y_net_x14 <= sel;
  o2 <= logical_y_net_x33;

  and2_9076275d9e: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x15,
      b => logical_y_net_x14,
      o => logical_y_net_x33
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Subsystem2/Subsystem"

entity subsystem_entity_fbfb18b3d7 is
  port (
    in_x0: in std_logic; 
    s0: in std_logic; 
    s1: in std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic
  );
end subsystem_entity_fbfb18b3d7;

architecture structural of subsystem_entity_fbfb18b3d7 is
  signal logical_y_net_x25: std_logic;
  signal logical_y_net_x34: std_logic;
  signal logical_y_net_x44: std_logic;
  signal logical_y_net_x45: std_logic;
  signal logical_y_net_x46: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x48: std_logic;
  signal logical_y_net_x49: std_logic;

begin
  logical_y_net_x47 <= in_x0;
  logical_y_net_x46 <= s0;
  logical_y_net_x45 <= s1;
  o2 <= logical_y_net_x34;
  o3 <= logical_y_net_x48;
  o4 <= logical_y_net_x49;

  x1_1_2_demux1_207f0543d7: entity work.x1_1_2_demux2_entity_3ab8e156cd
    port map (
      in_x0 => logical_y_net_x44,
      sel => logical_y_net_x46,
      o1 => logical_y_net_x48,
      o2 => logical_y_net_x49
    );

  x1_1_2_demux2_6c4ba00e5c: entity work.x1_1_2_demux2_entity_3ab8e156cd
    port map (
      in_x0 => logical_y_net_x47,
      sel => logical_y_net_x45,
      o1 => logical_y_net_x25,
      o2 => logical_y_net_x44
    );

  x1_1_2_demux_a9aa2ad98c: entity work.x1_1_2_demux_entity_a9aa2ad98c
    port map (
      in_x0 => logical_y_net_x25,
      sel => logical_y_net_x46,
      o2 => logical_y_net_x34
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Subsystem2/Subsystem1"

entity subsystem1_entity_a1cba87a2f is
  port (
    in_x0: in std_logic; 
    s0: in std_logic; 
    s1: in std_logic; 
    o1: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic
  );
end subsystem1_entity_a1cba87a2f;

architecture structural of subsystem1_entity_a1cba87a2f is
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x23: std_logic;
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x41: std_logic;
  signal logical_y_net_x42: std_logic;
  signal logical_y_net_x43: std_logic;
  signal logical_y_net_x51: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x57: std_logic;

begin
  logical_y_net_x24 <= in_x0;
  logical_y_net_x57 <= s0;
  logical_y_net_x51 <= s1;
  o1 <= logical_y_net_x53;
  o2 <= logical_y_net_x41;
  o3 <= logical_y_net_x43;
  o4 <= logical_y_net_x14;

  x1_1_2_demux1_957a55fb28: entity work.x1_1_2_demux2_entity_3ab8e156cd
    port map (
      in_x0 => logical_y_net_x23,
      sel => logical_y_net_x57,
      o1 => logical_y_net_x43,
      o2 => logical_y_net_x14
    );

  x1_1_2_demux2_d13e8d5c6c: entity work.x1_1_2_demux2_entity_3ab8e156cd
    port map (
      in_x0 => logical_y_net_x24,
      sel => logical_y_net_x51,
      o1 => logical_y_net_x42,
      o2 => logical_y_net_x23
    );

  x1_1_2_demux_24516e649f: entity work.x1_1_2_demux2_entity_3ab8e156cd
    port map (
      in_x0 => logical_y_net_x42,
      sel => logical_y_net_x57,
      o1 => logical_y_net_x53,
      o2 => logical_y_net_x41
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder/Subsystem2"

entity subsystem2_entity_ecc10a61ee is
  port (
    in_x0: in std_logic; 
    s0: in std_logic; 
    s1: in std_logic; 
    s2: in std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic
  );
end subsystem2_entity_ecc10a61ee;

architecture structural of subsystem2_entity_ecc10a61ee is
  signal constant_op_net_x5: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x17: std_logic;
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x52: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;

begin
  constant_op_net_x5 <= in_x0;
  logical_y_net_x58 <= s0;
  logical_y_net_x52 <= s1;
  logical_y_net_x16 <= s2;
  o2 <= logical_y_net_x59;
  o3 <= logical_y_net_x54;
  o4 <= logical_y_net_x55;
  o5 <= logical_y_net_x56;
  o6 <= logical_y_net_x60;
  o7 <= logical_y_net_x61;
  o8 <= logical_y_net_x17;

  subsystem1_a1cba87a2f: entity work.subsystem1_entity_a1cba87a2f
    port map (
      in_x0 => logical_y_net_x24,
      s0 => logical_y_net_x58,
      s1 => logical_y_net_x52,
      o1 => logical_y_net_x56,
      o2 => logical_y_net_x60,
      o3 => logical_y_net_x61,
      o4 => logical_y_net_x17
    );

  subsystem_fbfb18b3d7: entity work.subsystem_entity_fbfb18b3d7
    port map (
      in_x0 => logical_y_net_x47,
      s0 => logical_y_net_x58,
      s1 => logical_y_net_x52,
      o2 => logical_y_net_x59,
      o3 => logical_y_net_x54,
      o4 => logical_y_net_x55
    );

  x1_1_2_demux2_3ab8e156cd: entity work.x1_1_2_demux2_entity_3ab8e156cd
    port map (
      in_x0 => constant_op_net_x5,
      sel => logical_y_net_x16,
      o1 => logical_y_net_x47,
      o2 => logical_y_net_x24
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/Load_Decoder"

entity load_decoder_entity_5a96e0288f is
  port (
    j1: in std_logic; 
    j2: in std_logic; 
    j3: in std_logic; 
    ng: in std_logic; 
    opcde: in std_logic; 
    zr: in std_logic; 
    load: out std_logic
  );
end load_decoder_entity_5a96e0288f;

architecture structural of load_decoder_entity_5a96e0288f is
  signal constant_op_net_x5: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x17: std_logic;
  signal logical_y_net_x35: std_logic;
  signal logical_y_net_x36: std_logic;
  signal logical_y_net_x37: std_logic;
  signal logical_y_net_x38: std_logic;
  signal logical_y_net_x39: std_logic;
  signal logical_y_net_x40: std_logic;
  signal logical_y_net_x443: std_logic;
  signal logical_y_net_x459: std_logic;
  signal logical_y_net_x46: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x48: std_logic;
  signal logical_y_net_x49: std_logic;
  signal logical_y_net_x50: std_logic;
  signal logical_y_net_x51: std_logic;
  signal logical_y_net_x52: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x55: std_logic;
  signal logical_y_net_x56: std_logic;
  signal logical_y_net_x58: std_logic;
  signal logical_y_net_x59: std_logic;
  signal logical_y_net_x60: std_logic;
  signal logical_y_net_x61: std_logic;
  signal logical_y_net_x62: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice_y_net_x12: std_logic;

begin
  slice14_y_net_x4 <= j1;
  slice15_y_net_x4 <= j2;
  slice2_y_net_x4 <= j3;
  logical_y_net_x443 <= ng;
  slice_y_net_x12 <= opcde;
  logical_y_net_x459 <= zr;
  load <= logical_y_net_x62;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x5
    );

  logic_bda62ec9e3: entity work.logic_entity_bda62ec9e3
    port map (
      ng => logical_y_net_x443,
      zr => logical_y_net_x459,
      jeq => logical_y_net_x35,
      jge => logical_y_net_x37,
      jgt => logical_y_net_x39,
      jle => logical_y_net_x40,
      jlt => logical_y_net_x36,
      jne => logical_y_net_x38
    );

  or_6_way_2425b629e6: entity work.or_6_way_entity_2425b629e6
    port map (
      a1 => logical_y_net_x47,
      a6 => logical_y_net_x51,
      in1 => logical_y_net_x48,
      in2 => logical_y_net_x49,
      in3 => logical_y_net_x46,
      in4 => logical_y_net_x50,
      o1 => logical_y_net_x53
    );

  or_d9c2f1c6a6: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x53,
      b => logical_y_net_x17,
      o => logical_y_net_x62
    );

  subsystem2_ecc10a61ee: entity work.subsystem2_entity_ecc10a61ee
    port map (
      in_x0 => constant_op_net_x5,
      s0 => logical_y_net_x58,
      s1 => logical_y_net_x52,
      s2 => logical_y_net_x16,
      o2 => logical_y_net_x59,
      o3 => logical_y_net_x54,
      o4 => logical_y_net_x55,
      o5 => logical_y_net_x56,
      o6 => logical_y_net_x60,
      o7 => logical_y_net_x61,
      o8 => logical_y_net_x17
    );

  x3_and_1dfa6afb1a: entity work.x3_and_entity_1dfa6afb1a
    port map (
      a1 => slice_y_net_x12,
      b1 => slice2_y_net_x4,
      b2 => slice15_y_net_x4,
      b3 => slice14_y_net_x4,
      o1 => logical_y_net_x58,
      o2 => logical_y_net_x52,
      o3 => logical_y_net_x16
    );

  x6_and_97af46e064: entity work.x6_and_entity_97af46e064
    port map (
      a1 => logical_y_net_x59,
      a6 => logical_y_net_x61,
      b1 => logical_y_net_x39,
      b2 => logical_y_net_x35,
      b3 => logical_y_net_x37,
      b4 => logical_y_net_x36,
      b5 => logical_y_net_x38,
      b6 => logical_y_net_x40,
      in3 => logical_y_net_x54,
      in5 => logical_y_net_x55,
      in7 => logical_y_net_x56,
      in9 => logical_y_net_x60,
      o1 => logical_y_net_x47,
      o2 => logical_y_net_x46,
      o3 => logical_y_net_x48,
      o6 => logical_y_net_x51,
      out4 => logical_y_net_x49,
      out5 => logical_y_net_x50
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/PC1/16_4:1_Mux/16_2:1_Mux"

entity x16_2_1_mux_entity_558af82336 is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    sel: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end x16_2_1_mux_entity_558af82336;

architecture structural of x16_2_1_mux_entity_558af82336 is
  signal constant_op_net_x33: std_logic;
  signal logical_y_net_x100: std_logic;
  signal logical_y_net_x101: std_logic;
  signal logical_y_net_x102: std_logic;
  signal logical_y_net_x103: std_logic;
  signal logical_y_net_x104: std_logic;
  signal logical_y_net_x105: std_logic;
  signal logical_y_net_x106: std_logic;
  signal logical_y_net_x107: std_logic;
  signal logical_y_net_x108: std_logic;
  signal logical_y_net_x109: std_logic;
  signal logical_y_net_x110: std_logic;
  signal logical_y_net_x111: std_logic;
  signal logical_y_net_x112: std_logic;
  signal logical_y_net_x113: std_logic;
  signal logical_y_net_x114: std_logic;
  signal logical_y_net_x115: std_logic;
  signal logical_y_net_x116: std_logic;
  signal logical_y_net_x117: std_logic;
  signal logical_y_net_x118: std_logic;
  signal logical_y_net_x135: std_logic;
  signal logical_y_net_x136: std_logic;
  signal logical_y_net_x137: std_logic;
  signal logical_y_net_x138: std_logic;
  signal logical_y_net_x139: std_logic;
  signal logical_y_net_x140: std_logic;
  signal logical_y_net_x141: std_logic;
  signal logical_y_net_x142: std_logic;
  signal logical_y_net_x143: std_logic;
  signal logical_y_net_x144: std_logic;
  signal logical_y_net_x145: std_logic;
  signal logical_y_net_x146: std_logic;
  signal logical_y_net_x147: std_logic;
  signal logical_y_net_x148: std_logic;
  signal logical_y_net_x149: std_logic;
  signal logical_y_net_x150: std_logic;
  signal logical_y_net_x151: std_logic;
  signal logical_y_net_x53: std_logic;
  signal logical_y_net_x54: std_logic;
  signal logical_y_net_x72: std_logic;
  signal logical_y_net_x73: std_logic;
  signal logical_y_net_x74: std_logic;
  signal logical_y_net_x75: std_logic;
  signal logical_y_net_x76: std_logic;
  signal logical_y_net_x77: std_logic;
  signal logical_y_net_x78: std_logic;
  signal logical_y_net_x79: std_logic;
  signal logical_y_net_x80: std_logic;
  signal logical_y_net_x81: std_logic;
  signal logical_y_net_x82: std_logic;
  signal logical_y_net_x83: std_logic;
  signal logical_y_net_x84: std_logic;
  signal logical_y_net_x85: std_logic;
  signal logical_y_net_x87: std_logic;
  signal logical_y_net_x88: std_logic;
  signal logical_y_net_x89: std_logic;
  signal logical_y_net_x90: std_logic;
  signal logical_y_net_x91: std_logic;
  signal logical_y_net_x92: std_logic;
  signal logical_y_net_x93: std_logic;
  signal logical_y_net_x94: std_logic;
  signal logical_y_net_x95: std_logic;
  signal logical_y_net_x96: std_logic;
  signal logical_y_net_x97: std_logic;
  signal logical_y_net_x98: std_logic;
  signal logical_y_net_x99: std_logic;
  signal slice10_y_net_x4: std_logic;
  signal slice11_y_net_x4: std_logic;
  signal slice12_y_net_x4: std_logic;
  signal slice13_y_net_x4: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice1_y_net_x4: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice3_y_net_x4: std_logic;
  signal slice4_y_net_x4: std_logic;
  signal slice5_y_net_x4: std_logic;
  signal slice6_y_net_x4: std_logic;
  signal slice7_y_net_x4: std_logic;
  signal slice8_y_net_x4: std_logic;
  signal slice9_y_net_x4: std_logic;
  signal slice_y_net_x4: std_logic;

begin
  constant_op_net_x33 <= a1;
  slice_y_net_x4 <= b1;
  slice10_y_net_x4 <= b10;
  slice11_y_net_x4 <= b11;
  slice12_y_net_x4 <= b12;
  slice13_y_net_x4 <= b13;
  slice14_y_net_x4 <= b14;
  slice15_y_net_x4 <= b15;
  slice2_y_net_x4 <= b16;
  slice1_y_net_x4 <= b2;
  slice3_y_net_x4 <= b3;
  slice4_y_net_x4 <= b4;
  slice5_y_net_x4 <= b5;
  slice6_y_net_x4 <= b6;
  slice7_y_net_x4 <= b7;
  slice8_y_net_x4 <= b8;
  slice9_y_net_x4 <= b9;
  logical_y_net_x135 <= sel;
  o1 <= logical_y_net_x136;
  o10 <= logical_y_net_x151;
  o11 <= logical_y_net_x138;
  o12 <= logical_y_net_x139;
  o13 <= logical_y_net_x140;
  o14 <= logical_y_net_x141;
  o15 <= logical_y_net_x142;
  o16 <= logical_y_net_x143;
  o2 <= logical_y_net_x137;
  o3 <= logical_y_net_x144;
  o4 <= logical_y_net_x145;
  o5 <= logical_y_net_x146;
  o6 <= logical_y_net_x147;
  o7 <= logical_y_net_x148;
  o8 <= logical_y_net_x149;
  o9 <= logical_y_net_x150;

  x16_and1_a6f326d1bf: entity work.x16_and1_entity_678c19c187
    port map (
      a1 => slice_y_net_x4,
      a16 => slice2_y_net_x4,
      b1 => logical_y_net_x135,
      in11 => slice6_y_net_x4,
      in13 => slice7_y_net_x4,
      in15 => slice8_y_net_x4,
      in17 => slice9_y_net_x4,
      in19 => slice10_y_net_x4,
      in21 => slice11_y_net_x4,
      in23 => slice12_y_net_x4,
      in25 => slice13_y_net_x4,
      in27 => slice14_y_net_x4,
      in29 => slice15_y_net_x4,
      in3 => slice1_y_net_x4,
      in5 => slice3_y_net_x4,
      in7 => slice4_y_net_x4,
      in9 => slice5_y_net_x4,
      o1 => logical_y_net_x110,
      o16 => logical_y_net_x109,
      o2 => logical_y_net_x103,
      o3 => logical_y_net_x111,
      out10 => logical_y_net_x118,
      out11 => logical_y_net_x104,
      out12 => logical_y_net_x105,
      out13 => logical_y_net_x106,
      out14 => logical_y_net_x107,
      out15 => logical_y_net_x108,
      out4 => logical_y_net_x112,
      out5 => logical_y_net_x113,
      out6 => logical_y_net_x114,
      out7 => logical_y_net_x115,
      out8 => logical_y_net_x116,
      out9 => logical_y_net_x117
    );

  x16_and_0b0c9c19c3: entity work.x16_and_entity_0bf56c0a02
    port map (
      a1 => constant_op_net_x33,
      b1 => logical_y_net_x72,
      b10 => logical_y_net_x85,
      b11 => logical_y_net_x53,
      b12 => logical_y_net_x54,
      b13 => logical_y_net_x76,
      b14 => logical_y_net_x77,
      b15 => logical_y_net_x74,
      b16 => logical_y_net_x75,
      b2 => logical_y_net_x73,
      b3 => logical_y_net_x78,
      b4 => logical_y_net_x79,
      b5 => logical_y_net_x80,
      b6 => logical_y_net_x81,
      b7 => logical_y_net_x82,
      b8 => logical_y_net_x83,
      b9 => logical_y_net_x84,
      o1 => logical_y_net_x94,
      o16 => logical_y_net_x93,
      o2 => logical_y_net_x87,
      o3 => logical_y_net_x95,
      out10 => logical_y_net_x102,
      out11 => logical_y_net_x88,
      out12 => logical_y_net_x89,
      out13 => logical_y_net_x90,
      out14 => logical_y_net_x91,
      out15 => logical_y_net_x92,
      out4 => logical_y_net_x96,
      out5 => logical_y_net_x97,
      out6 => logical_y_net_x98,
      out7 => logical_y_net_x99,
      out8 => logical_y_net_x100,
      out9 => logical_y_net_x101
    );

  x16_not_a17ff41db1: entity work.x16_not_entity_d993077086
    port map (
      a1 => logical_y_net_x135,
      o1 => logical_y_net_x72,
      o10 => logical_y_net_x76,
      o11 => logical_y_net_x77,
      o12 => logical_y_net_x74,
      o16 => logical_y_net_x75,
      o2 => logical_y_net_x73,
      o3 => logical_y_net_x78,
      o4 => logical_y_net_x80,
      o5 => logical_y_net_x81,
      o6 => logical_y_net_x82,
      o7 => logical_y_net_x84,
      o8 => logical_y_net_x85,
      o9 => logical_y_net_x53,
      out1 => logical_y_net_x83,
      out2 => logical_y_net_x54,
      out4 => logical_y_net_x79
    );

  x16_or_a0481f420a: entity work.x16_or_entity_2effd3130b
    port map (
      a1 => logical_y_net_x94,
      a16 => logical_y_net_x93,
      b1 => logical_y_net_x110,
      b10 => logical_y_net_x118,
      b11 => logical_y_net_x104,
      b12 => logical_y_net_x105,
      b13 => logical_y_net_x106,
      b14 => logical_y_net_x107,
      b15 => logical_y_net_x108,
      b16 => logical_y_net_x109,
      b2 => logical_y_net_x103,
      b3 => logical_y_net_x111,
      b4 => logical_y_net_x112,
      b5 => logical_y_net_x113,
      b6 => logical_y_net_x114,
      b7 => logical_y_net_x115,
      b8 => logical_y_net_x116,
      b9 => logical_y_net_x117,
      in11 => logical_y_net_x98,
      in13 => logical_y_net_x99,
      in15 => logical_y_net_x100,
      in17 => logical_y_net_x101,
      in19 => logical_y_net_x102,
      in21 => logical_y_net_x88,
      in23 => logical_y_net_x89,
      in25 => logical_y_net_x90,
      in27 => logical_y_net_x91,
      in29 => logical_y_net_x92,
      in3 => logical_y_net_x87,
      in5 => logical_y_net_x95,
      in7 => logical_y_net_x96,
      in9 => logical_y_net_x97,
      o1 => logical_y_net_x136,
      o16 => logical_y_net_x143,
      o2 => logical_y_net_x137,
      o3 => logical_y_net_x144,
      out10 => logical_y_net_x151,
      out11 => logical_y_net_x138,
      out12 => logical_y_net_x139,
      out13 => logical_y_net_x140,
      out14 => logical_y_net_x141,
      out15 => logical_y_net_x142,
      out4 => logical_y_net_x145,
      out5 => logical_y_net_x146,
      out6 => logical_y_net_x147,
      out7 => logical_y_net_x148,
      out8 => logical_y_net_x149,
      out9 => logical_y_net_x150
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/PC1/16_4:1_Mux"

entity x16_4_1_mux_entity_c8fcfba311 is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    b10: in std_logic; 
    b11: in std_logic; 
    b12: in std_logic; 
    b13: in std_logic; 
    b14: in std_logic; 
    b15: in std_logic; 
    b16: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    b9: in std_logic; 
    c1: in std_logic; 
    c10: in std_logic; 
    c11: in std_logic; 
    c12: in std_logic; 
    c13: in std_logic; 
    c14: in std_logic; 
    c15: in std_logic; 
    c16: in std_logic; 
    c2: in std_logic; 
    c3: in std_logic; 
    c4: in std_logic; 
    c5: in std_logic; 
    c6: in std_logic; 
    c7: in std_logic; 
    c8: in std_logic; 
    c9: in std_logic; 
    d1: in std_logic; 
    d10: in std_logic; 
    d11: in std_logic; 
    d12: in std_logic; 
    d13: in std_logic; 
    d14: in std_logic; 
    d15: in std_logic; 
    d16: in std_logic; 
    d2: in std_logic; 
    d3: in std_logic; 
    d4: in std_logic; 
    d5: in std_logic; 
    d6: in std_logic; 
    d7: in std_logic; 
    d8: in std_logic; 
    d9: in std_logic; 
    s0: in std_logic; 
    s1: in std_logic; 
    o1: out std_logic; 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o4: out std_logic; 
    o5: out std_logic; 
    o6: out std_logic; 
    o7: out std_logic; 
    o8: out std_logic; 
    o9: out std_logic
  );
end x16_4_1_mux_entity_c8fcfba311;

architecture structural of x16_4_1_mux_entity_c8fcfba311 is
  signal constant_op_net_x34: std_logic;
  signal delay10_q_net_x4: std_logic;
  signal delay11_q_net_x4: std_logic;
  signal delay12_q_net_x4: std_logic;
  signal delay13_q_net_x4: std_logic;
  signal delay14_q_net_x4: std_logic;
  signal delay15_q_net_x4: std_logic;
  signal delay1_q_net_x4: std_logic;
  signal delay2_q_net_x4: std_logic;
  signal delay3_q_net_x4: std_logic;
  signal delay4_q_net_x4: std_logic;
  signal delay5_q_net_x4: std_logic;
  signal delay6_q_net_x4: std_logic;
  signal delay7_q_net_x4: std_logic;
  signal delay8_q_net_x4: std_logic;
  signal delay9_q_net_x4: std_logic;
  signal delay_q_net_x4: std_logic;
  signal logical_y_net_x152: std_logic;
  signal logical_y_net_x227: std_logic;
  signal logical_y_net_x239: std_logic;
  signal logical_y_net_x240: std_logic;
  signal logical_y_net_x241: std_logic;
  signal logical_y_net_x242: std_logic;
  signal logical_y_net_x243: std_logic;
  signal logical_y_net_x244: std_logic;
  signal logical_y_net_x245: std_logic;
  signal logical_y_net_x246: std_logic;
  signal logical_y_net_x247: std_logic;
  signal logical_y_net_x248: std_logic;
  signal logical_y_net_x249: std_logic;
  signal logical_y_net_x250: std_logic;
  signal logical_y_net_x251: std_logic;
  signal logical_y_net_x252: std_logic;
  signal logical_y_net_x253: std_logic;
  signal logical_y_net_x254: std_logic;
  signal logical_y_net_x275: std_logic;
  signal logical_y_net_x276: std_logic;
  signal logical_y_net_x277: std_logic;
  signal logical_y_net_x278: std_logic;
  signal logical_y_net_x279: std_logic;
  signal logical_y_net_x280: std_logic;
  signal logical_y_net_x281: std_logic;
  signal logical_y_net_x282: std_logic;
  signal logical_y_net_x283: std_logic;
  signal logical_y_net_x284: std_logic;
  signal logical_y_net_x285: std_logic;
  signal logical_y_net_x286: std_logic;
  signal logical_y_net_x287: std_logic;
  signal logical_y_net_x288: std_logic;
  signal logical_y_net_x289: std_logic;
  signal logical_y_net_x290: std_logic;
  signal logical_y_net_x291: std_logic;
  signal logical_y_net_x292: std_logic;
  signal logical_y_net_x293: std_logic;
  signal logical_y_net_x294: std_logic;
  signal logical_y_net_x295: std_logic;
  signal logical_y_net_x296: std_logic;
  signal logical_y_net_x297: std_logic;
  signal logical_y_net_x298: std_logic;
  signal logical_y_net_x299: std_logic;
  signal logical_y_net_x300: std_logic;
  signal logical_y_net_x301: std_logic;
  signal logical_y_net_x302: std_logic;
  signal logical_y_net_x303: std_logic;
  signal logical_y_net_x304: std_logic;
  signal logical_y_net_x305: std_logic;
  signal logical_y_net_x306: std_logic;
  signal logical_y_net_x307: std_logic;
  signal logical_y_net_x308: std_logic;
  signal logical_y_net_x309: std_logic;
  signal logical_y_net_x310: std_logic;
  signal logical_y_net_x311: std_logic;
  signal logical_y_net_x312: std_logic;
  signal logical_y_net_x313: std_logic;
  signal logical_y_net_x314: std_logic;
  signal logical_y_net_x315: std_logic;
  signal logical_y_net_x316: std_logic;
  signal logical_y_net_x317: std_logic;
  signal logical_y_net_x318: std_logic;
  signal logical_y_net_x319: std_logic;
  signal logical_y_net_x320: std_logic;
  signal logical_y_net_x321: std_logic;
  signal logical_y_net_x322: std_logic;
  signal slice10_y_net_x5: std_logic;
  signal slice11_y_net_x5: std_logic;
  signal slice12_y_net_x5: std_logic;
  signal slice13_y_net_x5: std_logic;
  signal slice14_y_net_x5: std_logic;
  signal slice15_y_net_x5: std_logic;
  signal slice1_y_net_x5: std_logic;
  signal slice2_y_net_x5: std_logic;
  signal slice3_y_net_x5: std_logic;
  signal slice4_y_net_x5: std_logic;
  signal slice5_y_net_x5: std_logic;
  signal slice6_y_net_x5: std_logic;
  signal slice7_y_net_x5: std_logic;
  signal slice8_y_net_x5: std_logic;
  signal slice9_y_net_x5: std_logic;
  signal slice_y_net_x5: std_logic;

begin
  constant_op_net_x34 <= a1;
  slice_y_net_x5 <= b1;
  slice10_y_net_x5 <= b10;
  slice11_y_net_x5 <= b11;
  slice12_y_net_x5 <= b12;
  slice13_y_net_x5 <= b13;
  slice14_y_net_x5 <= b14;
  slice15_y_net_x5 <= b15;
  slice2_y_net_x5 <= b16;
  slice1_y_net_x5 <= b2;
  slice3_y_net_x5 <= b3;
  slice4_y_net_x5 <= b4;
  slice5_y_net_x5 <= b5;
  slice6_y_net_x5 <= b6;
  slice7_y_net_x5 <= b7;
  slice8_y_net_x5 <= b8;
  slice9_y_net_x5 <= b9;
  logical_y_net_x297 <= c1;
  logical_y_net_x301 <= c10;
  logical_y_net_x300 <= c11;
  logical_y_net_x299 <= c12;
  logical_y_net_x298 <= c13;
  logical_y_net_x292 <= c14;
  logical_y_net_x291 <= c15;
  logical_y_net_x306 <= c16;
  logical_y_net_x296 <= c2;
  logical_y_net_x295 <= c3;
  logical_y_net_x294 <= c4;
  logical_y_net_x293 <= c5;
  logical_y_net_x305 <= c6;
  logical_y_net_x304 <= c7;
  logical_y_net_x303 <= c8;
  logical_y_net_x302 <= c9;
  delay3_q_net_x4 <= d1;
  delay12_q_net_x4 <= d10;
  delay2_q_net_x4 <= d11;
  delay1_q_net_x4 <= d12;
  delay13_q_net_x4 <= d13;
  delay14_q_net_x4 <= d14;
  delay15_q_net_x4 <= d15;
  delay_q_net_x4 <= d16;
  delay4_q_net_x4 <= d2;
  delay5_q_net_x4 <= d3;
  delay6_q_net_x4 <= d4;
  delay7_q_net_x4 <= d5;
  delay8_q_net_x4 <= d6;
  delay9_q_net_x4 <= d7;
  delay10_q_net_x4 <= d8;
  delay11_q_net_x4 <= d9;
  logical_y_net_x289 <= s0;
  logical_y_net_x290 <= s1;
  o1 <= logical_y_net_x307;
  o10 <= logical_y_net_x322;
  o11 <= logical_y_net_x309;
  o12 <= logical_y_net_x310;
  o13 <= logical_y_net_x311;
  o14 <= logical_y_net_x312;
  o15 <= logical_y_net_x313;
  o16 <= logical_y_net_x314;
  o2 <= logical_y_net_x308;
  o3 <= logical_y_net_x315;
  o4 <= logical_y_net_x316;
  o5 <= logical_y_net_x317;
  o6 <= logical_y_net_x318;
  o7 <= logical_y_net_x319;
  o8 <= logical_y_net_x320;
  o9 <= logical_y_net_x321;

  x16_2_1_mux1_30237147f2: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => logical_y_net_x239,
      a10 => logical_y_net_x254,
      a11 => logical_y_net_x241,
      a12 => logical_y_net_x242,
      a13 => logical_y_net_x243,
      a14 => logical_y_net_x244,
      a15 => logical_y_net_x245,
      a16 => logical_y_net_x246,
      a2 => logical_y_net_x240,
      a3 => logical_y_net_x247,
      a4 => logical_y_net_x248,
      a5 => logical_y_net_x249,
      a6 => logical_y_net_x250,
      a7 => logical_y_net_x251,
      a8 => logical_y_net_x252,
      a9 => logical_y_net_x253,
      b1 => logical_y_net_x227,
      b10 => logical_y_net_x288,
      b11 => logical_y_net_x275,
      b12 => logical_y_net_x276,
      b13 => logical_y_net_x277,
      b14 => logical_y_net_x278,
      b15 => logical_y_net_x279,
      b16 => logical_y_net_x280,
      b2 => logical_y_net_x152,
      b3 => logical_y_net_x281,
      b4 => logical_y_net_x282,
      b5 => logical_y_net_x283,
      b6 => logical_y_net_x284,
      b7 => logical_y_net_x285,
      b8 => logical_y_net_x286,
      b9 => logical_y_net_x287,
      sel => logical_y_net_x290,
      o1 => logical_y_net_x307,
      o10 => logical_y_net_x322,
      o11 => logical_y_net_x309,
      o12 => logical_y_net_x310,
      o13 => logical_y_net_x311,
      o14 => logical_y_net_x312,
      o15 => logical_y_net_x313,
      o16 => logical_y_net_x314,
      o2 => logical_y_net_x308,
      o3 => logical_y_net_x315,
      o4 => logical_y_net_x316,
      o5 => logical_y_net_x317,
      o6 => logical_y_net_x318,
      o7 => logical_y_net_x319,
      o8 => logical_y_net_x320,
      o9 => logical_y_net_x321
    );

  x16_2_1_mux2_6b38a74335: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => logical_y_net_x297,
      a10 => logical_y_net_x301,
      a11 => logical_y_net_x300,
      a12 => logical_y_net_x299,
      a13 => logical_y_net_x298,
      a14 => logical_y_net_x292,
      a15 => logical_y_net_x291,
      a16 => logical_y_net_x306,
      a2 => logical_y_net_x296,
      a3 => logical_y_net_x295,
      a4 => logical_y_net_x294,
      a5 => logical_y_net_x293,
      a6 => logical_y_net_x305,
      a7 => logical_y_net_x304,
      a8 => logical_y_net_x303,
      a9 => logical_y_net_x302,
      b1 => delay3_q_net_x4,
      b10 => delay12_q_net_x4,
      b11 => delay2_q_net_x4,
      b12 => delay1_q_net_x4,
      b13 => delay13_q_net_x4,
      b14 => delay14_q_net_x4,
      b15 => delay15_q_net_x4,
      b16 => delay_q_net_x4,
      b2 => delay4_q_net_x4,
      b3 => delay5_q_net_x4,
      b4 => delay6_q_net_x4,
      b5 => delay7_q_net_x4,
      b6 => delay8_q_net_x4,
      b7 => delay9_q_net_x4,
      b8 => delay10_q_net_x4,
      b9 => delay11_q_net_x4,
      sel => logical_y_net_x289,
      o1 => logical_y_net_x227,
      o10 => logical_y_net_x288,
      o11 => logical_y_net_x275,
      o12 => logical_y_net_x276,
      o13 => logical_y_net_x277,
      o14 => logical_y_net_x278,
      o15 => logical_y_net_x279,
      o16 => logical_y_net_x280,
      o2 => logical_y_net_x152,
      o3 => logical_y_net_x281,
      o4 => logical_y_net_x282,
      o5 => logical_y_net_x283,
      o6 => logical_y_net_x284,
      o7 => logical_y_net_x285,
      o8 => logical_y_net_x286,
      o9 => logical_y_net_x287
    );

  x16_2_1_mux_558af82336: entity work.x16_2_1_mux_entity_558af82336
    port map (
      a1 => constant_op_net_x34,
      b1 => slice_y_net_x5,
      b10 => slice10_y_net_x5,
      b11 => slice11_y_net_x5,
      b12 => slice12_y_net_x5,
      b13 => slice13_y_net_x5,
      b14 => slice14_y_net_x5,
      b15 => slice15_y_net_x5,
      b16 => slice2_y_net_x5,
      b2 => slice1_y_net_x5,
      b3 => slice3_y_net_x5,
      b4 => slice4_y_net_x5,
      b5 => slice5_y_net_x5,
      b6 => slice6_y_net_x5,
      b7 => slice7_y_net_x5,
      b8 => slice8_y_net_x5,
      b9 => slice9_y_net_x5,
      sel => logical_y_net_x289,
      o1 => logical_y_net_x239,
      o10 => logical_y_net_x254,
      o11 => logical_y_net_x241,
      o12 => logical_y_net_x242,
      o13 => logical_y_net_x243,
      o14 => logical_y_net_x244,
      o15 => logical_y_net_x245,
      o16 => logical_y_net_x246,
      o2 => logical_y_net_x240,
      o3 => logical_y_net_x247,
      o4 => logical_y_net_x248,
      o5 => logical_y_net_x249,
      o6 => logical_y_net_x250,
      o7 => logical_y_net_x251,
      o8 => logical_y_net_x252,
      o9 => logical_y_net_x253
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/PC1/Decoder"

entity decoder_entity_583a0717df is
  port (
    inc: in std_logic; 
    load: in std_logic; 
    reset: in std_logic; 
    s0: out std_logic; 
    s1: out std_logic
  );
end decoder_entity_583a0717df;

architecture structural of decoder_entity_583a0717df is
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x293: std_logic;
  signal logical_y_net_x294: std_logic;
  signal logical_y_net_x69: std_logic;
  signal logical_y_net_x70: std_logic;
  signal logical_y_net_x71: std_logic;
  signal r17_net_x2: std_logic;

begin
  logical_y_net_x71 <= inc;
  logical_y_net_x70 <= load;
  r17_net_x2 <= reset;
  s0 <= logical_y_net_x293;
  s1 <= logical_y_net_x294;

  and1_14421f116b: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x70,
      b => logical_y_net_x71,
      o => logical_y_net_x69
    );

  and3_3c08c4a2ac: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x15,
      b => logical_y_net_x13,
      o => logical_y_net_x293
    );

  and4_6f958c2f70: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x13,
      b => logical_y_net_x14,
      o => logical_y_net_x294
    );

  not1_66a4b5b13a: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x71,
      o => logical_y_net_x12
    );

  not2_2ec6190ae9: entity work.not_entity_750f1f8f15
    port map (
      a => r17_net_x2,
      o => logical_y_net_x13
    );

  not3_771b8eb02e: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x70,
      o => logical_y_net_x14
    );

  or1_485a43e31d: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x69,
      b => logical_y_net_x12,
      o => logical_y_net_x15
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/PC1/Incrementer"

entity incrementer_entity_1bbcc7e63c is
  port (
    a1: in std_logic; 
    a10: in std_logic; 
    a11: in std_logic; 
    a12: in std_logic; 
    a13: in std_logic; 
    a14: in std_logic; 
    a15: in std_logic; 
    a16: in std_logic; 
    a2: in std_logic; 
    a3: in std_logic; 
    a4: in std_logic; 
    a5: in std_logic; 
    a6: in std_logic; 
    a7: in std_logic; 
    a8: in std_logic; 
    a9: in std_logic; 
    s1: out std_logic; 
    s10: out std_logic; 
    s11: out std_logic; 
    s12: out std_logic; 
    s13: out std_logic; 
    s14: out std_logic; 
    s15: out std_logic; 
    s16: out std_logic; 
    s2: out std_logic; 
    s3: out std_logic; 
    s4: out std_logic; 
    s5: out std_logic; 
    s6: out std_logic; 
    s7: out std_logic; 
    s8: out std_logic; 
    s9: out std_logic
  );
end incrementer_entity_1bbcc7e63c;

architecture structural of incrementer_entity_1bbcc7e63c is
  signal constant2_op_net_x9: std_logic;
  signal delay10_q_net_x15: std_logic;
  signal delay11_q_net_x15: std_logic;
  signal delay12_q_net_x15: std_logic;
  signal delay13_q_net_x15: std_logic;
  signal delay14_q_net_x15: std_logic;
  signal delay15_q_net_x15: std_logic;
  signal delay1_q_net_x15: std_logic;
  signal delay2_q_net_x15: std_logic;
  signal delay3_q_net_x11: std_logic;
  signal delay4_q_net_x15: std_logic;
  signal delay5_q_net_x15: std_logic;
  signal delay6_q_net_x15: std_logic;
  signal delay7_q_net_x15: std_logic;
  signal delay8_q_net_x15: std_logic;
  signal delay9_q_net_x15: std_logic;
  signal delay_q_net_x13: std_logic;
  signal logical_y_net_x147: std_logic;
  signal logical_y_net_x148: std_logic;
  signal logical_y_net_x149: std_logic;
  signal logical_y_net_x150: std_logic;
  signal logical_y_net_x170: std_logic;
  signal logical_y_net_x20: std_logic;
  signal logical_y_net_x21: std_logic;
  signal logical_y_net_x22: std_logic;
  signal logical_y_net_x23: std_logic;
  signal logical_y_net_x24: std_logic;
  signal logical_y_net_x25: std_logic;
  signal logical_y_net_x26: std_logic;
  signal logical_y_net_x27: std_logic;
  signal logical_y_net_x28: std_logic;
  signal logical_y_net_x29: std_logic;
  signal logical_y_net_x311: std_logic;
  signal logical_y_net_x312: std_logic;
  signal logical_y_net_x313: std_logic;
  signal logical_y_net_x314: std_logic;
  signal logical_y_net_x315: std_logic;
  signal logical_y_net_x316: std_logic;
  signal logical_y_net_x317: std_logic;
  signal logical_y_net_x318: std_logic;
  signal logical_y_net_x319: std_logic;
  signal logical_y_net_x320: std_logic;
  signal logical_y_net_x321: std_logic;
  signal logical_y_net_x322: std_logic;
  signal logical_y_net_x323: std_logic;
  signal logical_y_net_x324: std_logic;
  signal logical_y_net_x325: std_logic;
  signal logical_y_net_x326: std_logic;
  signal logical_y_net_x33: std_logic;

begin
  delay3_q_net_x11 <= a1;
  delay12_q_net_x15 <= a10;
  delay2_q_net_x15 <= a11;
  delay1_q_net_x15 <= a12;
  delay13_q_net_x15 <= a13;
  delay14_q_net_x15 <= a14;
  delay15_q_net_x15 <= a15;
  delay_q_net_x13 <= a16;
  delay4_q_net_x15 <= a2;
  delay5_q_net_x15 <= a3;
  delay6_q_net_x15 <= a4;
  delay7_q_net_x15 <= a5;
  delay8_q_net_x15 <= a6;
  delay9_q_net_x15 <= a7;
  delay10_q_net_x15 <= a8;
  delay11_q_net_x15 <= a9;
  s1 <= logical_y_net_x317;
  s10 <= logical_y_net_x321;
  s11 <= logical_y_net_x320;
  s12 <= logical_y_net_x319;
  s13 <= logical_y_net_x318;
  s14 <= logical_y_net_x312;
  s15 <= logical_y_net_x311;
  s16 <= logical_y_net_x326;
  s2 <= logical_y_net_x316;
  s3 <= logical_y_net_x315;
  s4 <= logical_y_net_x314;
  s5 <= logical_y_net_x313;
  s6 <= logical_y_net_x325;
  s7 <= logical_y_net_x324;
  s8 <= logical_y_net_x323;
  s9 <= logical_y_net_x322;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x9
    );

  full_adder10_9420a55ab8: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay7_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x150,
      c_o => logical_y_net_x26,
      s => logical_y_net_x313
    );

  full_adder11_11d870c7e8: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay6_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x26,
      c_o => logical_y_net_x28,
      s => logical_y_net_x314
    );

  full_adder12_f1dee78333: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay5_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x28,
      c_o => logical_y_net_x23,
      s => logical_y_net_x315
    );

  full_adder13_ee0eae6bdd: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay4_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x23,
      c_o => logical_y_net_x20,
      s => logical_y_net_x316
    );

  full_adder14_e50038578c: entity work.full_adder14_entity_cb5f3fd809
    port map (
      a => delay3_q_net_x11,
      b => logical_y_net_x170,
      c_in => logical_y_net_x20,
      s => logical_y_net_x317
    );

  full_adder1_32ea945394: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay14_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x33,
      c_o => logical_y_net_x22,
      s => logical_y_net_x312
    );

  full_adder2_7deafabe40: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay13_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x22,
      c_o => logical_y_net_x24,
      s => logical_y_net_x318
    );

  full_adder3_49419f3972: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay1_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x24,
      c_o => logical_y_net_x25,
      s => logical_y_net_x319
    );

  full_adder4_77d851addd: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay2_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x25,
      c_o => logical_y_net_x27,
      s => logical_y_net_x320
    );

  full_adder5_00c404d279: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay12_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x27,
      c_o => logical_y_net_x29,
      s => logical_y_net_x321
    );

  full_adder6_0b22eac1a2: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay11_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x29,
      c_o => logical_y_net_x147,
      s => logical_y_net_x322
    );

  full_adder7_d7dd0c6a85: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay10_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x147,
      c_o => logical_y_net_x148,
      s => logical_y_net_x323
    );

  full_adder8_957bc258a1: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay9_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x148,
      c_o => logical_y_net_x149,
      s => logical_y_net_x324
    );

  full_adder9_7c8676379c: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay8_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x149,
      c_o => logical_y_net_x150,
      s => logical_y_net_x325
    );

  full_adder_dd29039812: entity work.full_adder_entity_2dcec756db
    port map (
      a => delay15_q_net_x15,
      b => logical_y_net_x170,
      c_in => logical_y_net_x21,
      c_o => logical_y_net_x33,
      s => logical_y_net_x311
    );

  half_adder_1f9d68188c: entity work.half_adder_entity_ecad446fd2
    port map (
      a => delay_q_net_x13,
      b => constant2_op_net_x9,
      c => logical_y_net_x21,
      s => logical_y_net_x326
    );

  not1_79c08ef70f: entity work.not_entity_750f1f8f15
    port map (
      a => constant2_op_net_x9,
      o => logical_y_net_x170
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU/PC1"

entity pc1_entity_dbbd322016 is
  port (
    ce_1: in std_logic; 
    clk: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic; 
    din10: in std_logic; 
    din11: in std_logic; 
    din12: in std_logic; 
    din13: in std_logic; 
    din14: in std_logic; 
    din15: in std_logic; 
    din16: in std_logic; 
    din2: in std_logic; 
    din3: in std_logic; 
    din4: in std_logic; 
    din5: in std_logic; 
    din6: in std_logic; 
    din7: in std_logic; 
    din8: in std_logic; 
    din9: in std_logic; 
    inc: in std_logic; 
    load: in std_logic; 
    reset: in std_logic; 
    dout1: out std_logic; 
    dout10: out std_logic; 
    dout11: out std_logic; 
    dout12: out std_logic; 
    dout13: out std_logic; 
    dout14: out std_logic; 
    dout15: out std_logic; 
    dout16: out std_logic; 
    dout2: out std_logic; 
    dout3: out std_logic; 
    dout4: out std_logic; 
    dout5: out std_logic; 
    dout6: out std_logic; 
    dout7: out std_logic; 
    dout8: out std_logic; 
    dout9: out std_logic
  );
end pc1_entity_dbbd322016;

architecture structural of pc1_entity_dbbd322016 is
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal constant1_op_net_x2: std_logic;
  signal constant_op_net_x34: std_logic;
  signal convert1_dout_net_x14: std_logic;
  signal convert1_dout_net_x4: std_logic;
  signal convert1_dout_net_x5: std_logic;
  signal convert2_dout_net_x4: std_logic;
  signal convert2_dout_net_x5: std_logic;
  signal convert3_dout_net_x4: std_logic;
  signal convert3_dout_net_x5: std_logic;
  signal convert4_dout_net_x4: std_logic;
  signal convert4_dout_net_x5: std_logic;
  signal convert5_dout_net_x4: std_logic;
  signal convert5_dout_net_x5: std_logic;
  signal convert6_dout_net_x4: std_logic;
  signal convert6_dout_net_x5: std_logic;
  signal convert7_dout_net_x4: std_logic;
  signal convert7_dout_net_x5: std_logic;
  signal convert_dout_net_x4: std_logic;
  signal convert_dout_net_x5: std_logic;
  signal delay10_q_net_x15: std_logic;
  signal delay11_q_net_x15: std_logic;
  signal delay12_q_net_x15: std_logic;
  signal delay13_q_net_x15: std_logic;
  signal delay14_q_net_x15: std_logic;
  signal delay15_q_net_x15: std_logic;
  signal delay1_q_net_x15: std_logic;
  signal delay2_q_net_x15: std_logic;
  signal delay3_q_net_x11: std_logic;
  signal delay4_q_net_x15: std_logic;
  signal delay5_q_net_x15: std_logic;
  signal delay6_q_net_x15: std_logic;
  signal delay7_q_net_x15: std_logic;
  signal delay8_q_net_x15: std_logic;
  signal delay9_q_net_x15: std_logic;
  signal delay_q_net_x13: std_logic;
  signal logical_y_net_x293: std_logic;
  signal logical_y_net_x294: std_logic;
  signal logical_y_net_x311: std_logic;
  signal logical_y_net_x312: std_logic;
  signal logical_y_net_x313: std_logic;
  signal logical_y_net_x314: std_logic;
  signal logical_y_net_x315: std_logic;
  signal logical_y_net_x316: std_logic;
  signal logical_y_net_x317: std_logic;
  signal logical_y_net_x318: std_logic;
  signal logical_y_net_x319: std_logic;
  signal logical_y_net_x320: std_logic;
  signal logical_y_net_x321: std_logic;
  signal logical_y_net_x322: std_logic;
  signal logical_y_net_x323: std_logic;
  signal logical_y_net_x324: std_logic;
  signal logical_y_net_x325: std_logic;
  signal logical_y_net_x326: std_logic;
  signal logical_y_net_x331: std_logic;
  signal logical_y_net_x332: std_logic;
  signal logical_y_net_x333: std_logic;
  signal logical_y_net_x334: std_logic;
  signal logical_y_net_x335: std_logic;
  signal logical_y_net_x336: std_logic;
  signal logical_y_net_x337: std_logic;
  signal logical_y_net_x338: std_logic;
  signal logical_y_net_x339: std_logic;
  signal logical_y_net_x340: std_logic;
  signal logical_y_net_x341: std_logic;
  signal logical_y_net_x342: std_logic;
  signal logical_y_net_x343: std_logic;
  signal logical_y_net_x344: std_logic;
  signal logical_y_net_x345: std_logic;
  signal logical_y_net_x346: std_logic;
  signal logical_y_net_x347: std_logic;
  signal logical_y_net_x348: std_logic;
  signal r17_net_x3: std_logic;
  signal slice10_y_net_x6: std_logic;
  signal slice11_y_net_x6: std_logic;
  signal slice12_y_net_x6: std_logic;
  signal slice13_y_net_x6: std_logic;
  signal slice14_y_net_x6: std_logic;
  signal slice15_y_net_x6: std_logic;
  signal slice1_y_net_x6: std_logic;
  signal slice2_y_net_x6: std_logic;
  signal slice3_y_net_x6: std_logic;
  signal slice4_y_net_x6: std_logic;
  signal slice5_y_net_x6: std_logic;
  signal slice6_y_net_x6: std_logic;
  signal slice7_y_net_x6: std_logic;
  signal slice8_y_net_x6: std_logic;
  signal slice9_y_net_x6: std_logic;
  signal slice_y_net_x6: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  convert1_dout_net_x14 <= clk;
  clk_1_sg_x15 <= clk_1;
  slice_y_net_x6 <= din1;
  slice10_y_net_x6 <= din10;
  slice11_y_net_x6 <= din11;
  slice12_y_net_x6 <= din12;
  slice13_y_net_x6 <= din13;
  slice14_y_net_x6 <= din14;
  slice15_y_net_x6 <= din15;
  slice2_y_net_x6 <= din16;
  slice1_y_net_x6 <= din2;
  slice3_y_net_x6 <= din3;
  slice4_y_net_x6 <= din4;
  slice5_y_net_x6 <= din5;
  slice6_y_net_x6 <= din6;
  slice7_y_net_x6 <= din7;
  slice8_y_net_x6 <= din8;
  slice9_y_net_x6 <= din9;
  logical_y_net_x348 <= inc;
  logical_y_net_x347 <= load;
  r17_net_x3 <= reset;
  dout1 <= convert_dout_net_x4;
  dout10 <= convert1_dout_net_x5;
  dout11 <= convert2_dout_net_x5;
  dout12 <= convert3_dout_net_x5;
  dout13 <= convert4_dout_net_x5;
  dout14 <= convert5_dout_net_x5;
  dout15 <= convert6_dout_net_x5;
  dout16 <= convert7_dout_net_x5;
  dout2 <= convert1_dout_net_x4;
  dout3 <= convert2_dout_net_x4;
  dout4 <= convert3_dout_net_x4;
  dout5 <= convert4_dout_net_x4;
  dout6 <= convert5_dout_net_x4;
  dout7 <= convert6_dout_net_x4;
  dout8 <= convert7_dout_net_x4;
  dout9 <= convert_dout_net_x5;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x2
    );

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x34
    );

  decoder_583a0717df: entity work.decoder_entity_583a0717df
    port map (
      inc => logical_y_net_x348,
      load => logical_y_net_x347,
      reset => r17_net_x3,
      s0 => logical_y_net_x293,
      s1 => logical_y_net_x294
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert7_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x13
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert3_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x15
    );

  delay10: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert7_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay10_q_net_x15
    );

  delay11: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay11_q_net_x15
    );

  delay12: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert1_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay12_q_net_x15
    );

  delay13: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert4_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay13_q_net_x15
    );

  delay14: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert5_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay14_q_net_x15
    );

  delay15: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert6_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay15_q_net_x15
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert2_dout_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x15
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net_x11
    );

  delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert1_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net_x15
    );

  delay5: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert2_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay5_q_net_x15
    );

  delay6: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert3_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay6_q_net_x15
    );

  delay7: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert4_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay7_q_net_x15
    );

  delay8: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert5_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay8_q_net_x15
    );

  delay9: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => convert6_dout_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay9_q_net_x15
    );

  incrementer_1bbcc7e63c: entity work.incrementer_entity_1bbcc7e63c
    port map (
      a1 => delay3_q_net_x11,
      a10 => delay12_q_net_x15,
      a11 => delay2_q_net_x15,
      a12 => delay1_q_net_x15,
      a13 => delay13_q_net_x15,
      a14 => delay14_q_net_x15,
      a15 => delay15_q_net_x15,
      a16 => delay_q_net_x13,
      a2 => delay4_q_net_x15,
      a3 => delay5_q_net_x15,
      a4 => delay6_q_net_x15,
      a5 => delay7_q_net_x15,
      a6 => delay8_q_net_x15,
      a7 => delay9_q_net_x15,
      a8 => delay10_q_net_x15,
      a9 => delay11_q_net_x15,
      s1 => logical_y_net_x317,
      s10 => logical_y_net_x321,
      s11 => logical_y_net_x320,
      s12 => logical_y_net_x319,
      s13 => logical_y_net_x318,
      s14 => logical_y_net_x312,
      s15 => logical_y_net_x311,
      s16 => logical_y_net_x326,
      s2 => logical_y_net_x316,
      s3 => logical_y_net_x315,
      s4 => logical_y_net_x314,
      s5 => logical_y_net_x313,
      s6 => logical_y_net_x325,
      s7 => logical_y_net_x324,
      s8 => logical_y_net_x323,
      s9 => logical_y_net_x322
    );

  x16_4_1_mux_c8fcfba311: entity work.x16_4_1_mux_entity_c8fcfba311
    port map (
      a1 => constant_op_net_x34,
      b1 => slice_y_net_x6,
      b10 => slice10_y_net_x6,
      b11 => slice11_y_net_x6,
      b12 => slice12_y_net_x6,
      b13 => slice13_y_net_x6,
      b14 => slice14_y_net_x6,
      b15 => slice15_y_net_x6,
      b16 => slice2_y_net_x6,
      b2 => slice1_y_net_x6,
      b3 => slice3_y_net_x6,
      b4 => slice4_y_net_x6,
      b5 => slice5_y_net_x6,
      b6 => slice6_y_net_x6,
      b7 => slice7_y_net_x6,
      b8 => slice8_y_net_x6,
      b9 => slice9_y_net_x6,
      c1 => logical_y_net_x317,
      c10 => logical_y_net_x321,
      c11 => logical_y_net_x320,
      c12 => logical_y_net_x319,
      c13 => logical_y_net_x318,
      c14 => logical_y_net_x312,
      c15 => logical_y_net_x311,
      c16 => logical_y_net_x326,
      c2 => logical_y_net_x316,
      c3 => logical_y_net_x315,
      c4 => logical_y_net_x314,
      c5 => logical_y_net_x313,
      c6 => logical_y_net_x325,
      c7 => logical_y_net_x324,
      c8 => logical_y_net_x323,
      c9 => logical_y_net_x322,
      d1 => delay3_q_net_x11,
      d10 => delay12_q_net_x15,
      d11 => delay2_q_net_x15,
      d12 => delay1_q_net_x15,
      d13 => delay13_q_net_x15,
      d14 => delay14_q_net_x15,
      d15 => delay15_q_net_x15,
      d16 => delay_q_net_x13,
      d2 => delay4_q_net_x15,
      d3 => delay5_q_net_x15,
      d4 => delay6_q_net_x15,
      d5 => delay7_q_net_x15,
      d6 => delay8_q_net_x15,
      d7 => delay9_q_net_x15,
      d8 => delay10_q_net_x15,
      d9 => delay11_q_net_x15,
      s0 => logical_y_net_x293,
      s1 => logical_y_net_x294,
      o1 => logical_y_net_x331,
      o10 => logical_y_net_x346,
      o11 => logical_y_net_x333,
      o12 => logical_y_net_x334,
      o13 => logical_y_net_x335,
      o14 => logical_y_net_x336,
      o15 => logical_y_net_x337,
      o16 => logical_y_net_x338,
      o2 => logical_y_net_x332,
      o3 => logical_y_net_x339,
      o4 => logical_y_net_x340,
      o5 => logical_y_net_x341,
      o6 => logical_y_net_x342,
      o7 => logical_y_net_x343,
      o8 => logical_y_net_x344,
      o9 => logical_y_net_x345
    );

  x16_register2_a1cba28ede: entity work.x16_register1_entity_785fb9ec27
    port map (
      ce_1 => ce_1_sg_x15,
      clk => convert1_dout_net_x14,
      clk_1 => clk_1_sg_x15,
      din1 => logical_y_net_x331,
      din10 => logical_y_net_x346,
      din11 => logical_y_net_x333,
      din12 => logical_y_net_x334,
      din13 => logical_y_net_x335,
      din14 => logical_y_net_x336,
      din15 => logical_y_net_x337,
      din16 => logical_y_net_x338,
      din2 => logical_y_net_x332,
      din3 => logical_y_net_x339,
      din4 => logical_y_net_x340,
      din5 => logical_y_net_x341,
      din6 => logical_y_net_x342,
      din7 => logical_y_net_x343,
      din8 => logical_y_net_x344,
      din9 => logical_y_net_x345,
      en => constant1_op_net_x2,
      dout1 => convert_dout_net_x4,
      dout10 => convert1_dout_net_x5,
      dout11 => convert2_dout_net_x5,
      dout12 => convert3_dout_net_x5,
      dout13 => convert4_dout_net_x5,
      dout14 => convert5_dout_net_x5,
      dout15 => convert6_dout_net_x5,
      dout16 => convert7_dout_net_x5,
      dout2 => convert1_dout_net_x4,
      dout3 => convert2_dout_net_x4,
      dout4 => convert3_dout_net_x4,
      dout5 => convert4_dout_net_x4,
      dout6 => convert5_dout_net_x4,
      dout7 => convert6_dout_net_x4,
      dout8 => convert7_dout_net_x4,
      dout9 => convert_dout_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer/CPU"

entity cpu_entity_010c49f8f4 is
  port (
    ce_1: in std_logic; 
    clk: in std_logic; 
    clk_1: in std_logic; 
    inm_16: in std_logic_vector(15 downto 0); 
    instruction_16: in std_logic_vector(15 downto 0); 
    reset: in std_logic; 
    addressm_16: out std_logic_vector(15 downto 0); 
    outm_16: out std_logic_vector(15 downto 0); 
    pc_16: out std_logic_vector(15 downto 0); 
    writem_1: out std_logic
  );
end cpu_entity_010c49f8f4;

architecture structural of cpu_entity_010c49f8f4 is
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal concat1_y_net_x0: std_logic_vector(15 downto 0);
  signal concat2_y_net_x0: std_logic_vector(15 downto 0);
  signal concat3_y_net: std_logic_vector(15 downto 0);
  signal concat4_y_net: std_logic_vector(15 downto 0);
  signal concat5_y_net_x2: std_logic_vector(15 downto 0);
  signal concat6_y_net_x0: std_logic_vector(15 downto 0);
  signal concat7_y_net_x0: std_logic_vector(15 downto 0);
  signal convert1_dout_net_x10: std_logic;
  signal convert1_dout_net_x15: std_logic;
  signal convert1_dout_net_x2: std_logic;
  signal convert1_dout_net_x3: std_logic;
  signal convert1_dout_net_x4: std_logic;
  signal convert1_dout_net_x5: std_logic;
  signal convert1_dout_net_x6: std_logic;
  signal convert1_dout_net_x8: std_logic;
  signal convert1_dout_net_x9: std_logic;
  signal convert2_dout_net_x2: std_logic;
  signal convert2_dout_net_x3: std_logic;
  signal convert2_dout_net_x4: std_logic;
  signal convert2_dout_net_x5: std_logic;
  signal convert2_dout_net_x6: std_logic;
  signal convert2_dout_net_x7: std_logic;
  signal convert2_dout_net_x8: std_logic;
  signal convert2_dout_net_x9: std_logic;
  signal convert3_dout_net_x2: std_logic;
  signal convert3_dout_net_x3: std_logic;
  signal convert3_dout_net_x4: std_logic;
  signal convert3_dout_net_x5: std_logic;
  signal convert3_dout_net_x6: std_logic;
  signal convert3_dout_net_x7: std_logic;
  signal convert3_dout_net_x8: std_logic;
  signal convert3_dout_net_x9: std_logic;
  signal convert4_dout_net_x2: std_logic;
  signal convert4_dout_net_x3: std_logic;
  signal convert4_dout_net_x4: std_logic;
  signal convert4_dout_net_x5: std_logic;
  signal convert4_dout_net_x6: std_logic;
  signal convert4_dout_net_x7: std_logic;
  signal convert4_dout_net_x8: std_logic;
  signal convert4_dout_net_x9: std_logic;
  signal convert5_dout_net_x2: std_logic;
  signal convert5_dout_net_x3: std_logic;
  signal convert5_dout_net_x4: std_logic;
  signal convert5_dout_net_x5: std_logic;
  signal convert5_dout_net_x6: std_logic;
  signal convert5_dout_net_x7: std_logic;
  signal convert5_dout_net_x8: std_logic;
  signal convert5_dout_net_x9: std_logic;
  signal convert6_dout_net_x2: std_logic;
  signal convert6_dout_net_x3: std_logic;
  signal convert6_dout_net_x4: std_logic;
  signal convert6_dout_net_x5: std_logic;
  signal convert6_dout_net_x6: std_logic;
  signal convert6_dout_net_x7: std_logic;
  signal convert6_dout_net_x8: std_logic;
  signal convert6_dout_net_x9: std_logic;
  signal convert7_dout_net_x2: std_logic;
  signal convert7_dout_net_x3: std_logic;
  signal convert7_dout_net_x4: std_logic;
  signal convert7_dout_net_x5: std_logic;
  signal convert7_dout_net_x6: std_logic;
  signal convert7_dout_net_x7: std_logic;
  signal convert7_dout_net_x8: std_logic;
  signal convert7_dout_net_x9: std_logic;
  signal convert_dout_net_x2: std_logic;
  signal convert_dout_net_x3: std_logic;
  signal convert_dout_net_x4: std_logic;
  signal convert_dout_net_x5: std_logic;
  signal convert_dout_net_x6: std_logic;
  signal convert_dout_net_x7: std_logic;
  signal convert_dout_net_x8: std_logic;
  signal convert_dout_net_x9: std_logic;
  signal delay1_q_net_x1: std_logic;
  signal delay4_q_net_x2: std_logic_vector(15 downto 0);
  signal delay5_q_net_x0: std_logic_vector(15 downto 0);
  signal dual_port_ram_16_ram_douta_net_x1: std_logic_vector(15 downto 0);
  signal dual_port_ram_16_rom_doutb_net_x2: std_logic_vector(15 downto 0);
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x10: std_logic;
  signal logical_y_net_x132: std_logic;
  signal logical_y_net_x133: std_logic;
  signal logical_y_net_x134: std_logic;
  signal logical_y_net_x135: std_logic;
  signal logical_y_net_x136: std_logic;
  signal logical_y_net_x137: std_logic;
  signal logical_y_net_x138: std_logic;
  signal logical_y_net_x139: std_logic;
  signal logical_y_net_x140: std_logic;
  signal logical_y_net_x141: std_logic;
  signal logical_y_net_x142: std_logic;
  signal logical_y_net_x143: std_logic;
  signal logical_y_net_x144: std_logic;
  signal logical_y_net_x145: std_logic;
  signal logical_y_net_x146: std_logic;
  signal logical_y_net_x147: std_logic;
  signal logical_y_net_x148: std_logic;
  signal logical_y_net_x149: std_logic;
  signal logical_y_net_x150: std_logic;
  signal logical_y_net_x151: std_logic;
  signal logical_y_net_x152: std_logic;
  signal logical_y_net_x153: std_logic;
  signal logical_y_net_x154: std_logic;
  signal logical_y_net_x155: std_logic;
  signal logical_y_net_x156: std_logic;
  signal logical_y_net_x157: std_logic;
  signal logical_y_net_x158: std_logic;
  signal logical_y_net_x159: std_logic;
  signal logical_y_net_x160: std_logic;
  signal logical_y_net_x161: std_logic;
  signal logical_y_net_x162: std_logic;
  signal logical_y_net_x163: std_logic;
  signal logical_y_net_x164: std_logic;
  signal logical_y_net_x165: std_logic;
  signal logical_y_net_x166: std_logic;
  signal logical_y_net_x167: std_logic;
  signal logical_y_net_x347: std_logic;
  signal logical_y_net_x348: std_logic;
  signal logical_y_net_x4: std_logic;
  signal logical_y_net_x431: std_logic;
  signal logical_y_net_x432: std_logic;
  signal logical_y_net_x433: std_logic;
  signal logical_y_net_x434: std_logic;
  signal logical_y_net_x435: std_logic;
  signal logical_y_net_x436: std_logic;
  signal logical_y_net_x437: std_logic;
  signal logical_y_net_x438: std_logic;
  signal logical_y_net_x439: std_logic;
  signal logical_y_net_x440: std_logic;
  signal logical_y_net_x441: std_logic;
  signal logical_y_net_x442: std_logic;
  signal logical_y_net_x443: std_logic;
  signal logical_y_net_x444: std_logic;
  signal logical_y_net_x445: std_logic;
  signal logical_y_net_x446: std_logic;
  signal logical_y_net_x459: std_logic;
  signal logical_y_net_x7: std_logic;
  signal r17_net_x4: std_logic;
  signal slice10_y_net_x10: std_logic;
  signal slice10_y_net_x11: std_logic;
  signal slice10_y_net_x2: std_logic;
  signal slice10_y_net_x5: std_logic;
  signal slice10_y_net_x6: std_logic;
  signal slice10_y_net_x68: std_logic;
  signal slice10_y_net_x69: std_logic;
  signal slice10_y_net_x7: std_logic;
  signal slice10_y_net_x70: std_logic;
  signal slice10_y_net_x71: std_logic;
  signal slice10_y_net_x8: std_logic;
  signal slice11_y_net_x10: std_logic;
  signal slice11_y_net_x11: std_logic;
  signal slice11_y_net_x12: std_logic;
  signal slice11_y_net_x13: std_logic;
  signal slice11_y_net_x14: std_logic;
  signal slice11_y_net_x2: std_logic;
  signal slice11_y_net_x5: std_logic;
  signal slice11_y_net_x6: std_logic;
  signal slice11_y_net_x7: std_logic;
  signal slice11_y_net_x8: std_logic;
  signal slice11_y_net_x9: std_logic;
  signal slice12_y_net_x10: std_logic;
  signal slice12_y_net_x11: std_logic;
  signal slice12_y_net_x12: std_logic;
  signal slice12_y_net_x13: std_logic;
  signal slice12_y_net_x14: std_logic;
  signal slice12_y_net_x2: std_logic;
  signal slice12_y_net_x5: std_logic;
  signal slice12_y_net_x6: std_logic;
  signal slice12_y_net_x7: std_logic;
  signal slice12_y_net_x8: std_logic;
  signal slice12_y_net_x9: std_logic;
  signal slice13_y_net_x10: std_logic;
  signal slice13_y_net_x11: std_logic;
  signal slice13_y_net_x12: std_logic;
  signal slice13_y_net_x13: std_logic;
  signal slice13_y_net_x14: std_logic;
  signal slice13_y_net_x2: std_logic;
  signal slice13_y_net_x5: std_logic;
  signal slice13_y_net_x6: std_logic;
  signal slice13_y_net_x7: std_logic;
  signal slice13_y_net_x8: std_logic;
  signal slice13_y_net_x9: std_logic;
  signal slice14_y_net_x10: std_logic;
  signal slice14_y_net_x11: std_logic;
  signal slice14_y_net_x12: std_logic;
  signal slice14_y_net_x13: std_logic;
  signal slice14_y_net_x2: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice14_y_net_x5: std_logic;
  signal slice14_y_net_x6: std_logic;
  signal slice14_y_net_x7: std_logic;
  signal slice14_y_net_x8: std_logic;
  signal slice14_y_net_x9: std_logic;
  signal slice15_y_net_x10: std_logic;
  signal slice15_y_net_x11: std_logic;
  signal slice15_y_net_x12: std_logic;
  signal slice15_y_net_x13: std_logic;
  signal slice15_y_net_x2: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice15_y_net_x5: std_logic;
  signal slice15_y_net_x6: std_logic;
  signal slice15_y_net_x7: std_logic;
  signal slice15_y_net_x8: std_logic;
  signal slice15_y_net_x9: std_logic;
  signal slice1_y_net_x10: std_logic;
  signal slice1_y_net_x11: std_logic;
  signal slice1_y_net_x12: std_logic;
  signal slice1_y_net_x13: std_logic;
  signal slice1_y_net_x2: std_logic;
  signal slice1_y_net_x5: std_logic;
  signal slice1_y_net_x6: std_logic;
  signal slice1_y_net_x7: std_logic;
  signal slice1_y_net_x8: std_logic;
  signal slice1_y_net_x9: std_logic;
  signal slice2_y_net_x10: std_logic;
  signal slice2_y_net_x11: std_logic;
  signal slice2_y_net_x12: std_logic;
  signal slice2_y_net_x13: std_logic;
  signal slice2_y_net_x2: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice2_y_net_x5: std_logic;
  signal slice2_y_net_x6: std_logic;
  signal slice2_y_net_x7: std_logic;
  signal slice2_y_net_x8: std_logic;
  signal slice2_y_net_x9: std_logic;
  signal slice3_y_net_x10: std_logic;
  signal slice3_y_net_x11: std_logic;
  signal slice3_y_net_x12: std_logic;
  signal slice3_y_net_x13: std_logic;
  signal slice3_y_net_x2: std_logic;
  signal slice3_y_net_x5: std_logic;
  signal slice3_y_net_x6: std_logic;
  signal slice3_y_net_x7: std_logic;
  signal slice3_y_net_x8: std_logic;
  signal slice3_y_net_x9: std_logic;
  signal slice4_y_net_x10: std_logic;
  signal slice4_y_net_x11: std_logic;
  signal slice4_y_net_x2: std_logic;
  signal slice4_y_net_x35: std_logic;
  signal slice4_y_net_x36: std_logic;
  signal slice4_y_net_x5: std_logic;
  signal slice4_y_net_x6: std_logic;
  signal slice4_y_net_x67: std_logic;
  signal slice4_y_net_x7: std_logic;
  signal slice4_y_net_x8: std_logic;
  signal slice4_y_net_x9: std_logic;
  signal slice5_y_net_x10: std_logic;
  signal slice5_y_net_x11: std_logic;
  signal slice5_y_net_x12: std_logic;
  signal slice5_y_net_x13: std_logic;
  signal slice5_y_net_x2: std_logic;
  signal slice5_y_net_x5: std_logic;
  signal slice5_y_net_x6: std_logic;
  signal slice5_y_net_x69: std_logic;
  signal slice5_y_net_x7: std_logic;
  signal slice5_y_net_x8: std_logic;
  signal slice5_y_net_x9: std_logic;
  signal slice6_y_net_x10: std_logic;
  signal slice6_y_net_x11: std_logic;
  signal slice6_y_net_x12: std_logic;
  signal slice6_y_net_x136: std_logic;
  signal slice6_y_net_x137: std_logic;
  signal slice6_y_net_x2: std_logic;
  signal slice6_y_net_x5: std_logic;
  signal slice6_y_net_x6: std_logic;
  signal slice6_y_net_x7: std_logic;
  signal slice6_y_net_x8: std_logic;
  signal slice6_y_net_x9: std_logic;
  signal slice7_y_net_x10: std_logic;
  signal slice7_y_net_x11: std_logic;
  signal slice7_y_net_x12: std_logic;
  signal slice7_y_net_x13: std_logic;
  signal slice7_y_net_x2: std_logic;
  signal slice7_y_net_x5: std_logic;
  signal slice7_y_net_x6: std_logic;
  signal slice7_y_net_x69: std_logic;
  signal slice7_y_net_x7: std_logic;
  signal slice7_y_net_x8: std_logic;
  signal slice7_y_net_x9: std_logic;
  signal slice8_y_net_x10: std_logic;
  signal slice8_y_net_x11: std_logic;
  signal slice8_y_net_x12: std_logic;
  signal slice8_y_net_x136: std_logic;
  signal slice8_y_net_x137: std_logic;
  signal slice8_y_net_x2: std_logic;
  signal slice8_y_net_x5: std_logic;
  signal slice8_y_net_x6: std_logic;
  signal slice8_y_net_x7: std_logic;
  signal slice8_y_net_x8: std_logic;
  signal slice8_y_net_x9: std_logic;
  signal slice9_y_net_x10: std_logic;
  signal slice9_y_net_x11: std_logic;
  signal slice9_y_net_x2: std_logic;
  signal slice9_y_net_x5: std_logic;
  signal slice9_y_net_x6: std_logic;
  signal slice9_y_net_x68: std_logic;
  signal slice9_y_net_x69: std_logic;
  signal slice9_y_net_x7: std_logic;
  signal slice9_y_net_x70: std_logic;
  signal slice9_y_net_x71: std_logic;
  signal slice9_y_net_x8: std_logic;
  signal slice_y_net_x10: std_logic;
  signal slice_y_net_x11: std_logic;
  signal slice_y_net_x12: std_logic;
  signal slice_y_net_x13: std_logic;
  signal slice_y_net_x16: std_logic;
  signal slice_y_net_x2: std_logic;
  signal slice_y_net_x5: std_logic;
  signal slice_y_net_x6: std_logic;
  signal slice_y_net_x7: std_logic;
  signal slice_y_net_x8: std_logic;
  signal slice_y_net_x9: std_logic;

begin
  ce_1_sg_x16 <= ce_1;
  convert1_dout_net_x15 <= clk;
  clk_1_sg_x16 <= clk_1;
  dual_port_ram_16_ram_douta_net_x1 <= inm_16;
  dual_port_ram_16_rom_doutb_net_x2 <= instruction_16;
  r17_net_x4 <= reset;
  addressm_16 <= concat5_y_net_x2;
  outm_16 <= concat7_y_net_x0;
  pc_16 <= delay5_q_net_x0;
  writem_1 <= logical_y_net_x167;

  alu1_24dcba9862: entity work.alu1_entity_24dcba9862
    port map (
      f => slice9_y_net_x68,
      no => slice10_y_net_x68,
      nx => slice6_y_net_x136,
      ny => slice8_y_net_x136,
      x1 => slice_y_net_x11,
      x10 => slice10_y_net_x10,
      x11 => slice11_y_net_x12,
      x12 => slice12_y_net_x12,
      x13 => slice13_y_net_x12,
      x14 => slice14_y_net_x11,
      x15 => slice15_y_net_x11,
      x16 => slice2_y_net_x11,
      x2 => slice1_y_net_x11,
      x3 => slice3_y_net_x11,
      x4 => slice4_y_net_x10,
      x5 => slice5_y_net_x11,
      x6 => slice6_y_net_x11,
      x7 => slice7_y_net_x11,
      x8 => slice8_y_net_x11,
      x9 => slice9_y_net_x10,
      y1 => slice_y_net_x12,
      y10 => slice10_y_net_x11,
      y11 => slice11_y_net_x13,
      y12 => slice12_y_net_x13,
      y13 => slice13_y_net_x13,
      y14 => slice14_y_net_x12,
      y15 => slice15_y_net_x12,
      y16 => slice2_y_net_x12,
      y2 => slice1_y_net_x12,
      y3 => slice3_y_net_x12,
      y4 => slice4_y_net_x11,
      y5 => slice5_y_net_x12,
      y6 => slice6_y_net_x137,
      y7 => slice7_y_net_x12,
      y8 => slice8_y_net_x137,
      y9 => slice9_y_net_x11,
      zx => slice5_y_net_x69,
      zy => slice7_y_net_x69,
      o1 => logical_y_net_x443,
      o10 => logical_y_net_x446,
      o11 => logical_y_net_x432,
      o12 => logical_y_net_x433,
      o13 => logical_y_net_x434,
      o14 => logical_y_net_x435,
      o15 => logical_y_net_x436,
      o16 => logical_y_net_x437,
      o2 => logical_y_net_x431,
      o3 => logical_y_net_x438,
      o4 => logical_y_net_x439,
      o5 => logical_y_net_x440,
      o6 => logical_y_net_x441,
      o7 => logical_y_net_x442,
      o8 => logical_y_net_x444,
      o9 => logical_y_net_x445,
      zr => logical_y_net_x459
    );

  and16_1ce7cc6544: entity work.and1_entity_13c07394a5
    port map (
      a => slice13_y_net_x2,
      b => slice_y_net_x16,
      o => logical_y_net_x7
    );

  and1_efc3435e13: entity work.and1_entity_13c07394a5
    port map (
      a => slice_y_net_x16,
      b => slice12_y_net_x2,
      o => logical_y_net_x4
    );

  and2_4bb245124a: entity work.and1_entity_13c07394a5
    port map (
      a => logical_y_net_x10,
      b => delay1_q_net_x1,
      o => logical_y_net_x167
    );

  concat1: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => logical_y_net_x148,
      in1(0) => logical_y_net_x149,
      in10(0) => logical_y_net_x150,
      in11(0) => logical_y_net_x151,
      in12(0) => logical_y_net_x152,
      in13(0) => logical_y_net_x153,
      in14(0) => logical_y_net_x154,
      in15(0) => logical_y_net_x155,
      in2(0) => logical_y_net_x156,
      in3(0) => logical_y_net_x157,
      in4(0) => logical_y_net_x158,
      in5(0) => logical_y_net_x159,
      in6(0) => logical_y_net_x160,
      in7(0) => logical_y_net_x161,
      in8(0) => logical_y_net_x162,
      in9(0) => logical_y_net_x163,
      y => concat1_y_net_x0
    );

  concat2: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net_x4,
      in1(0) => convert1_dout_net_x8,
      in10(0) => convert2_dout_net_x5,
      in11(0) => convert3_dout_net_x5,
      in12(0) => convert4_dout_net_x5,
      in13(0) => convert5_dout_net_x5,
      in14(0) => convert6_dout_net_x5,
      in15(0) => convert7_dout_net_x5,
      in2(0) => convert2_dout_net_x4,
      in3(0) => convert3_dout_net_x4,
      in4(0) => convert4_dout_net_x4,
      in5(0) => convert5_dout_net_x4,
      in6(0) => convert6_dout_net_x4,
      in7(0) => convert7_dout_net_x4,
      in8(0) => convert_dout_net_x5,
      in9(0) => convert1_dout_net_x9,
      y => concat2_y_net_x0
    );

  concat3: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => logical_y_net_x443,
      in1(0) => logical_y_net_x431,
      in10(0) => logical_y_net_x432,
      in11(0) => logical_y_net_x433,
      in12(0) => logical_y_net_x434,
      in13(0) => logical_y_net_x435,
      in14(0) => logical_y_net_x436,
      in15(0) => logical_y_net_x437,
      in2(0) => logical_y_net_x438,
      in3(0) => logical_y_net_x439,
      in4(0) => logical_y_net_x440,
      in5(0) => logical_y_net_x441,
      in6(0) => logical_y_net_x442,
      in7(0) => logical_y_net_x444,
      in8(0) => logical_y_net_x445,
      in9(0) => logical_y_net_x446,
      y => concat3_y_net
    );

  concat4: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net_x8,
      in1(0) => convert1_dout_net_x4,
      in10(0) => convert2_dout_net_x9,
      in11(0) => convert3_dout_net_x9,
      in12(0) => convert4_dout_net_x9,
      in13(0) => convert5_dout_net_x9,
      in14(0) => convert6_dout_net_x9,
      in15(0) => convert7_dout_net_x9,
      in2(0) => convert2_dout_net_x8,
      in3(0) => convert3_dout_net_x8,
      in4(0) => convert4_dout_net_x8,
      in5(0) => convert5_dout_net_x8,
      in6(0) => convert6_dout_net_x8,
      in7(0) => convert7_dout_net_x8,
      in8(0) => convert_dout_net_x9,
      in9(0) => convert1_dout_net_x10,
      y => concat4_y_net
    );

  concat5: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net_x2,
      in1(0) => convert1_dout_net_x5,
      in10(0) => convert2_dout_net_x3,
      in11(0) => convert3_dout_net_x3,
      in12(0) => convert4_dout_net_x3,
      in13(0) => convert5_dout_net_x3,
      in14(0) => convert6_dout_net_x3,
      in15(0) => convert7_dout_net_x3,
      in2(0) => convert2_dout_net_x2,
      in3(0) => convert3_dout_net_x2,
      in4(0) => convert4_dout_net_x2,
      in5(0) => convert5_dout_net_x2,
      in6(0) => convert6_dout_net_x2,
      in7(0) => convert7_dout_net_x2,
      in8(0) => convert_dout_net_x3,
      in9(0) => convert1_dout_net_x6,
      y => concat5_y_net_x2
    );

  concat6: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => logical_y_net_x132,
      in1(0) => logical_y_net_x133,
      in10(0) => logical_y_net_x134,
      in11(0) => logical_y_net_x135,
      in12(0) => logical_y_net_x136,
      in13(0) => logical_y_net_x137,
      in14(0) => logical_y_net_x138,
      in15(0) => logical_y_net_x139,
      in2(0) => logical_y_net_x140,
      in3(0) => logical_y_net_x141,
      in4(0) => logical_y_net_x142,
      in5(0) => logical_y_net_x143,
      in6(0) => logical_y_net_x144,
      in7(0) => logical_y_net_x145,
      in8(0) => logical_y_net_x146,
      in9(0) => logical_y_net_x147,
      y => concat6_y_net_x0
    );

  concat7: entity work.concat_3425f785d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net_x6,
      in1(0) => convert1_dout_net_x2,
      in10(0) => convert2_dout_net_x7,
      in11(0) => convert3_dout_net_x7,
      in12(0) => convert4_dout_net_x7,
      in13(0) => convert5_dout_net_x7,
      in14(0) => convert6_dout_net_x7,
      in15(0) => convert7_dout_net_x7,
      in2(0) => convert2_dout_net_x6,
      in3(0) => convert3_dout_net_x6,
      in4(0) => convert4_dout_net_x6,
      in5(0) => convert5_dout_net_x6,
      in6(0) => convert6_dout_net_x6,
      in7(0) => convert7_dout_net_x6,
      in8(0) => convert_dout_net_x7,
      in9(0) => convert1_dout_net_x3,
      y => concat7_y_net_x0
    );

  delay1: entity work.delay_f15aea770d
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => logical_y_net_x1,
      q(0) => delay1_q_net_x1
    );

  delay4: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d => concat3_y_net,
      q => delay4_q_net_x2
    );

  delay5: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d => concat4_y_net,
      q => delay5_q_net_x0
    );

  in_feeder10_ab0b42bce4: entity work.in_feeder10_entity_ab0b42bce4
    port map (
      in_x0 => dual_port_ram_16_rom_doutb_net_x2,
      o1 => slice_y_net_x16,
      o10 => slice10_y_net_x68,
      o11 => slice11_y_net_x2,
      o12 => slice12_y_net_x2,
      o13 => slice13_y_net_x2,
      o14 => slice14_y_net_x4,
      o15 => slice15_y_net_x4,
      o16 => slice2_y_net_x4,
      o4 => slice4_y_net_x67,
      o5 => slice5_y_net_x69,
      o6 => slice6_y_net_x136,
      o7 => slice7_y_net_x69,
      o8 => slice8_y_net_x136,
      o9 => slice9_y_net_x68
    );

  in_feeder11_8845149db9: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => delay4_q_net_x2,
      o1 => slice_y_net_x2,
      o10 => slice10_y_net_x2,
      o11 => slice11_y_net_x6,
      o12 => slice12_y_net_x6,
      o13 => slice13_y_net_x6,
      o14 => slice14_y_net_x2,
      o15 => slice15_y_net_x2,
      o16 => slice2_y_net_x2,
      o2 => slice1_y_net_x2,
      o3 => slice3_y_net_x2,
      o4 => slice4_y_net_x2,
      o5 => slice5_y_net_x2,
      o6 => slice6_y_net_x2,
      o7 => slice7_y_net_x2,
      o8 => slice8_y_net_x2,
      o9 => slice9_y_net_x2
    );

  in_feeder1_d766244da4: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => dual_port_ram_16_rom_doutb_net_x2,
      o1 => slice_y_net_x5,
      o10 => slice10_y_net_x5,
      o11 => slice11_y_net_x5,
      o12 => slice12_y_net_x5,
      o13 => slice13_y_net_x5,
      o14 => slice14_y_net_x5,
      o15 => slice15_y_net_x5,
      o16 => slice2_y_net_x5,
      o2 => slice1_y_net_x5,
      o3 => slice3_y_net_x5,
      o4 => slice4_y_net_x5,
      o5 => slice5_y_net_x5,
      o6 => slice6_y_net_x5,
      o7 => slice7_y_net_x5,
      o8 => slice8_y_net_x5,
      o9 => slice9_y_net_x5
    );

  in_feeder2_e6518aaa74: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => delay4_q_net_x2,
      o1 => slice_y_net_x6,
      o10 => slice10_y_net_x6,
      o11 => slice11_y_net_x7,
      o12 => slice12_y_net_x7,
      o13 => slice13_y_net_x7,
      o14 => slice14_y_net_x6,
      o15 => slice15_y_net_x6,
      o16 => slice2_y_net_x6,
      o2 => slice1_y_net_x6,
      o3 => slice3_y_net_x6,
      o4 => slice4_y_net_x6,
      o5 => slice5_y_net_x6,
      o6 => slice6_y_net_x6,
      o7 => slice7_y_net_x6,
      o8 => slice8_y_net_x6,
      o9 => slice9_y_net_x6
    );

  in_feeder3_8daff19d8d: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => delay4_q_net_x2,
      o1 => slice_y_net_x7,
      o10 => slice10_y_net_x69,
      o11 => slice11_y_net_x8,
      o12 => slice12_y_net_x8,
      o13 => slice13_y_net_x8,
      o14 => slice14_y_net_x7,
      o15 => slice15_y_net_x7,
      o16 => slice2_y_net_x7,
      o2 => slice1_y_net_x7,
      o3 => slice3_y_net_x7,
      o4 => slice4_y_net_x7,
      o5 => slice5_y_net_x7,
      o6 => slice6_y_net_x7,
      o7 => slice7_y_net_x7,
      o8 => slice8_y_net_x7,
      o9 => slice9_y_net_x69
    );

  in_feeder4_f1a0965624: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => concat1_y_net_x0,
      o1 => slice_y_net_x8,
      o10 => slice10_y_net_x7,
      o11 => slice11_y_net_x9,
      o12 => slice12_y_net_x9,
      o13 => slice13_y_net_x9,
      o14 => slice14_y_net_x8,
      o15 => slice15_y_net_x8,
      o16 => slice2_y_net_x8,
      o2 => slice1_y_net_x8,
      o3 => slice3_y_net_x8,
      o4 => slice4_y_net_x8,
      o5 => slice5_y_net_x8,
      o6 => slice6_y_net_x8,
      o7 => slice7_y_net_x8,
      o8 => slice8_y_net_x8,
      o9 => slice9_y_net_x7
    );

  in_feeder5_1a45850332: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => dual_port_ram_16_ram_douta_net_x1,
      o1 => slice_y_net_x9,
      o10 => slice10_y_net_x8,
      o11 => slice11_y_net_x10,
      o12 => slice12_y_net_x10,
      o13 => slice13_y_net_x10,
      o14 => slice14_y_net_x9,
      o15 => slice15_y_net_x9,
      o16 => slice2_y_net_x9,
      o2 => slice1_y_net_x9,
      o3 => slice3_y_net_x9,
      o4 => slice4_y_net_x35,
      o5 => slice5_y_net_x9,
      o6 => slice6_y_net_x9,
      o7 => slice7_y_net_x9,
      o8 => slice8_y_net_x9,
      o9 => slice9_y_net_x8
    );

  in_feeder6_e98e96c0f5: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => concat5_y_net_x2,
      o1 => slice_y_net_x10,
      o10 => slice10_y_net_x70,
      o11 => slice11_y_net_x11,
      o12 => slice12_y_net_x11,
      o13 => slice13_y_net_x11,
      o14 => slice14_y_net_x10,
      o15 => slice15_y_net_x10,
      o16 => slice2_y_net_x10,
      o2 => slice1_y_net_x10,
      o3 => slice3_y_net_x10,
      o4 => slice4_y_net_x36,
      o5 => slice5_y_net_x10,
      o6 => slice6_y_net_x10,
      o7 => slice7_y_net_x10,
      o8 => slice8_y_net_x10,
      o9 => slice9_y_net_x70
    );

  in_feeder7_05f6f5d743: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => concat2_y_net_x0,
      o1 => slice_y_net_x11,
      o10 => slice10_y_net_x10,
      o11 => slice11_y_net_x12,
      o12 => slice12_y_net_x12,
      o13 => slice13_y_net_x12,
      o14 => slice14_y_net_x11,
      o15 => slice15_y_net_x11,
      o16 => slice2_y_net_x11,
      o2 => slice1_y_net_x11,
      o3 => slice3_y_net_x11,
      o4 => slice4_y_net_x10,
      o5 => slice5_y_net_x11,
      o6 => slice6_y_net_x11,
      o7 => slice7_y_net_x11,
      o8 => slice8_y_net_x11,
      o9 => slice9_y_net_x10
    );

  in_feeder8_8f2295d44b: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => concat6_y_net_x0,
      o1 => slice_y_net_x12,
      o10 => slice10_y_net_x11,
      o11 => slice11_y_net_x13,
      o12 => slice12_y_net_x13,
      o13 => slice13_y_net_x13,
      o14 => slice14_y_net_x12,
      o15 => slice15_y_net_x12,
      o16 => slice2_y_net_x12,
      o2 => slice1_y_net_x12,
      o3 => slice3_y_net_x12,
      o4 => slice4_y_net_x11,
      o5 => slice5_y_net_x12,
      o6 => slice6_y_net_x137,
      o7 => slice7_y_net_x12,
      o8 => slice8_y_net_x137,
      o9 => slice9_y_net_x11
    );

  in_feeder9_ec3dc18004: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => concat5_y_net_x2,
      o1 => slice_y_net_x13,
      o10 => slice10_y_net_x71,
      o11 => slice11_y_net_x14,
      o12 => slice12_y_net_x14,
      o13 => slice13_y_net_x14,
      o14 => slice14_y_net_x13,
      o15 => slice15_y_net_x13,
      o16 => slice2_y_net_x13,
      o2 => slice1_y_net_x13,
      o3 => slice3_y_net_x13,
      o4 => slice4_y_net_x9,
      o5 => slice5_y_net_x13,
      o6 => slice6_y_net_x12,
      o7 => slice7_y_net_x13,
      o8 => slice8_y_net_x12,
      o9 => slice9_y_net_x71
    );

  load_decoder_5a96e0288f: entity work.load_decoder_entity_5a96e0288f
    port map (
      j1 => slice14_y_net_x4,
      j2 => slice15_y_net_x4,
      j3 => slice2_y_net_x4,
      ng => logical_y_net_x443,
      opcde => slice_y_net_x16,
      zr => logical_y_net_x459,
      load => logical_y_net_x347
    );

  not1_16c6d7965a: entity work.not_entity_750f1f8f15
    port map (
      a => slice_y_net_x16,
      o => logical_y_net_x164
    );

  not2_46d3c9e9c0: entity work.not_entity_750f1f8f15
    port map (
      a => slice_y_net_x16,
      o => logical_y_net_x165
    );

  not3_e89366178e: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x347,
      o => logical_y_net_x348
    );

  not4_83a3a69a0c: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x7,
      o => logical_y_net_x10
    );

  not5_11cf5fab8c: entity work.not_entity_750f1f8f15
    port map (
      a => logical_y_net_x10,
      o => logical_y_net_x1
    );

  or6_e26b4568b7: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x164,
      b => slice11_y_net_x2,
      o => logical_y_net_x166
    );

  pc1_dbbd322016: entity work.pc1_entity_dbbd322016
    port map (
      ce_1 => ce_1_sg_x16,
      clk => convert1_dout_net_x15,
      clk_1 => clk_1_sg_x16,
      din1 => slice_y_net_x13,
      din10 => slice10_y_net_x71,
      din11 => slice11_y_net_x14,
      din12 => slice12_y_net_x14,
      din13 => slice13_y_net_x14,
      din14 => slice14_y_net_x13,
      din15 => slice15_y_net_x13,
      din16 => slice2_y_net_x13,
      din2 => slice1_y_net_x13,
      din3 => slice3_y_net_x13,
      din4 => slice4_y_net_x9,
      din5 => slice5_y_net_x13,
      din6 => slice6_y_net_x12,
      din7 => slice7_y_net_x13,
      din8 => slice8_y_net_x12,
      din9 => slice9_y_net_x71,
      inc => logical_y_net_x348,
      load => logical_y_net_x347,
      reset => r17_net_x4,
      dout1 => convert_dout_net_x8,
      dout10 => convert1_dout_net_x10,
      dout11 => convert2_dout_net_x9,
      dout12 => convert3_dout_net_x9,
      dout13 => convert4_dout_net_x9,
      dout14 => convert5_dout_net_x9,
      dout15 => convert6_dout_net_x9,
      dout16 => convert7_dout_net_x9,
      dout2 => convert1_dout_net_x4,
      dout3 => convert2_dout_net_x8,
      dout4 => convert3_dout_net_x8,
      dout5 => convert4_dout_net_x8,
      dout6 => convert5_dout_net_x8,
      dout7 => convert6_dout_net_x8,
      dout8 => convert7_dout_net_x8,
      dout9 => convert_dout_net_x9
    );

  x16_2_1_mux1_8b394cc3d5: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => slice_y_net_x10,
      a10 => slice10_y_net_x70,
      a11 => slice11_y_net_x11,
      a12 => slice12_y_net_x11,
      a13 => slice13_y_net_x11,
      a14 => slice14_y_net_x10,
      a15 => slice15_y_net_x10,
      a16 => slice2_y_net_x10,
      a2 => slice1_y_net_x10,
      a3 => slice3_y_net_x10,
      a4 => slice4_y_net_x36,
      a5 => slice5_y_net_x10,
      a6 => slice6_y_net_x10,
      a7 => slice7_y_net_x10,
      a8 => slice8_y_net_x10,
      a9 => slice9_y_net_x70,
      b1 => slice_y_net_x9,
      b10 => slice10_y_net_x8,
      b11 => slice11_y_net_x10,
      b12 => slice12_y_net_x10,
      b13 => slice13_y_net_x10,
      b14 => slice14_y_net_x9,
      b15 => slice15_y_net_x9,
      b16 => slice2_y_net_x9,
      b2 => slice1_y_net_x9,
      b3 => slice3_y_net_x9,
      b4 => slice4_y_net_x35,
      b5 => slice5_y_net_x9,
      b6 => slice6_y_net_x9,
      b7 => slice7_y_net_x9,
      b8 => slice8_y_net_x9,
      b9 => slice9_y_net_x8,
      sel => slice4_y_net_x67,
      o1 => logical_y_net_x132,
      o10 => logical_y_net_x147,
      o11 => logical_y_net_x134,
      o12 => logical_y_net_x135,
      o13 => logical_y_net_x136,
      o14 => logical_y_net_x137,
      o15 => logical_y_net_x138,
      o16 => logical_y_net_x139,
      o2 => logical_y_net_x133,
      o3 => logical_y_net_x140,
      o4 => logical_y_net_x141,
      o5 => logical_y_net_x142,
      o6 => logical_y_net_x143,
      o7 => logical_y_net_x144,
      o8 => logical_y_net_x145,
      o9 => logical_y_net_x146
    );

  x16_2_1_mux2_9f06afc871: entity work.x16_2_1_mux1_entity_8b394cc3d5
    port map (
      a1 => slice_y_net_x7,
      a10 => slice10_y_net_x69,
      a11 => slice11_y_net_x8,
      a12 => slice12_y_net_x8,
      a13 => slice13_y_net_x8,
      a14 => slice14_y_net_x7,
      a15 => slice15_y_net_x7,
      a16 => slice2_y_net_x7,
      a2 => slice1_y_net_x7,
      a3 => slice3_y_net_x7,
      a4 => slice4_y_net_x7,
      a5 => slice5_y_net_x7,
      a6 => slice6_y_net_x7,
      a7 => slice7_y_net_x7,
      a8 => slice8_y_net_x7,
      a9 => slice9_y_net_x69,
      b1 => slice_y_net_x5,
      b10 => slice10_y_net_x5,
      b11 => slice11_y_net_x5,
      b12 => slice12_y_net_x5,
      b13 => slice13_y_net_x5,
      b14 => slice14_y_net_x5,
      b15 => slice15_y_net_x5,
      b16 => slice2_y_net_x5,
      b2 => slice1_y_net_x5,
      b3 => slice3_y_net_x5,
      b4 => slice4_y_net_x5,
      b5 => slice5_y_net_x5,
      b6 => slice6_y_net_x5,
      b7 => slice7_y_net_x5,
      b8 => slice8_y_net_x5,
      b9 => slice9_y_net_x5,
      sel => logical_y_net_x165,
      o1 => logical_y_net_x148,
      o10 => logical_y_net_x163,
      o11 => logical_y_net_x150,
      o12 => logical_y_net_x151,
      o13 => logical_y_net_x152,
      o14 => logical_y_net_x153,
      o15 => logical_y_net_x154,
      o16 => logical_y_net_x155,
      o2 => logical_y_net_x149,
      o3 => logical_y_net_x156,
      o4 => logical_y_net_x157,
      o5 => logical_y_net_x158,
      o6 => logical_y_net_x159,
      o7 => logical_y_net_x160,
      o8 => logical_y_net_x161,
      o9 => logical_y_net_x162
    );

  x16_register1_785fb9ec27: entity work.x16_register1_entity_785fb9ec27
    port map (
      ce_1 => ce_1_sg_x16,
      clk => convert1_dout_net_x15,
      clk_1 => clk_1_sg_x16,
      din1 => slice_y_net_x8,
      din10 => slice10_y_net_x7,
      din11 => slice11_y_net_x9,
      din12 => slice12_y_net_x9,
      din13 => slice13_y_net_x9,
      din14 => slice14_y_net_x8,
      din15 => slice15_y_net_x8,
      din16 => slice2_y_net_x8,
      din2 => slice1_y_net_x8,
      din3 => slice3_y_net_x8,
      din4 => slice4_y_net_x8,
      din5 => slice5_y_net_x8,
      din6 => slice6_y_net_x8,
      din7 => slice7_y_net_x8,
      din8 => slice8_y_net_x8,
      din9 => slice9_y_net_x7,
      en => logical_y_net_x166,
      dout1 => convert_dout_net_x2,
      dout10 => convert1_dout_net_x6,
      dout11 => convert2_dout_net_x3,
      dout12 => convert3_dout_net_x3,
      dout13 => convert4_dout_net_x3,
      dout14 => convert5_dout_net_x3,
      dout15 => convert6_dout_net_x3,
      dout16 => convert7_dout_net_x3,
      dout2 => convert1_dout_net_x5,
      dout3 => convert2_dout_net_x2,
      dout4 => convert3_dout_net_x2,
      dout5 => convert4_dout_net_x2,
      dout6 => convert5_dout_net_x2,
      dout7 => convert6_dout_net_x2,
      dout8 => convert7_dout_net_x2,
      dout9 => convert_dout_net_x3
    );

  x16_register2_bf42e56faa: entity work.x16_register1_entity_785fb9ec27
    port map (
      ce_1 => ce_1_sg_x16,
      clk => convert1_dout_net_x15,
      clk_1 => clk_1_sg_x16,
      din1 => slice_y_net_x6,
      din10 => slice10_y_net_x6,
      din11 => slice11_y_net_x7,
      din12 => slice12_y_net_x7,
      din13 => slice13_y_net_x7,
      din14 => slice14_y_net_x6,
      din15 => slice15_y_net_x6,
      din16 => slice2_y_net_x6,
      din2 => slice1_y_net_x6,
      din3 => slice3_y_net_x6,
      din4 => slice4_y_net_x6,
      din5 => slice5_y_net_x6,
      din6 => slice6_y_net_x6,
      din7 => slice7_y_net_x6,
      din8 => slice8_y_net_x6,
      din9 => slice9_y_net_x6,
      en => logical_y_net_x4,
      dout1 => convert_dout_net_x4,
      dout10 => convert1_dout_net_x9,
      dout11 => convert2_dout_net_x5,
      dout12 => convert3_dout_net_x5,
      dout13 => convert4_dout_net_x5,
      dout14 => convert5_dout_net_x5,
      dout15 => convert6_dout_net_x5,
      dout16 => convert7_dout_net_x5,
      dout2 => convert1_dout_net_x8,
      dout3 => convert2_dout_net_x4,
      dout4 => convert3_dout_net_x4,
      dout5 => convert4_dout_net_x4,
      dout6 => convert5_dout_net_x4,
      dout7 => convert6_dout_net_x4,
      dout8 => convert7_dout_net_x4,
      dout9 => convert_dout_net_x5
    );

  x16_register3_c4f9cb24b3: entity work.x16_register1_entity_785fb9ec27
    port map (
      ce_1 => ce_1_sg_x16,
      clk => convert1_dout_net_x15,
      clk_1 => clk_1_sg_x16,
      din1 => slice_y_net_x2,
      din10 => slice10_y_net_x2,
      din11 => slice11_y_net_x6,
      din12 => slice12_y_net_x6,
      din13 => slice13_y_net_x6,
      din14 => slice14_y_net_x2,
      din15 => slice15_y_net_x2,
      din16 => slice2_y_net_x2,
      din2 => slice1_y_net_x2,
      din3 => slice3_y_net_x2,
      din4 => slice4_y_net_x2,
      din5 => slice5_y_net_x2,
      din6 => slice6_y_net_x2,
      din7 => slice7_y_net_x2,
      din8 => slice8_y_net_x2,
      din9 => slice9_y_net_x2,
      en => logical_y_net_x7,
      dout1 => convert_dout_net_x6,
      dout10 => convert1_dout_net_x3,
      dout11 => convert2_dout_net_x7,
      dout12 => convert3_dout_net_x7,
      dout13 => convert4_dout_net_x7,
      dout14 => convert5_dout_net_x7,
      dout15 => convert6_dout_net_x7,
      dout16 => convert7_dout_net_x7,
      dout2 => convert1_dout_net_x2,
      dout3 => convert2_dout_net_x6,
      dout4 => convert3_dout_net_x6,
      dout5 => convert4_dout_net_x6,
      dout6 => convert5_dout_net_x6,
      dout7 => convert6_dout_net_x6,
      dout8 => convert7_dout_net_x6,
      dout9 => convert_dout_net_x7
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/Computer"

entity computer_entity_423aa40c4b is
  port (
    ce_1: in std_logic; 
    clk: in std_logic; 
    clk_1: in std_logic; 
    key_wr_en: in std_logic; 
    reset: in std_logic; 
    scan_code: in std_logic_vector(7 downto 0); 
    c_addr_vga: out std_logic_vector(12 downto 0); 
    c_data_vga: out std_logic_vector(15 downto 0); 
    relational2_x0: out std_logic; 
    wr_scr: out std_logic
  );
end computer_entity_423aa40c4b;

architecture structural of computer_entity_423aa40c4b is
  signal addsub_s_net_x0: std_logic_vector(12 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal concat5_y_net_x2: std_logic_vector(15 downto 0);
  signal concat7_y_net_x1: std_logic_vector(15 downto 0);
  signal constant1_op_net: std_logic_vector(9 downto 0);
  signal constant2_op_net: std_logic_vector(15 downto 0);
  signal constant3_op_net: std_logic_vector(15 downto 0);
  signal constant4_op_net: std_logic_vector(15 downto 0);
  signal constant5_op_net: std_logic_vector(15 downto 0);
  signal constant6_op_net: std_logic_vector(15 downto 0);
  signal constant7_op_net: std_logic_vector(5 downto 0);
  signal constant_op_net: std_logic;
  signal convert1_dout_net: std_logic_vector(5 downto 0);
  signal convert1_dout_net_x16: std_logic;
  signal convert2_dout_net: std_logic_vector(9 downto 0);
  signal convert3_dout_net: std_logic_vector(15 downto 0);
  signal delay5_q_net_x0: std_logic_vector(15 downto 0);
  signal dual_port_ram_16_ram_douta_net_x1: std_logic_vector(15 downto 0);
  signal dual_port_ram_16_ram_doutb_net: std_logic_vector(15 downto 0);
  signal dual_port_ram_16_rom_doutb_net_x2: std_logic_vector(15 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x167: std_logic;
  signal r17_net_x5: std_logic;
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net_x0: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x17 <= ce_1;
  convert1_dout_net_x16 <= clk;
  clk_1_sg_x17 <= clk_1;
  logical_y_net_x1 <= key_wr_en;
  r17_net_x5 <= reset;
  register1_q_net_x0 <= scan_code;
  c_addr_vga <= addsub_s_net_x0;
  c_data_vga <= concat7_y_net_x1;
  relational2_x0 <= relational2_op_net_x0;
  wr_scr <= logical1_y_net_x0;

  addsub: entity work.xladdsub_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_f285ddf23084f166",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 13
    )
    port map (
      a => concat5_y_net_x2,
      b => constant5_op_net,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      en => "1",
      s => addsub_s_net_x0
    );

  constant1: entity work.constant_498bc68c14
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_3524c8234f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_3524c8234f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_3524c8234f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  constant6: entity work.constant_5f7a25b1ee
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant6_op_net
    );

  constant7: entity work.constant_c462ec0feb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 6,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      din => concat5_y_net_x2,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      din => delay5_q_net_x0,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      din => register1_q_net_x0,
      en => "1",
      dout => convert3_dout_net
    );

  cpu_010c49f8f4: entity work.cpu_entity_010c49f8f4
    port map (
      ce_1 => ce_1_sg_x17,
      clk => convert1_dout_net_x16,
      clk_1 => clk_1_sg_x17,
      inm_16 => dual_port_ram_16_ram_douta_net_x1,
      instruction_16 => dual_port_ram_16_rom_doutb_net_x2,
      reset => r17_net_x5,
      addressm_16 => concat5_y_net_x2,
      outm_16 => concat7_y_net_x1,
      pc_16 => delay5_q_net_x0,
      writem_1 => logical_y_net_x167
    );

  dual_port_ram_16_ram: entity work.xldpram_Keyboard_dino_Computer_V12
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 6,
      c_width_a => 16,
      c_width_b => 16,
      core_name0 => "bmg_72_9feca0d304d5757b",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x17,
      a_clk => clk_1_sg_x17,
      addra => convert1_dout_net,
      addrb => constant7_op_net,
      b_ce => ce_1_sg_x17,
      b_clk => clk_1_sg_x17,
      dina => concat7_y_net_x1,
      dinb => convert3_dout_net,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => logical_y_net,
      web(0) => logical_y_net_x1,
      douta => dual_port_ram_16_ram_douta_net_x1,
      doutb => dual_port_ram_16_ram_doutb_net
    );

  dual_port_ram_16_rom: entity work.xldpram_dist_Keyboard_dino_Computer_V12
    generic map (
      addr_width => 10,
      c_address_width => 10,
      c_width => 16,
      core_name0 => "dmg_72_486d14eecadccd6c",
      latency => 0
    )
    port map (
      a_ce => ce_1_sg_x17,
      a_clk => clk_1_sg_x17,
      addra => constant1_op_net,
      addrb => convert2_dout_net,
      b_ce => ce_1_sg_x17,
      b_clk => clk_1_sg_x17,
      dina => constant2_op_net,
      ena => "1",
      enb => "1",
      wea(0) => constant_op_net,
      doutb => dual_port_ram_16_rom_doutb_net_x2
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => logical_y_net_x167,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x167,
      d1(0) => relational1_op_net,
      y(0) => logical1_y_net_x0
    );

  relational: entity work.relational_5584813830
    port map (
      a => concat5_y_net_x2,
      b => constant4_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_96bdb515d9
    port map (
      a => concat5_y_net_x2,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_7a7af7b80d
    port map (
      a => dual_port_ram_16_ram_doutb_net,
      b => constant6_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Data_Sampler (PS2_D)/Key_Write_Send /Neg_Edge_Detector"

entity neg_edge_detector_entity_dd90f67520 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ps2_c_f: in std_logic; 
    ps2_c_f_ne: out std_logic
  );
end neg_edge_detector_entity_dd90f67520;

architecture structural of neg_edge_detector_entity_dd90f67520 is
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal inverter1_op_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal register_q_net: std_logic;
  signal relational2_op_net_x0: std_logic;

begin
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  relational2_op_net_x0 <= ps2_c_f;
  ps2_c_f_ne <= logical6_y_net_x0;

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      ip(0) => relational2_op_net_x0,
      op(0) => inverter1_op_net
    );

  logical6: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net_x0,
      d1(0) => register_q_net,
      y(0) => logical6_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      d(0) => inverter1_op_net,
      en => "1",
      rst => "0",
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Data_Sampler (PS2_D)/Key_Write_Send /Pos_Edge_Detector (Key_Write_Enable)"

entity \pos_edge_detector__key_write_enable_entity_a733324730\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    key_wr_en: in std_logic; 
    key_wr_en_pe: out std_logic
  );
end \pos_edge_detector__key_write_enable_entity_a733324730\;

architecture structural of \pos_edge_detector__key_write_enable_entity_a733324730\ is
  signal ce_1_sg_x19: std_logic;
  signal clk_1_sg_x19: std_logic;
  signal inverter1_op_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal register_q_net: std_logic;
  signal relational2_op_net_x1: std_logic;

begin
  ce_1_sg_x19 <= ce_1;
  clk_1_sg_x19 <= clk_1;
  relational2_op_net_x1 <= key_wr_en;
  key_wr_en_pe <= logical6_y_net_x0;

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      ip(0) => relational2_op_net_x1,
      op(0) => inverter1_op_net
    );

  logical6: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net_x1,
      d1(0) => register_q_net,
      y(0) => logical6_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      d(0) => inverter1_op_net,
      en => "1",
      rst => "0",
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Data_Sampler (PS2_D)/Key_Write_Send"

entity key_write_send_entity_224cdad073 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_p_8bit: in std_logic_vector(7 downto 0); 
    en_pe: in std_logic; 
    key_wr_en_pe: out std_logic; 
    scan_code_8_bit: out std_logic_vector(7 downto 0)
  );
end key_write_send_entity_224cdad073;

architecture structural of key_write_send_entity_224cdad073 is
  signal break_code_fo_op_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal delay2_q_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal logical6_y_net_x1: std_logic;
  signal logical6_y_net_x2: std_logic;
  signal logical_y_net_x2: std_logic;
  signal register1_q_net_x1: std_logic_vector(7 downto 0);
  signal register2_q_net: std_logic_vector(7 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal slice2_y_net_x0: std_logic_vector(7 downto 0);
  signal zero_op_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  slice2_y_net_x0 <= data_p_8bit;
  logical6_y_net_x2 <= en_pe;
  key_wr_en_pe <= logical_y_net_x2;
  scan_code_8_bit <= register1_q_net_x1;

  break_code_fo: entity work.constant_566137e191
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => break_code_fo_op_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      d(0) => relational1_op_net,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical6_y_net_x1,
      d1(0) => logical6_y_net_x0,
      y(0) => logical_y_net_x2
    );

  neg_edge_detector_dd90f67520: entity work.neg_edge_detector_entity_dd90f67520
    port map (
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      ps2_c_f => relational2_op_net_x1,
      ps2_c_f_ne => logical6_y_net_x0
    );

  pos_edge_detector_key_write_enable_a733324730: entity work.\pos_edge_detector__key_write_enable_entity_a733324730\
    port map (
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      key_wr_en => relational2_op_net_x1,
      key_wr_en_pe => logical6_y_net_x1
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      d => slice2_y_net_x0,
      en(0) => logical6_y_net_x2,
      rst(0) => delay2_q_net,
      q => register1_q_net_x1
    );

  register2: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      d => register1_q_net_x1,
      en(0) => logical6_y_net_x2,
      rst(0) => delay2_q_net,
      q => register2_q_net
    );

  relational1: entity work.relational_54048c8b02
    port map (
      a => register2_q_net,
      b => break_code_fo_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_16235eb2bf
    port map (
      a => register1_q_net_x1,
      b => zero_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x1
    );

  zero: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => zero_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Data_Sampler (PS2_D)/Pos_Edge_Detector (En)"

entity \pos_edge_detector__en_entity_24d070df10\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    en_pe: out std_logic
  );
end \pos_edge_detector__en_entity_24d070df10\;

architecture structural of \pos_edge_detector__en_entity_24d070df10\ is
  signal ce_1_sg_x22: std_logic;
  signal clk_1_sg_x22: std_logic;
  signal inverter1_op_net: std_logic;
  signal logical6_y_net_x3: std_logic;
  signal register_q_net: std_logic;
  signal relational3_op_net_x0: std_logic;

begin
  ce_1_sg_x22 <= ce_1;
  clk_1_sg_x22 <= clk_1;
  relational3_op_net_x0 <= en;
  en_pe <= logical6_y_net_x3;

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      ip(0) => relational3_op_net_x0,
      op(0) => inverter1_op_net
    );

  logical6: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational3_op_net_x0,
      d1(0) => register_q_net,
      y(0) => logical6_y_net_x3
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      d(0) => inverter1_op_net,
      en => "1",
      rst => "0",
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Data_Sampler (PS2_D)/Serial_Parallel (11 Bit)"

entity \serial_parallel__11_bit_entity_06b1e3f5f6\ is
  port (
    ce_1: in std_logic; 
    clk: in std_logic; 
    clk_1: in std_logic; 
    s: in std_logic; 
    p: out std_logic_vector(10 downto 0)
  );
end \serial_parallel__11_bit_entity_06b1e3f5f6\;

architecture structural of \serial_parallel__11_bit_entity_06b1e3f5f6\ is
  signal black_box10_q_net: std_logic;
  signal black_box11_q_net: std_logic;
  signal black_box1_q_net: std_logic;
  signal black_box2_q_net: std_logic;
  signal black_box3_q_net: std_logic;
  signal black_box4_q_net: std_logic;
  signal black_box5_q_net: std_logic;
  signal black_box6_q_net: std_logic;
  signal black_box7_q_net: std_logic;
  signal black_box8_q_net: std_logic;
  signal black_box9_q_net: std_logic;
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concat_y_net_x0: std_logic_vector(10 downto 0);
  signal constant8_op_net: std_logic;
  signal convert10_dout_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert2_dout_net_x1: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net: std_logic;
  signal convert8_dout_net: std_logic;
  signal convert9_dout_net: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal convert_dout_net_x1: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  convert2_dout_net_x1 <= clk;
  clk_1_sg_x23 <= clk_1;
  convert_dout_net_x1 <= s;
  p <= concat_y_net_x0;

  black_box1: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box11_q_net,
      en => constant8_op_net,
      q => black_box1_q_net
    );

  black_box10: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box9_q_net,
      en => constant8_op_net,
      q => black_box10_q_net
    );

  black_box11: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => convert_dout_net_x1,
      en => constant8_op_net,
      q => black_box11_q_net
    );

  black_box2: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box1_q_net,
      en => constant8_op_net,
      q => black_box2_q_net
    );

  black_box3: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box2_q_net,
      en => constant8_op_net,
      q => black_box3_q_net
    );

  black_box4: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box3_q_net,
      en => constant8_op_net,
      q => black_box4_q_net
    );

  black_box5: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box4_q_net,
      en => constant8_op_net,
      q => black_box5_q_net
    );

  black_box6: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box5_q_net,
      en => constant8_op_net,
      q => black_box6_q_net
    );

  black_box7: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box6_q_net,
      en => constant8_op_net,
      q => black_box7_q_net
    );

  black_box8: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box7_q_net,
      en => constant8_op_net,
      q => black_box8_q_net
    );

  black_box9: entity work.D_FlipFlop
    port map (
      clk => convert2_dout_net_x1,
      d => black_box8_q_net,
      en => constant8_op_net,
      q => black_box9_q_net
    );

  concat: entity work.concat_a0fa71d0d3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => convert_dout_net_x0,
      in1(0) => convert1_dout_net,
      in10(0) => convert10_dout_net,
      in2(0) => convert2_dout_net,
      in3(0) => convert3_dout_net,
      in4(0) => convert4_dout_net,
      in5(0) => convert5_dout_net,
      in6(0) => convert6_dout_net,
      in7(0) => convert7_dout_net,
      in8(0) => convert8_dout_net,
      in9(0) => convert9_dout_net,
      y => concat_y_net_x0
    );

  constant8: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant8_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box11_q_net,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box1_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert10: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box10_q_net,
      en => "1",
      dout(0) => convert10_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box2_q_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box3_q_net,
      en => "1",
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box4_q_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box5_q_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box6_q_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box7_q_net,
      en => "1",
      dout(0) => convert7_dout_net
    );

  convert8: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box8_q_net,
      en => "1",
      dout(0) => convert8_dout_net
    );

  convert9: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => black_box9_q_net,
      en => "1",
      dout(0) => convert9_dout_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Data_Sampler (PS2_D)"

entity \data_sampler__ps2_d_entity_39e06fa12d\ is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ps2_c_f: in std_logic; 
    ps2_d: in std_logic; 
    key_wr_en_pe: out std_logic; 
    scan_code_8_bit: out std_logic_vector(7 downto 0)
  );
end \data_sampler__ps2_d_entity_39e06fa12d\;

architecture structural of \data_sampler__ps2_d_entity_39e06fa12d\ is
  signal ce_1_sg_x24: std_logic;
  signal clk_1_sg_x24: std_logic;
  signal concat_y_net_x0: std_logic_vector(10 downto 0);
  signal convert2_dout_net_x2: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal data_bit_counter_reset_op_net: std_logic_vector(3 downto 0);
  signal databit_counter_op_net: std_logic_vector(3 downto 0);
  signal keybord_datacycle_op_net: std_logic_vector(3 downto 0);
  signal logical6_y_net_x0: std_logic;
  signal logical6_y_net_x3: std_logic;
  signal logical_y_net_x3: std_logic;
  signal p11_net_x0: std_logic;
  signal register1_q_net_x2: std_logic_vector(7 downto 0);
  signal relational3_op_net_x0: std_logic;
  signal slice2_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x24 <= ce_1;
  clk_1_sg_x24 <= clk_1;
  convert2_dout_net_x2 <= ps2_c_f;
  p11_net_x0 <= ps2_d;
  key_wr_en_pe <= logical_y_net_x3;
  scan_code_8_bit <= register1_q_net_x2;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din(0) => p11_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x1
    );

  data_bit_counter_reset: entity work.constant_67ad97ca70
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => data_bit_counter_reset_op_net
    );

  databit_counter: entity work.counter_fe1dd878cf
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      din => data_bit_counter_reset_op_net,
      en(0) => logical6_y_net_x0,
      load(0) => relational3_op_net_x0,
      op => databit_counter_op_net
    );

  key_write_send_224cdad073: entity work.key_write_send_entity_224cdad073
    port map (
      ce_1 => ce_1_sg_x24,
      clk_1 => clk_1_sg_x24,
      data_p_8bit => slice2_y_net_x0,
      en_pe => logical6_y_net_x3,
      key_wr_en_pe => logical_y_net_x3,
      scan_code_8_bit => register1_q_net_x2
    );

  keybord_datacycle: entity work.constant_c0ce4ae10c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => keybord_datacycle_op_net
    );

  neg_edge_detector_ps2_c_3e5af70ef9: entity work.neg_edge_detector_entity_dd90f67520
    port map (
      ce_1 => ce_1_sg_x24,
      clk_1 => clk_1_sg_x24,
      ps2_c_f => convert2_dout_net_x2,
      ps2_c_f_ne => logical6_y_net_x0
    );

  pos_edge_detector_en_24d070df10: entity work.\pos_edge_detector__en_entity_24d070df10\
    port map (
      ce_1 => ce_1_sg_x24,
      clk_1 => clk_1_sg_x24,
      en => relational3_op_net_x0,
      en_pe => logical6_y_net_x3
    );

  relational3: entity work.relational_4d3cfceaf4
    port map (
      a => databit_counter_op_net,
      b => keybord_datacycle_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x0
    );

  serial_parallel_11_bit_06b1e3f5f6: entity work.\serial_parallel__11_bit_entity_06b1e3f5f6\
    port map (
      ce_1 => ce_1_sg_x24,
      clk => convert2_dout_net_x2,
      clk_1 => clk_1_sg_x24,
      s => convert_dout_net_x1,
      p => concat_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 8,
      x_width => 11,
      y_width => 8
    )
    port map (
      x => concat_y_net_x0,
      y => slice2_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver/Digital_Filter (PS2_C)"

entity \digital_filter__ps2_c_entity_fec93e82de\ is
  port (
    ce_1: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_8: in std_logic; 
    ps2_c: in std_logic; 
    ps2_c_f: out std_logic
  );
end \digital_filter__ps2_c_entity_fec93e82de\;

architecture structural of \digital_filter__ps2_c_entity_fec93e82de\ is
  signal ce_1_sg_x25: std_logic;
  signal ce_8_sg_x0: std_logic;
  signal clk_1_sg_x25: std_logic;
  signal clk_8_sg_x0: std_logic;
  signal concat_y_net: std_logic_vector(1 downto 0);
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant8_op_net: std_logic_vector(7 downto 0);
  signal constant9_op_net: std_logic;
  signal convert2_dout_net_x3: std_logic;
  signal delay2_q_net: std_logic;
  signal mux2_y_net: std_logic;
  signal r12_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal serial_to_parallel1_dout_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x25 <= ce_1;
  ce_8_sg_x0 <= ce_8;
  clk_1_sg_x25 <= clk_1;
  clk_8_sg_x0 <= clk_8;
  r12_net_x0 <= ps2_c;
  ps2_c_f <= convert2_dout_net_x3;

  concat: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => relational1_op_net,
      in1(0) => relational2_op_net,
      y => concat_y_net
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant8: entity work.constant_19562ab42f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant8_op_net
    );

  constant9: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant9_op_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      clr => '0',
      din(0) => mux2_y_net,
      en => "1",
      dout(0) => convert2_dout_net_x3
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x25,
      clk => clk_1_sg_x25,
      d(0) => convert2_dout_net_x3,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  mux2: entity work.mux_897e616d40
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay2_q_net,
      d1(0) => constant1_op_net,
      d2(0) => constant2_op_net,
      d3(0) => delay2_q_net,
      sel => concat_y_net,
      y(0) => mux2_y_net
    );

  relational1: entity work.relational_54048c8b02
    port map (
      a => serial_to_parallel1_dout_net,
      b => constant8_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_6dad3a03fc
    port map (
      a => serial_to_parallel1_dout_net,
      b(0) => constant9_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  serial_to_parallel1: entity work.xls2p
    generic map (
      din_arith => xlUnsigned,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => xlUnsigned,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 1,
      lsb_first => 0,
      num_inputs => 8
    )
    port map (
      dest_ce => ce_8_sg_x0,
      dest_clk => clk_8_sg_x0,
      dest_clr => '0',
      din(0) => r12_net_x0,
      en => "1",
      rst => "0",
      src_ce => ce_1_sg_x25,
      src_clk => clk_1_sg_x25,
      src_clr => '0',
      dout => serial_to_parallel1_dout_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/KeyBoard_Driver"

entity keyboard_driver_entity_219ad70251 is
  port (
    ce_1: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_8: in std_logic; 
    ps2_c: in std_logic; 
    ps2_d: in std_logic; 
    key_wr_en_pe: out std_logic; 
    scan_code_8bit: out std_logic_vector(7 downto 0)
  );
end keyboard_driver_entity_219ad70251;

architecture structural of keyboard_driver_entity_219ad70251 is
  signal ce_1_sg_x26: std_logic;
  signal ce_8_sg_x1: std_logic;
  signal clk_1_sg_x26: std_logic;
  signal clk_8_sg_x1: std_logic;
  signal convert2_dout_net_x3: std_logic;
  signal logical_y_net_x4: std_logic;
  signal p11_net_x1: std_logic;
  signal r12_net_x1: std_logic;
  signal register1_q_net_x3: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x26 <= ce_1;
  ce_8_sg_x1 <= ce_8;
  clk_1_sg_x26 <= clk_1;
  clk_8_sg_x1 <= clk_8;
  r12_net_x1 <= ps2_c;
  p11_net_x1 <= ps2_d;
  key_wr_en_pe <= logical_y_net_x4;
  scan_code_8bit <= register1_q_net_x3;

  data_sampler_ps2_d_39e06fa12d: entity work.\data_sampler__ps2_d_entity_39e06fa12d\
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      ps2_c_f => convert2_dout_net_x3,
      ps2_d => p11_net_x1,
      key_wr_en_pe => logical_y_net_x4,
      scan_code_8_bit => register1_q_net_x3
    );

  digital_filter_ps2_c_fec93e82de: entity work.\digital_filter__ps2_c_entity_fec93e82de\
    port map (
      ce_1 => ce_1_sg_x26,
      ce_8 => ce_8_sg_x1,
      clk_1 => clk_1_sg_x26,
      clk_8 => clk_8_sg_x1,
      ps2_c => r12_net_x1,
      ps2_c_f => convert2_dout_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/VGA_Driver/8_And"

entity x8_and_entity_f888b1471d is
  port (
    a1: in std_logic; 
    b1: in std_logic; 
    b2: in std_logic; 
    b3: in std_logic; 
    b4: in std_logic; 
    b5: in std_logic; 
    b6: in std_logic; 
    b7: in std_logic; 
    b8: in std_logic; 
    o1: out std_logic; 
    o2: out std_logic; 
    o3: out std_logic; 
    o8: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic
  );
end x8_and_entity_f888b1471d;

architecture structural of x8_and_entity_f888b1471d is
  signal logical6_y_net_x16: std_logic;
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x17: std_logic;
  signal logical_y_net_x18: std_logic;
  signal slice10_y_net_x2: std_logic;
  signal slice11_y_net_x2: std_logic;
  signal slice12_y_net_x2: std_logic;
  signal slice13_y_net_x2: std_logic;
  signal slice14_y_net_x2: std_logic;
  signal slice15_y_net_x2: std_logic;
  signal slice2_y_net_x2: std_logic;
  signal slice9_y_net_x2: std_logic;

begin
  logical6_y_net_x16 <= a1;
  slice9_y_net_x2 <= b1;
  slice10_y_net_x2 <= b2;
  slice11_y_net_x2 <= b3;
  slice12_y_net_x2 <= b4;
  slice13_y_net_x2 <= b5;
  slice14_y_net_x2 <= b6;
  slice15_y_net_x2 <= b7;
  slice2_y_net_x2 <= b8;
  o1 <= logical_y_net_x12;
  o2 <= logical_y_net_x11;
  o3 <= logical_y_net_x13;
  o8 <= logical_y_net_x18;
  out4 <= logical_y_net_x14;
  out5 <= logical_y_net_x15;
  out6 <= logical_y_net_x16;
  out7 <= logical_y_net_x17;

  and16_8171b625a7: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice9_y_net_x2,
      o => logical_y_net_x12
    );

  and1_9ec383ffc6: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice10_y_net_x2,
      o => logical_y_net_x11
    );

  and2_0c71cba5d3: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice11_y_net_x2,
      o => logical_y_net_x13
    );

  and3_936ba92554: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice12_y_net_x2,
      o => logical_y_net_x14
    );

  and4_aee7a4150f: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice13_y_net_x2,
      o => logical_y_net_x15
    );

  and5_d360e8b775: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice14_y_net_x2,
      o => logical_y_net_x16
    );

  and6_de38c22c5a: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice15_y_net_x2,
      o => logical_y_net_x17
    );

  and7_0a1ed1f683: entity work.and1_entity_13c07394a5
    port map (
      a => logical6_y_net_x16,
      b => slice2_y_net_x2,
      o => logical_y_net_x18
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/VGA_Driver/In_Feeder1"

entity in_feeder1_entity_0e86ed550a is
  port (
    in_x0: in std_logic_vector(7 downto 0); 
    o10: out std_logic; 
    o11: out std_logic; 
    o12: out std_logic; 
    o13: out std_logic; 
    o14: out std_logic; 
    o15: out std_logic; 
    o16: out std_logic; 
    o9: out std_logic
  );
end in_feeder1_entity_0e86ed550a;

architecture structural of in_feeder1_entity_0e86ed550a is
  signal convert_dout_net_x0: std_logic_vector(7 downto 0);
  signal slice10_y_net_x3: std_logic;
  signal slice11_y_net_x3: std_logic;
  signal slice12_y_net_x3: std_logic;
  signal slice13_y_net_x3: std_logic;
  signal slice14_y_net_x3: std_logic;
  signal slice15_y_net_x3: std_logic;
  signal slice2_y_net_x3: std_logic;
  signal slice9_y_net_x3: std_logic;

begin
  convert_dout_net_x0 <= in_x0;
  o10 <= slice10_y_net_x3;
  o11 <= slice11_y_net_x3;
  o12 <= slice12_y_net_x3;
  o13 <= slice13_y_net_x3;
  o14 <= slice14_y_net_x3;
  o15 <= slice15_y_net_x3;
  o16 <= slice2_y_net_x3;
  o9 <= slice9_y_net_x3;

  slice10: entity work.xlslice
    generic map (
      new_lsb => 6,
      new_msb => 6,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice10_y_net_x3
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 5,
      new_msb => 5,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice11_y_net_x3
    );

  slice12: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 4,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice12_y_net_x3
    );

  slice13: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice13_y_net_x3
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice14_y_net_x3
    );

  slice15: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice15_y_net_x3
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice2_y_net_x3
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => convert_dout_net_x0,
      y(0) => slice9_y_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/VGA_Driver/Subsystem2"

entity subsystem2_entity_e91ba37901 is
  port (
    in1: in std_logic_vector(3 downto 0); 
    out1: out std_logic; 
    out10: out std_logic; 
    out11: out std_logic; 
    out12: out std_logic; 
    out13: out std_logic; 
    out14: out std_logic; 
    out15: out std_logic; 
    out16: out std_logic; 
    out2: out std_logic; 
    out3: out std_logic; 
    out4: out std_logic; 
    out5: out std_logic; 
    out6: out std_logic; 
    out7: out std_logic; 
    out8: out std_logic; 
    out9: out std_logic
  );
end subsystem2_entity_e91ba37901;

architecture structural of subsystem2_entity_e91ba37901 is
  signal delay_q_net_x0: std_logic_vector(3 downto 0);
  signal h_area_l10_op_net: std_logic_vector(3 downto 0);
  signal h_area_l11_op_net: std_logic_vector(3 downto 0);
  signal h_area_l12_op_net: std_logic_vector(3 downto 0);
  signal h_area_l13_op_net: std_logic_vector(3 downto 0);
  signal h_area_l14_op_net: std_logic_vector(3 downto 0);
  signal h_area_l15_op_net: std_logic_vector(3 downto 0);
  signal h_area_l16_op_net: std_logic_vector(3 downto 0);
  signal h_area_l17_op_net: std_logic_vector(3 downto 0);
  signal h_area_l2_op_net: std_logic;
  signal h_area_l3_op_net: std_logic;
  signal h_area_l4_op_net: std_logic_vector(1 downto 0);
  signal h_area_l5_op_net: std_logic_vector(1 downto 0);
  signal h_area_l6_op_net: std_logic_vector(2 downto 0);
  signal h_area_l7_op_net: std_logic_vector(2 downto 0);
  signal h_area_l8_op_net: std_logic_vector(2 downto 0);
  signal h_area_l9_op_net: std_logic_vector(2 downto 0);
  signal relational10_op_net_x3: std_logic;
  signal relational14_op_net_x3: std_logic;
  signal relational15_op_net_x3: std_logic;
  signal relational16_op_net_x3: std_logic;
  signal relational17_op_net_x3: std_logic;
  signal relational18_op_net_x3: std_logic;
  signal relational19_op_net_x3: std_logic;
  signal relational20_op_net_x3: std_logic;
  signal relational21_op_net_x3: std_logic;
  signal relational22_op_net_x3: std_logic;
  signal relational23_op_net_x3: std_logic;
  signal relational24_op_net_x3: std_logic;
  signal relational25_op_net_x3: std_logic;
  signal relational26_op_net_x3: std_logic;
  signal relational27_op_net_x3: std_logic;
  signal relational28_op_net_x3: std_logic;

begin
  delay_q_net_x0 <= in1;
  out1 <= relational10_op_net_x3;
  out10 <= relational22_op_net_x3;
  out11 <= relational23_op_net_x3;
  out12 <= relational24_op_net_x3;
  out13 <= relational25_op_net_x3;
  out14 <= relational26_op_net_x3;
  out15 <= relational27_op_net_x3;
  out16 <= relational28_op_net_x3;
  out2 <= relational15_op_net_x3;
  out3 <= relational16_op_net_x3;
  out4 <= relational17_op_net_x3;
  out5 <= relational18_op_net_x3;
  out6 <= relational19_op_net_x3;
  out7 <= relational20_op_net_x3;
  out8 <= relational21_op_net_x3;
  out9 <= relational14_op_net_x3;

  h_area_l10: entity work.constant_145086465d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l10_op_net
    );

  h_area_l11: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l11_op_net
    );

  h_area_l12: entity work.constant_5c1626e05e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l12_op_net
    );

  h_area_l13: entity work.constant_c0ce4ae10c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l13_op_net
    );

  h_area_l14: entity work.constant_c3074fb6dc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l14_op_net
    );

  h_area_l15: entity work.constant_3af61a22d9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l15_op_net
    );

  h_area_l16: entity work.constant_fac28d1ec7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l16_op_net
    );

  h_area_l17: entity work.constant_06590e4008
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l17_op_net
    );

  h_area_l2: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => h_area_l2_op_net
    );

  h_area_l3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => h_area_l3_op_net
    );

  h_area_l4: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l4_op_net
    );

  h_area_l5: entity work.constant_3a9a3daeb9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l5_op_net
    );

  h_area_l6: entity work.constant_469094441c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l6_op_net
    );

  h_area_l7: entity work.constant_4e64dfaf34
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l7_op_net
    );

  h_area_l8: entity work.constant_263f209841
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l8_op_net
    );

  h_area_l9: entity work.constant_1d6ad1c713
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l9_op_net
    );

  relational10: entity work.relational_c7182f92c9
    port map (
      a(0) => h_area_l2_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational10_op_net_x3
    );

  relational14: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l10_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational14_op_net_x3
    );

  relational15: entity work.relational_c7182f92c9
    port map (
      a(0) => h_area_l3_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational15_op_net_x3
    );

  relational16: entity work.relational_d87b4c3e83
    port map (
      a => h_area_l4_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational16_op_net_x3
    );

  relational17: entity work.relational_d87b4c3e83
    port map (
      a => h_area_l5_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational17_op_net_x3
    );

  relational18: entity work.relational_5590718669
    port map (
      a => h_area_l6_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational18_op_net_x3
    );

  relational19: entity work.relational_5590718669
    port map (
      a => h_area_l7_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational19_op_net_x3
    );

  relational20: entity work.relational_5590718669
    port map (
      a => h_area_l8_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational20_op_net_x3
    );

  relational21: entity work.relational_5590718669
    port map (
      a => h_area_l9_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational21_op_net_x3
    );

  relational22: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l11_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational22_op_net_x3
    );

  relational23: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l12_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational23_op_net_x3
    );

  relational24: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l13_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational24_op_net_x3
    );

  relational25: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l14_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational25_op_net_x3
    );

  relational26: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l15_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational26_op_net_x3
    );

  relational27: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l16_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational27_op_net_x3
    );

  relational28: entity work.relational_4d3cfceaf4
    port map (
      a => h_area_l17_op_net,
      b => delay_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational28_op_net_x3
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12/VGA_Driver"

entity vga_driver_entity_731d9bfbd4 is
  port (
    addr_vga: in std_logic_vector(12 downto 0); 
    c_data_vga: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    color: in std_logic_vector(7 downto 0); 
    wr_scr: in std_logic; 
    concat1_x0: out std_logic_vector(2 downto 0); 
    concat2_x0: out std_logic_vector(2 downto 0); 
    concat3_x0: out std_logic_vector(1 downto 0); 
    inverter1_x0: out std_logic; 
    inverter_x0: out std_logic
  );
end vga_driver_entity_731d9bfbd4;

architecture structural of vga_driver_entity_731d9bfbd4 is
  signal addsub1_s_net: std_logic_vector(18 downto 0);
  signal addsub3_s_net: std_logic_vector(18 downto 0);
  signal addsub4_s_net: std_logic_vector(16 downto 0);
  signal addsub_s_net_x1: std_logic_vector(12 downto 0);
  signal ce_1_sg_x27: std_logic;
  signal ce_2_sg_x0: std_logic;
  signal clk_1_sg_x27: std_logic;
  signal clk_2_sg_x0: std_logic;
  signal cmult1_p_net: std_logic_vector(3 downto 0);
  signal cmult_p_net: std_logic_vector(12 downto 0);
  signal concat1_y_net_x0: std_logic_vector(2 downto 0);
  signal concat2_y_net_x0: std_logic_vector(2 downto 0);
  signal concat3_y_net_x0: std_logic_vector(1 downto 0);
  signal concat7_y_net_x2: std_logic_vector(15 downto 0);
  signal convert_dout_net_x1: std_logic_vector(7 downto 0);
  signal delay_q_net_x0: std_logic_vector(3 downto 0);
  signal dis1_op_net: std_logic_vector(3 downto 0);
  signal dis_op_net: std_logic_vector(12 downto 0);
  signal dta_darkk1_op_net: std_logic_vector(15 downto 0);
  signal dual_port_ram_7_5k_rom_doutb_net_x0: std_logic_vector(15 downto 0);
  signal h_area_l1_op_net: std_logic_vector(10 downto 0);
  signal h_area_l_op_net: std_logic_vector(10 downto 0);
  signal h_area_lines_p_net: std_logic_vector(18 downto 0);
  signal h_area_r_op_net: std_logic_vector(10 downto 0);
  signal h_counter_op_net: std_logic_vector(10 downto 0);
  signal hfp_op_net: std_logic_vector(10 downto 0);
  signal hlines_op_net: std_logic_vector(10 downto 0);
  signal hmax_op_net: std_logic_vector(10 downto 0);
  signal hsp_op_net: std_logic_vector(10 downto 0);
  signal inverter1_op_net_x0: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter7_op_net: std_logic;
  signal inverter_op_net_x0: std_logic;
  signal logical1_y_net: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net_x16: std_logic;
  signal logical7_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x11: std_logic;
  signal logical_y_net_x12: std_logic;
  signal logical_y_net_x13: std_logic;
  signal logical_y_net_x14: std_logic;
  signal logical_y_net_x15: std_logic;
  signal logical_y_net_x16: std_logic;
  signal logical_y_net_x17: std_logic;
  signal logical_y_net_x18: std_logic;
  signal logical_y_net_x29: std_logic;
  signal logical_y_net_x30: std_logic;
  signal logical_y_net_x31: std_logic;
  signal logical_y_net_x38: std_logic;
  signal logical_y_net_x39: std_logic;
  signal logical_y_net_x40: std_logic;
  signal logical_y_net_x41: std_logic;
  signal logical_y_net_x42: std_logic;
  signal logical_y_net_x43: std_logic;
  signal logical_y_net_x44: std_logic;
  signal logical_y_net_x45: std_logic;
  signal logical_y_net_x46: std_logic;
  signal logical_y_net_x47: std_logic;
  signal logical_y_net_x48: std_logic;
  signal logical_y_net_x49: std_logic;
  signal logical_y_net_x50: std_logic;
  signal logical_y_net_x51: std_logic;
  signal logical_y_net_x52: std_logic;
  signal logical_y_net_x9: std_logic;
  signal mux2_y_net: std_logic_vector(12 downto 0);
  signal mux3_y_net: std_logic_vector(3 downto 0);
  signal relational10_op_net: std_logic;
  signal relational10_op_net_x3: std_logic;
  signal relational11_op_net: std_logic;
  signal relational12_op_net: std_logic;
  signal relational13_op_net: std_logic;
  signal relational14_op_net_x3: std_logic;
  signal relational15_op_net_x3: std_logic;
  signal relational16_op_net_x3: std_logic;
  signal relational17_op_net_x3: std_logic;
  signal relational18_op_net_x3: std_logic;
  signal relational19_op_net_x3: std_logic;
  signal relational1_op_net: std_logic;
  signal relational20_op_net_x3: std_logic;
  signal relational21_op_net_x3: std_logic;
  signal relational22_op_net_x3: std_logic;
  signal relational23_op_net_x3: std_logic;
  signal relational24_op_net_x3: std_logic;
  signal relational25_op_net_x3: std_logic;
  signal relational26_op_net_x3: std_logic;
  signal relational27_op_net_x3: std_logic;
  signal relational28_op_net_x3: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net: std_logic;
  signal relational5_op_net: std_logic;
  signal relational6_op_net: std_logic;
  signal relational7_op_net: std_logic;
  signal relational8_op_net: std_logic;
  signal relational9_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal slice10_y_net_x3: std_logic;
  signal slice10_y_net_x4: std_logic;
  signal slice11_y_net_x3: std_logic;
  signal slice11_y_net_x4: std_logic;
  signal slice12_y_net_x3: std_logic;
  signal slice12_y_net_x4: std_logic;
  signal slice13_y_net_x3: std_logic;
  signal slice13_y_net_x4: std_logic;
  signal slice14_y_net_x3: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice15_y_net_x3: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice1_y_net_x3: std_logic;
  signal slice2_y_net_x3: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice3_y_net_x3: std_logic;
  signal slice4_y_net_x3: std_logic;
  signal slice5_y_net_x3: std_logic;
  signal slice6_y_net_x3: std_logic;
  signal slice7_y_net_x3: std_logic;
  signal slice8_y_net_x3: std_logic;
  signal slice9_y_net_x3: std_logic;
  signal slice9_y_net_x4: std_logic;
  signal slice_y_net_x3: std_logic;
  signal v_area_b_op_net: std_logic_vector(10 downto 0);
  signal v_area_t1_op_net: std_logic_vector(10 downto 0);
  signal v_area_t_op_net: std_logic_vector(10 downto 0);
  signal v_counter_op_net: std_logic_vector(10 downto 0);
  signal vfp_op_net: std_logic_vector(10 downto 0);
  signal vlines1_op_net: std_logic_vector(10 downto 0);
  signal vlines_op_net: std_logic_vector(10 downto 0);
  signal vmax_op_net: std_logic_vector(10 downto 0);
  signal vsp_op_net: std_logic_vector(10 downto 0);
  signal wr1_op_net: std_logic;
  signal wr2_op_net: std_logic;

begin
  addsub_s_net_x1 <= addr_vga;
  concat7_y_net_x2 <= c_data_vga;
  ce_1_sg_x27 <= ce_1;
  ce_2_sg_x0 <= ce_2;
  clk_1_sg_x27 <= clk_1;
  clk_2_sg_x0 <= clk_2;
  convert_dout_net_x1 <= color;
  logical1_y_net_x1 <= wr_scr;
  concat1_x0 <= concat1_y_net_x0;
  concat2_x0 <= concat2_y_net_x0;
  concat3_x0 <= concat3_y_net_x0;
  inverter1_x0 <= inverter1_op_net_x0;
  inverter_x0 <= inverter_op_net_x0;

  addsub1: entity work.xladdsub_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 11,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 11,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 12,
      core_name0 => "addsb_11_0_ba8da5a9ceeb6963",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 12,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 19
    )
    port map (
      a => h_counter_op_net,
      b => h_area_l1_op_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub3: entity work.xladdsub_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 11,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 11,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 12,
      core_name0 => "addsb_11_0_ba8da5a9ceeb6963",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 12,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 19
    )
    port map (
      a => v_counter_op_net,
      b => v_area_t1_op_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      en => "1",
      s => addsub3_s_net
    );

  addsub4: entity work.xladdsub_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 19,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 19,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 20,
      core_name0 => "addsb_11_0_dc180f3097483231",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 20,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 17
    )
    port map (
      a => addsub1_s_net,
      b => h_area_lines_p_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      en => "1",
      s => addsub4_s_net
    );

  cmult: entity work.xlcmult_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 17,
      b_bin_pt => 4,
      c_a_type => 1,
      c_a_width => 17,
      c_b_type => 1,
      c_b_width => 4,
      c_output_width => 21,
      core_name0 => "cmlt_11_2_a41d4032b042da44",
      extra_registers => 0,
      multsign => 1,
      overflow => 1,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 13,
      quantization => 1,
      zero_const => 0
    )
    port map (
      a => addsub4_s_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      core_ce => ce_2_sg_x0,
      core_clk => clk_2_sg_x0,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => cmult_p_net
    );

  cmult1: entity work.xlcmult_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 17,
      b_bin_pt => 0,
      c_a_type => 1,
      c_a_width => 17,
      c_b_type => 1,
      c_b_width => 1,
      c_output_width => 18,
      core_name0 => "cmlt_11_2_e4c46939f284af86",
      extra_registers => 0,
      multsign => 1,
      overflow => 1,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 4,
      quantization => 1,
      zero_const => 0
    )
    port map (
      a => addsub4_s_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      core_ce => ce_2_sg_x0,
      core_clk => clk_2_sg_x0,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => cmult1_p_net
    );

  concat1: entity work.concat_09e13b86e0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => logical_y_net_x16,
      in1(0) => logical_y_net_x17,
      in2(0) => logical_y_net_x18,
      y => concat1_y_net_x0
    );

  concat2: entity work.concat_09e13b86e0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => logical_y_net_x13,
      in1(0) => logical_y_net_x14,
      in2(0) => logical_y_net_x15,
      y => concat2_y_net_x0
    );

  concat3: entity work.concat_32afb77cd2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => logical_y_net_x12,
      in1(0) => logical_y_net_x11,
      y => concat3_y_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 4
    )
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      d => mux3_y_net,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  dis: entity work.constant_b9c7b532a5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => dis_op_net
    );

  dis1: entity work.constant_06590e4008
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => dis1_op_net
    );

  dta_darkk1: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => dta_darkk1_op_net
    );

  dual_port_ram_7_5k_rom: entity work.xldpram_Keyboard_dino_Computer_V12
    generic map (
      c_address_width_a => 13,
      c_address_width_b => 13,
      c_width_a => 16,
      c_width_b => 16,
      core_name0 => "bmg_72_e8fe9883cd15d256",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x27,
      a_clk => clk_1_sg_x27,
      addra => addsub_s_net_x1,
      addrb => mux2_y_net,
      b_ce => ce_2_sg_x0,
      b_clk => clk_2_sg_x0,
      dina => concat7_y_net_x2,
      dinb => dta_darkk1_op_net,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => logical7_y_net,
      web(0) => wr1_op_net,
      doutb => dual_port_ram_7_5k_rom_doutb_net_x0
    );

  h_area_l: entity work.constant_f6f157f01e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l_op_net
    );

  h_area_l1: entity work.constant_f6f157f01e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_l1_op_net
    );

  h_area_lines: entity work.xlcmult_Keyboard_dino_Computer_V12
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 19,
      b_bin_pt => 0,
      c_a_type => 1,
      c_a_width => 19,
      c_b_type => 1,
      c_b_width => 11,
      c_output_width => 30,
      core_name0 => "cmlt_11_2_f2e902bf2e24e565",
      extra_registers => 0,
      multsign => 1,
      overflow => 1,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 19,
      quantization => 1,
      zero_const => 0
    )
    port map (
      a => addsub3_s_net,
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      core_ce => ce_2_sg_x0,
      core_clk => clk_2_sg_x0,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => h_area_lines_p_net
    );

  h_area_r: entity work.constant_b8111c12bb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => h_area_r_op_net
    );

  h_counter: entity work.counter_405872354b
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      rst(0) => relational_op_net,
      op => h_counter_op_net
    );

  hfp: entity work.constant_e25c15316f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hfp_op_net
    );

  hlines: entity work.constant_36270b4c8f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hlines_op_net
    );

  hmax: entity work.constant_c9d627f634
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hmax_op_net
    );

  hsp: entity work.constant_f488b54643
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hsp_op_net
    );

  in_feeder1_0e86ed550a: entity work.in_feeder1_entity_0e86ed550a
    port map (
      in_x0 => convert_dout_net_x1,
      o10 => slice10_y_net_x3,
      o11 => slice11_y_net_x3,
      o12 => slice12_y_net_x3,
      o13 => slice13_y_net_x3,
      o14 => slice14_y_net_x3,
      o15 => slice15_y_net_x3,
      o16 => slice2_y_net_x3,
      o9 => slice9_y_net_x3
    );

  in_feeder4_074871a6b0: entity work.in_feeder1_entity_d766244da4
    port map (
      in_x0 => dual_port_ram_7_5k_rom_doutb_net_x0,
      o1 => slice_y_net_x3,
      o10 => slice10_y_net_x4,
      o11 => slice11_y_net_x4,
      o12 => slice12_y_net_x4,
      o13 => slice13_y_net_x4,
      o14 => slice14_y_net_x4,
      o15 => slice15_y_net_x4,
      o16 => slice2_y_net_x4,
      o2 => slice1_y_net_x3,
      o3 => slice3_y_net_x3,
      o4 => slice4_y_net_x3,
      o5 => slice5_y_net_x3,
      o6 => slice6_y_net_x3,
      o7 => slice7_y_net_x3,
      o8 => slice8_y_net_x3,
      o9 => slice9_y_net_x4
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      ip(0) => logical_y_net,
      op(0) => inverter_op_net_x0
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      ip(0) => logical1_y_net,
      op(0) => inverter1_op_net_x0
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x27,
      clk => clk_1_sg_x27,
      clr => '0',
      ip(0) => relational10_op_net,
      op(0) => inverter2_op_net
    );

  inverter7: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      ip(0) => relational7_op_net,
      op(0) => inverter7_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net,
      d1(0) => relational3_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational4_op_net,
      d1(0) => relational5_op_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational6_op_net,
      d1(0) => relational8_op_net,
      y(0) => logical2_y_net
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational9_op_net,
      d1(0) => relational11_op_net,
      y(0) => logical3_y_net
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational13_op_net,
      d1(0) => relational12_op_net,
      y(0) => logical4_y_net
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical3_y_net,
      d1(0) => logical4_y_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x9,
      d1(0) => logical2_y_net,
      d2(0) => inverter7_op_net,
      y(0) => logical6_y_net_x16
    );

  logical7: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter2_op_net,
      d1(0) => wr2_op_net,
      d2(0) => logical1_y_net_x1,
      y(0) => logical7_y_net
    );

  mux2: entity work.mux_c146d55ebf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => dis_op_net,
      d1 => cmult_p_net,
      sel(0) => logical5_y_net,
      y => mux2_y_net
    );

  mux3: entity work.mux_f9c0f11a18
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => dis1_op_net,
      d1 => cmult1_p_net,
      sel(0) => logical5_y_net,
      y => mux3_y_net
    );

  or4_16aeec889f: entity work.or_entity_247ef195fa
    port map (
      a => logical_y_net_x52,
      b => logical_y_net_x31,
      o => logical_y_net_x9
    );

  or_8_way1_fbe9398c30: entity work.or_8_way_entity_bcf741cbd1
    port map (
      a1 => logical_y_net_x50,
      a8 => logical_y_net_x46,
      in1 => logical_y_net_x29,
      in2 => logical_y_net_x43,
      in3 => logical_y_net_x51,
      in4 => logical_y_net_x44,
      in5 => logical_y_net_x45,
      in6 => logical_y_net_x30,
      o => logical_y_net_x31
    );

  or_8_way_775200607f: entity work.or_8_way_entity_bcf741cbd1
    port map (
      a1 => logical_y_net_x39,
      a8 => logical_y_net_x49,
      in1 => logical_y_net_x40,
      in2 => logical_y_net_x41,
      in3 => logical_y_net_x38,
      in4 => logical_y_net_x42,
      in5 => logical_y_net_x47,
      in6 => logical_y_net_x48,
      o => logical_y_net_x52
    );

  relational: entity work.relational_2147430058
    port map (
      a => h_counter_op_net,
      b => hmax_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_2147430058
    port map (
      a => v_counter_op_net,
      b => vmax_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational10: entity work.relational_6dfa374756
    port map (
      a => addsub_s_net_x1,
      b => mux2_y_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational10_op_net
    );

  relational11: entity work.relational_469cc61240
    port map (
      a => h_counter_op_net,
      b => h_area_r_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational11_op_net
    );

  relational12: entity work.relational_469cc61240
    port map (
      a => v_counter_op_net,
      b => v_area_b_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational12_op_net
    );

  relational13: entity work.relational_65e1e2b39e
    port map (
      a => v_counter_op_net,
      b => v_area_t_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational13_op_net
    );

  relational2: entity work.relational_65e1e2b39e
    port map (
      a => h_counter_op_net,
      b => hfp_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_023fa67b0f
    port map (
      a => h_counter_op_net,
      b => hsp_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  relational4: entity work.relational_65e1e2b39e
    port map (
      a => v_counter_op_net,
      b => vfp_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  relational5: entity work.relational_023fa67b0f
    port map (
      a => v_counter_op_net,
      b => vsp_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

  relational6: entity work.relational_469cc61240
    port map (
      a => h_counter_op_net,
      b => hlines_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational6_op_net
    );

  relational7: entity work.relational_dbe111ba13
    port map (
      a => v_counter_op_net,
      b => vlines_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational7_op_net
    );

  relational8: entity work.relational_469cc61240
    port map (
      a => v_counter_op_net,
      b => vlines1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational8_op_net
    );

  relational9: entity work.relational_65e1e2b39e
    port map (
      a => h_counter_op_net,
      b => h_area_l_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational9_op_net
    );

  subsystem2_e91ba37901: entity work.subsystem2_entity_e91ba37901
    port map (
      in1 => delay_q_net_x0,
      out1 => relational10_op_net_x3,
      out10 => relational22_op_net_x3,
      out11 => relational23_op_net_x3,
      out12 => relational24_op_net_x3,
      out13 => relational25_op_net_x3,
      out14 => relational26_op_net_x3,
      out15 => relational27_op_net_x3,
      out16 => relational28_op_net_x3,
      out2 => relational15_op_net_x3,
      out3 => relational16_op_net_x3,
      out4 => relational17_op_net_x3,
      out5 => relational18_op_net_x3,
      out6 => relational19_op_net_x3,
      out7 => relational20_op_net_x3,
      out8 => relational21_op_net_x3,
      out9 => relational14_op_net_x3
    );

  v_area_b: entity work.constant_5ca7b209b4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => v_area_b_op_net
    );

  v_area_t: entity work.constant_2c80e0cf34
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => v_area_t_op_net
    );

  v_area_t1: entity work.constant_2c80e0cf34
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => v_area_t1_op_net
    );

  v_counter: entity work.counter_e54d511037
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      en(0) => relational_op_net,
      rst(0) => relational1_op_net,
      op => v_counter_op_net
    );

  vfp: entity work.constant_4b543782ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => vfp_op_net
    );

  vlines: entity work.constant_acc9e2a12f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => vlines_op_net
    );

  vlines1: entity work.constant_acc9e2a12f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => vlines1_op_net
    );

  vmax: entity work.constant_202f0899af
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => vmax_op_net
    );

  vsp: entity work.constant_3b201e2f77
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => vsp_op_net
    );

  wr1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => wr1_op_net
    );

  wr2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => wr2_op_net
    );

  x16_and_ea23de8e0a: entity work.x16_and_entity_7d8d1ce640
    port map (
      a1 => slice_y_net_x3,
      a16 => slice2_y_net_x4,
      b1 => relational10_op_net_x3,
      b10 => relational22_op_net_x3,
      b11 => relational23_op_net_x3,
      b12 => relational24_op_net_x3,
      b13 => relational25_op_net_x3,
      b14 => relational26_op_net_x3,
      b15 => relational27_op_net_x3,
      b16 => relational28_op_net_x3,
      b2 => relational15_op_net_x3,
      b3 => relational16_op_net_x3,
      b4 => relational17_op_net_x3,
      b5 => relational18_op_net_x3,
      b6 => relational19_op_net_x3,
      b7 => relational20_op_net_x3,
      b8 => relational21_op_net_x3,
      b9 => relational14_op_net_x3,
      in11 => slice6_y_net_x3,
      in13 => slice7_y_net_x3,
      in15 => slice8_y_net_x3,
      in17 => slice9_y_net_x4,
      in19 => slice10_y_net_x4,
      in21 => slice11_y_net_x4,
      in23 => slice12_y_net_x4,
      in25 => slice13_y_net_x4,
      in27 => slice14_y_net_x4,
      in29 => slice15_y_net_x4,
      in3 => slice1_y_net_x3,
      in5 => slice3_y_net_x3,
      in7 => slice4_y_net_x3,
      in9 => slice5_y_net_x3,
      o1 => logical_y_net_x39,
      o16 => logical_y_net_x46,
      o2 => logical_y_net_x38,
      o3 => logical_y_net_x40,
      out10 => logical_y_net_x51,
      out11 => logical_y_net_x29,
      out12 => logical_y_net_x43,
      out13 => logical_y_net_x44,
      out14 => logical_y_net_x45,
      out15 => logical_y_net_x30,
      out4 => logical_y_net_x41,
      out5 => logical_y_net_x42,
      out6 => logical_y_net_x47,
      out7 => logical_y_net_x48,
      out8 => logical_y_net_x49,
      out9 => logical_y_net_x50
    );

  x8_and_f888b1471d: entity work.x8_and_entity_f888b1471d
    port map (
      a1 => logical6_y_net_x16,
      b1 => slice9_y_net_x3,
      b2 => slice10_y_net_x3,
      b3 => slice11_y_net_x3,
      b4 => slice12_y_net_x3,
      b5 => slice13_y_net_x3,
      b6 => slice14_y_net_x3,
      b7 => slice15_y_net_x3,
      b8 => slice2_y_net_x3,
      o1 => logical_y_net_x12,
      o2 => logical_y_net_x11,
      o3 => logical_y_net_x13,
      o8 => logical_y_net_x18,
      out4 => logical_y_net_x14,
      out5 => logical_y_net_x15,
      out6 => logical_y_net_x16,
      out7 => logical_y_net_x17
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "Keyboard_dino_Computer_V12"

entity keyboard_dino_computer_v12 is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_20: in std_logic; 
    ce_50000000: in std_logic; 
    ce_8: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_20: in std_logic; 
    clk_50000000: in std_logic; 
    clk_8: in std_logic; 
    g18: in std_logic; 
    p11: in std_logic; 
    r12: in std_logic; 
    r17: in std_logic; 
    blue: out std_logic_vector(1 downto 0); 
    gateway_out: out std_logic; 
    green: out std_logic_vector(2 downto 0); 
    hs: out std_logic; 
    red: out std_logic_vector(2 downto 0); 
    vs: out std_logic
  );
end keyboard_dino_computer_v12;

architecture structural of keyboard_dino_computer_v12 is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "Keyboard_dino_Computer_V12,sysgen_core,{clock_period=20.00000000,clocking=Clock_Enables,compilation=HDL_Netlist,sample_periods=1.00000000000 2.00000000000 8.00000000000 20.00000000000 50000000.00000000000,testbench=0,total_blocks=27146,xilinx_adder_subtracter_block=4,xilinx_arithmetic_relational_operator_block=38,xilinx_bit_slice_extractor_block=201,xilinx_black_box_block=75,xilinx_bus_concatenator_block=12,xilinx_bus_multiplexer_block=4,xilinx_constant_block_block=60,xilinx_constant_multiplier_block=3,xilinx_counter_block=6,xilinx_delay_block=22,xilinx_dual_port_random_access_memory_block=3,xilinx_gateway_in_block=4,xilinx_gateway_out_block=6,xilinx_inverter_block=8,xilinx_logical_block_block=2939,xilinx_register_block=6,xilinx_serial_to_parallel_converter_block=1,xilinx_system_generator_block=1,xilinx_type_converter_block=84,xilinx_up_sampler_block=2,}";

  signal addsub_s_net_x1: std_logic_vector(12 downto 0);
  signal blue_net: std_logic_vector(1 downto 0);
  signal ce_1_sg_x28: std_logic;
  signal ce_20_sg_x2: std_logic;
  signal ce_2_sg_x1: std_logic;
  signal ce_50000000_sg_x2: std_logic;
  signal ce_8_sg_x2: std_logic;
  signal clk_1_sg_x28: std_logic;
  signal clk_20_sg_x2: std_logic;
  signal clk_2_sg_x1: std_logic;
  signal clk_50000000_sg_x2: std_logic;
  signal clk_8_sg_x2: std_logic;
  signal concat7_y_net_x2: std_logic_vector(15 downto 0);
  signal convert1_dout_net_x16: std_logic;
  signal convert_dout_net_x1: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal g18_net: std_logic;
  signal gateway_out_net: std_logic;
  signal green_net: std_logic_vector(2 downto 0);
  signal hs_net: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical_y_net_x4: std_logic;
  signal p11_net: std_logic;
  signal r12_net: std_logic;
  signal r17_net: std_logic;
  signal red_net: std_logic_vector(2 downto 0);
  signal register1_q_net_x3: std_logic_vector(7 downto 0);
  signal vs_net: std_logic;

begin
  ce_1_sg_x28 <= ce_1;
  ce_2_sg_x1 <= ce_2;
  ce_20_sg_x2 <= ce_20;
  ce_50000000_sg_x2 <= ce_50000000;
  ce_8_sg_x2 <= ce_8;
  clk_1_sg_x28 <= clk_1;
  clk_2_sg_x1 <= clk_2;
  clk_20_sg_x2 <= clk_20;
  clk_50000000_sg_x2 <= clk_50000000;
  clk_8_sg_x2 <= clk_8;
  g18_net <= g18;
  p11_net <= p11;
  r12_net <= r12;
  r17_net <= r17;
  blue <= blue_net;
  gateway_out <= gateway_out_net;
  green <= green_net;
  hs <= hs_net;
  red <= red_net;
  vs <= vs_net;

  clk_sel_c42c01b52e: entity work.clk_sel_entity_c42c01b52e
    port map (
      ce_1 => ce_1_sg_x28,
      ce_20 => ce_20_sg_x2,
      ce_50000000 => ce_50000000_sg_x2,
      clk_1 => clk_1_sg_x28,
      clk_20 => clk_20_sg_x2,
      clk_50000000 => clk_50000000_sg_x2,
      sel_clk => g18_net,
      clk => convert1_dout_net_x16
    );

  computer_423aa40c4b: entity work.computer_entity_423aa40c4b
    port map (
      ce_1 => ce_1_sg_x28,
      clk => convert1_dout_net_x16,
      clk_1 => clk_1_sg_x28,
      key_wr_en => logical_y_net_x4,
      reset => r17_net,
      scan_code => register1_q_net_x3,
      c_addr_vga => addsub_s_net_x1,
      c_data_vga => concat7_y_net_x2,
      relational2_x0 => gateway_out_net,
      wr_scr => logical1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_50000000_sg_x2,
      clk => clk_50000000_sg_x2,
      clr => '0',
      din => counter_op_net,
      en => "1",
      dout => convert_dout_net_x1
    );

  counter: entity work.xlcounter_free_Keyboard_dino_Computer_V12
    generic map (
      core_name0 => "cntr_11_0_a80ae8f33755e346",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_50000000_sg_x2,
      clk => clk_50000000_sg_x2,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  keyboard_driver_219ad70251: entity work.keyboard_driver_entity_219ad70251
    port map (
      ce_1 => ce_1_sg_x28,
      ce_8 => ce_8_sg_x2,
      clk_1 => clk_1_sg_x28,
      clk_8 => clk_8_sg_x2,
      ps2_c => r12_net,
      ps2_d => p11_net,
      key_wr_en_pe => logical_y_net_x4,
      scan_code_8bit => register1_q_net_x3
    );

  vga_driver_731d9bfbd4: entity work.vga_driver_entity_731d9bfbd4
    port map (
      addr_vga => addsub_s_net_x1,
      c_data_vga => concat7_y_net_x2,
      ce_1 => ce_1_sg_x28,
      ce_2 => ce_2_sg_x1,
      clk_1 => clk_1_sg_x28,
      clk_2 => clk_2_sg_x1,
      color => convert_dout_net_x1,
      wr_scr => logical1_y_net_x1,
      concat1_x0 => red_net,
      concat2_x0 => green_net,
      concat3_x0 => blue_net,
      inverter1_x0 => vs_net,
      inverter_x0 => hs_net
    );

end structural;
