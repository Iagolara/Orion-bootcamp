
DROP TABLE IF EXISTS alunos;
DROP TABLE IF EXISTS cursos;

CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL
);


CREATE TABLE alunos (
    id INT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);


INSERT INTO cursos (id, nome_curso) VALUES
(1, 'Engenharia de Software'),
(2, 'Ciência da Computação'),
(3, 'Sistemas de Informação');


INSERT INTO alunos (id, nome, email, curso_id) VALUES
(101, 'Iago', 'iago@email.com', 1),
(102, 'Joao', 'joao@email.com', 1),
(103, 'Leandro', 'leandro@email.com', 2),
(104, 'Maria', 'maria@email.com', 3);


SELECT * FROM alunos;