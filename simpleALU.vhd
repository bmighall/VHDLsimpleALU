----------------------------------------------------------------------------------
-- University of Mississippi El E 386
-- Lab 6 
-- Engineer: Ben Mighall
--
-- This program runs a simple "ALU"-type system that compares two 4-bit numbers from two sets of four switches
-- (Number A is switches 12-15; number B is switches 8-11), reads a 2-bit opcode from switches 0 and 1,
-- and then performs operations depending on the opcode.
-- The result is then displayed in binary format on LEDs 4 through 0.
-- 
-- Switch 1 and 0 digits (operations): 00 = add; 01 = subtract; 10 = and; 11 = or
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity simpleALU is
    Port ( SW : in STD_LOGIC_VECTOR (15 downto 0);
           LED : out STD_LOGIC_VECTOR (4 downto 0));
end simpleALU;

architecture Behavioral of simpleALU is

begin

P1:process(SW(1 downto 0), SW(15 downto 12), SW(11 downto 8))
begin

case SW(1 downto 0)is
    when "00" =>
       LED (4 downto 0) <= ((SW(15 downto 12) + "00000") + (SW(11 downto 8) + "00000"));
    when "01" =>
       LED (4 downto 0) <= ((SW(15 downto 12) - SW(11 downto 8)) + "00000");
    when "10" =>
       LED (4 downto 0) <= ((SW(15 downto 12) AND SW(11 downto 8)) + "00000");
    when "11" =>
       LED (4 downto 0) <= ((SW(15 downto 12) OR SW(11 downto 8)) + "00000");
end case;

end process;
end Behavioral;

