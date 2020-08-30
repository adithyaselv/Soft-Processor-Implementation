
-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component keyboard_dino_computer_v12_cw  port (
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
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : keyboard_dino_computer_v12_cw
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
-- INST_TAG_END ------ End INSTANTIATION Template ------------
