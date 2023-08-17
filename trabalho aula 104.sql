CREATE DATABASE senai_bp;

USE senai_bp;

CREATE TABLE cursos (
cod_curso INT,
nome_curso VARCHAR(100),
PRIMARY KEY (cod_curso)
);

 drop table cursos;
 
CREATE TABLE alunos (
cod_aluno INT, 
nome VARCHAR(45),
sobrenome VARCHAR(45),
data_nascimento DATE,
cod_curso INT,
PRIMARY KEY (cod_aluno),
FOREIGN KEY (cod_curso)
REFERENCES cursos (cod_curso)
);

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('101','introdução ao desenvolvimento de projetos');

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('102','inglês tecnico aplicado ao desenvolvimento de sistemas');

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('103','higiene do alimento: microbiologia de alimentos');

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('104','ferramentas digitais de gestão');

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('105','introducão a iot para manutancaõ indrustrial' );

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('106','introducao a industria 4.0');

INSERT INTO cursos (cod_curso, nome_curso)
VALUES ('107','adiministrador de banco de dados');

INSERT INTO alunos (cod_curso, cod_aluno, nome, data_nascimento)
VALUES ('107','1100', 'maria izabel de oliveira barbosa','2005-08-13' );

SELECT * from alunos
WHERE data_nascimento > '1998-12-31'
ORDER BY data_nascimento;

SELECT COUNT(*) from alunos
WHERE DATE_ADD(data_nascimento, INTERVAl 18 YEAR) > CURDATE();

SELECT COUNT(*) from cursos AS QuantidadeDeCursos;

SELECT from cursos  
 Cursos_Nome AS Curso, COUNT(Alunos.ID) AS QuantidadeDeAlunos
JOIN Alunos ON Cursos.ID = Alunos.CursoID
GROUP BY Cursos.Nome;

































































