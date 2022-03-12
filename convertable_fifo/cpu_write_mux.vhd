----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:35:48 03/12/2022 
-- Design Name: 
-- Module Name:    cpu_write_mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cpu_write_mux is
    Port ( cpu_write : in  STD_LOGIC;
           cpu_addr : in  STD_LOGIC_VECTOR (63 downto 0);
           cpu_write_tail : in  STD_LOGIC;
           cpu_write_head : in  STD_LOGIC;
           cpu_done : in  STD_LOGIC);
end cpu_write_mux;

architecture Behavioral of cpu_write_mux is

begin


end Behavioral;

