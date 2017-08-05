library ieee;
use ieee.std_logic_1164.all;

entity part_5 is
  port (
  SW      : IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
  HEX0_D  : OUT STD_LOGIC_VECTOR(0 TO 6)
  );
end entity;

architecture part_5 of part_5 is

  component mux_3_bit_5_to_1
    port (
      S,U,V,W,X,Y : IN  STD_LOGIC_VECTOR(2 downto 0);
      M           : OUT STD_LOGIC_VECTOR(2 DOWNTO 0 )
    );
  END component;

  component char_7seg
    port(
      C : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
      Display : OUT STD_LOGIC_VECTOR(0 to 6)
    );
  end component;

  signal M :  STD_LOGIC_VECTOR(2 DOWNTO 0);

begin
  M0: mux_3_bit_5_to_1 PORT MAP (
                  SW(17 DOWNTO 15),
                  SW(14 DOWNTO 12),
                  SW(11 DOWNTO 9),
                  SW(8 DOWNTO 6),
                  SW(5 DOWNTO 3),
                  SW(2 DOWNTO 0),
                  M);

  H0: char_7seg PORT MAP (M, HEX0);

end architecture;
