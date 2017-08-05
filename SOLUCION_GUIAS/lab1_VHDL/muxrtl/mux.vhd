library ieee;
USE ieee.std_logic_1164.all;

entity mux is
  port (
    x,y : in  std_logic;
    s   : in  std_logic;
    m   : out std_logic
  );
end entity;

--architecture RTL of mux is
--begin
--  m<=(x and not (s)) or (y and s);
--end architecture;

architecture  BEHAVIORAL of  mux is

 
begin
  MUX : process(x,y,s)
  begin
    if (s='0') then
      m<=x;
    else
      m<=y;  
    end if;

  end process;

end architecture;
