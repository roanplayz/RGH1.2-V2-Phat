library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- pentanand module

entity penta_nand is
	Port (
		RST : in STD_LOGIC;
		BUT : in STD_LOGIC;
		CLK : in STD_LOGIC;
		CES : out STD_LOGIC := '1';
		CED : out STD_LOGIC := '1';
		CET : out STD_LOGIC := '1';
		CEQ : out STD_LOGIC := '1';
		CEP : out STD_LOGIC := '1';
		SMC : out STD_LOGIC := 'Z';
		DBG : out STD_LOGIC := '0'
	);
end penta_nand;

architecture arch of pentanand is

signal counter : integer range 0 to 7 := 0;
signal counter_smc : integer range 0 to 1 := 0;
signal counter_dbg : unsigned(5 downto 0) := (others => '0');
signal switch : integer range 0 to 4 :=0;
signal pre_sw : integer range 0 to 4 :=0;
signal m_CES : STD_LOGIC := '1';
signal m_CED : STD_LOGIC := '0';
signal m_CET : STD_LOGIC := '0';
signal m_CEQ : STD_LOGIC := '0';
signal m_CEP : STD_LOGIC := '0';

begin

process (m_CES, m_CED, m_CET, m_CEQ, m_CEP) is
begin
	if (m_CES = '0') then
		CES <= 'Z';
	else
		CES <= '0';
	end if;
	
	if (m_CED = '0') then
		CED <= 'Z';
	else
		CED <= '0';
	end if;
	
	if (m_CET = '0') then
		CET <= 'Z';
	else
		CET <= '0';
	end if;
	
	if (m_CEQ = '0') then
		CEQ <= 'Z';
	else
		CEQ <= '0';
	end if;
	
	if (m_CEP = '0') then
		CEP <= 'Z';
	else
		CEP <= '0';
	end if;
end process;

process (CLK, counter_dbg) is
begin
	if (rising_edge(CLK)) then
		pre_sw <= switch;
		
		-- button holding processing
		if (BUT = '1') then
			counter <= 0;
		else
			if (RST = '0' and counter /= 7 and to_integer(counter_dbg) = 0) then
				counter <= counter + 1;
			else
				if (RST = '0' and counter = 7) then
					counter <= 0;
					if (switch = 0) then
						switch <= 1;
					elsif (switch = 1) then
						switch <= 2;
					elsif (switch = 2) then
						switch <= 3;
					elsif (switch = 3) then
						switch <= 4;
					else
						switch <= 0;
					end if;
				end if;
			end if;
		end if;
		
		-- blinking processing
		if (pre_sw /= switch) then
			if (switch = 0) then
				m_CES <= '1';
				m_CED <= '0';
				m_CET <= '0';
				m_CEQ <= '0';
				m_CEP <= '0';
				counter_dbg <= b"00111";
				counter_smc <= 1;
			elsif (switch = 1) then
				m_CES <= '0';
				m_CED <= '1';
				m_CET <= '0';
				m_CEQ <= '0';
				m_CEP <= '0';
				counter_dbg <= b"01111";
				counter_smc <= 1;
			elsif (switch = 2) then
				m_CES <= '0';
				m_CED <= '0';
				m_CET <= '1';
				m_CEQ <= '0';
				m_CEP <= '0';
				counter_dbg <= b"10111";
				counter_smc <= 1;
			elsif (switch = 3) then
				m_CES <= '0';
				m_CED <= '0';
				m_CET <= '0';
				m_CEQ <= '1';
				m_CEP <= '0';
				counter_dbg <= b"11111";
				counter_smc <= 1;
			else
				m_CES <= '0';
				m_CED <= '0';
				m_CET <= '0';
				m_CEQ <= '0';
				m_CEP <= '1';
				counter_dbg <= b"111111";
				counter_smc <= 1;
			end if;
		end if;
		
		-- smc reset to finish the switching
		if (counter_smc /= 0) then
			counter_smc <= counter_smc - 1;
			SMC <= '0';
		else
			SMC <= 'Z';
		end if;
		
		-- blinking counter
		if (counter_dbg /= 0) then
			counter_dbg <= counter_dbg - 1;
		end if;
	end if;
	
	DBG <= counter_dbg(2);
end process;

end arch;
