----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keyboard_dino_computer_v12_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
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
end keyboard_dino_computer_v12_cw_stub;

architecture Behavioral of keyboard_dino_computer_v12_cw_stub is

  component keyboard_dino_computer_v12_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
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
  end component;
begin

keyboard_dino_computer_v12_cw_i : keyboard_dino_computer_v12_cw
  port map (
    ce => ce,
    clk => clk,
    g18 => g18,
    p11 => p11,
    r12 => r12,
    r17 => r17,
    blue => blue,
    gateway_out => gateway_out,
    green => green,
    hs => hs,
    red => red,
    vs => vs);
end Behavioral;

