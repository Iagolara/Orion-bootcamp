SELECT 
a.nome AS nome_aluno,
c.nome_curso AS nome_curso 
FROM alunos a   
INNER JOIN cursos c ON a.curso_id = c.id;

SELECT
a.nome AS nome_aluno,
c.nome_curso AS nome_curso
FROM alunos a
INNER JOIN cursos c ON a.curso_id = c.id
WHERE c.nome_curso = 'Ciência da Computação';

UPDATE alunos a
SET curso_id = 2
FROM cursos c
WHERE a.nome = 'Joao' AND c.nome_curso = 'Ciência da Computação';

SELECT 
    c.nome_curso AS nome_curso
FROM cursos c
LEFT JOIN alunos a ON c.id = a.curso_id
GROUP BY c.id, c.nome_curso
HAVING COUNT(a.id) = 0;