LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;  -- Tipo de sinal STD_LOGIC e STD_LOGIC_VECTOR
USE IEEE.STD_LOGIC_ARITH.ALL;  -- Operacoes aritmeticas sobre binarios
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL; -- Componente de memoria

ENTITY Ifetch IS
	PORT(clock, reset:  IN STD_LOGIC;
		  PC_out		  :  OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		  instruction :  OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Ifetch;

ARCHITECTURE behavior OF Ifetch IS
SIGNAL next_pc, pc, pc_inc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mem_addr 				: STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN
	-- Descricao da Memoria
	data_memory: altsyncram -- Declaracao do compomente de memoria
	GENERIC MAP(
		operation_mode	=> "ROM",
		width_a			=> 32, -- tamanho da palavra (Word)
		widthad_a		=> 8,   -- tamanho do barramento de endereco
		lpm_type			=> "altsyncram",
		outdata_reg_a	=> "UNREGISTERED",
		init_file		=> "program.mif",  -- arquivo com estado inicial
		intended_device_family => "Cyclone")
	PORT MAP(
		address_a	=> mem_addr,
		q_a			=> instruction,
		clock0		=> clock);  -- sinal de clock da memoria
	
	-- Descricao do somador (soma 1 palavra)
	pc_inc <= pc + 4;
	
	-- Descricao do registrador (32 bits)
	PROCESS(clock, reset)
	BEGIN
		IF (reset = '1') THEN
			pc <= X"00000000";
		ELSIF (clock'event AND clock = '1') THEN
			pc <= next_pc;
		END IF;
	END PROCESS;
	
	-- <Inserir qualquer codigo adicional para interligar as partes: registrador, 
	-- somador e memoria atraves dos sinais internos>
	
	next_pc <= X"00000000" WHEN reset = '1' ELSE pc_inc;
	
	pc_out <= pc(9 DOWNTO 2);
	mem_addr <= next_pc(9 DOWNTO 2);
	

END behavior;
