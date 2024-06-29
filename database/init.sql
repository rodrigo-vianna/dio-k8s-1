CREATE TABLE mensagens (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL,
    comentario VARCHAR(255) NOT NULL
);