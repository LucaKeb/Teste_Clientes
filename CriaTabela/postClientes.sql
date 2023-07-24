CREATE TABLE clientes (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	cpf VARCHAR(11) UNIQUE,
	logradouro VARCHAR(40),
	bairro VARCHAR(40),
	uf VARCHAR(2),
	nascimento DATE,
	cep VARCHAR(8),
	telefone VARCHAR(11)
);