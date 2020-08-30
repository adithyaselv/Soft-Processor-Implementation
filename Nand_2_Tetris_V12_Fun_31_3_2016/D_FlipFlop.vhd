library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FlipFlop is
	Port (D,Clk,En:in STD_LOGIC; Q:out STD_LOGIC );
end D_FlipFlop;



architecture Behavioral of D_FlipFlop is
signal Qint:STD_LOGIC; 

begin
Q<=Qint;

process(Clk,En)

begin 
if En='1' and Clk' event and Clk='0' then
Qint<=D;
end if;

end process;

end Behavioral;
