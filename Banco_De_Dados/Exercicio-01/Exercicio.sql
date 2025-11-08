CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
);
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO cursos (nome_curso) VALUES
('Engenharia de Software'),
('Ciência da Computação'),
('Sistemas de Informação');


INSERT INTO alunos(nome, email, curso_id) VALUES
('Iago', 'iago@email.com', 1),
('Joao', 'joao@email.com', 1),
('Leandro', 'leandro@email.com', 2),
('Maria', 'maria@email.com', 3);

SELECT * FROM alunos;