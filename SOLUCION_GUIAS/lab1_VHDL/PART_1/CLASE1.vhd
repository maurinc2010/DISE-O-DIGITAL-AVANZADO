library ieee;
use ieee.std_logic_1164.all;

entity  CLASE1 is
  port (
    SW   : in   std_logic_vector(17 downto 0);
    LEDR : out  std_logic_vector(17 downto 0)
  );
end entity;

architecture RTL of CLASE1 is
begin
  LEDR<=SW;
end architecture;
