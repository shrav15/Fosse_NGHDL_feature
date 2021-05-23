library ieee;
use ieee.std_logic_1164.all;
entity comp is 
port (
    in1,in2:in std_logic_vector (3 downto 0);
    out1,out2,out3 : out std_logic
);
end comp;
-- digital/ Magnitude comparator 
-- it gives three output out1,out2,out3 
-- out1 means A>B , out2 means A=B and out3 means A<B
architecture comp_arc of comp is 
begin
process(in1,in2)
begin 
if (in1>in2) then 
    out1 <='1' ;
    out2 <= '0';
    out3 <= '0';
    
elsif (in1=in2) then 
    out1 <='0' ;
    out2 <= '1';
    out3 <= '0';
    
else 
    out1 <='0' ;
    out2 <= '0';
    out3 <= '1';
    

   

end if ;
end process;
end comp_arc;
