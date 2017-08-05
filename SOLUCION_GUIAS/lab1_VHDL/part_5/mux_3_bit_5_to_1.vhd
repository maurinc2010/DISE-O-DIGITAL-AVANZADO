LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux_3_bit_5_to_1 IS
PORT (
  S, U, V, W, X, Y: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
  M : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END mux_3_bit_5_to_1;

architecture mux_3_bit_5_to_1 of mux_3_bit_5_to_1 is
  component mux_2_to_1
port (
      Y,X : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
      S : IN  STD_LOGIC;
      M : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
end component mux_2_to_1;


  signal  S1,S2,S3 :  STD_LOGIC_VECTOR(2 DOWNTO 0);

begin
mux_2_to_1_1 : mux_2_to_1
  port map (
    Y => U,
    X => V,
    S => S(0),
    M => S1
  );

mux_2_to_1_2 : mux_2_to_1
  port map (
    Y => W,
    X => X,
    S => S(0),
    M => S2
  );

mux_2_to_1_3 : mux_2_to_1
  port map (
    Y => S1,
    X => S2,
    S => S(1),
    M => S3
  );

  mux_2_to_1_4 : mux_2_to_1
  port map (
    Y => S3,
    X => Y,
    S => S(2),
    M => M
  );






end architecture;
