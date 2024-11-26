DROP DATABASE IF EXISTS Projeto_Final;
CREATE DATABASE IF NOT EXISTS Projeto_Final;
USE Projeto_Final;


-- Criação das tabelas
CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15),
    data_nascimento DATE
);

CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15),
    especialidade VARCHAR(50)
);

CREATE TABLE Instrumentos (
    id_instrumento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50),
    descricao TEXT
);

CREATE TABLE Aulas (
    id_aula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    id_instrumento INT NOT NULL,
    data_aula DATE NOT NULL,
    horario TIME NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor),
    FOREIGN KEY (id_instrumento) REFERENCES Instrumentos(id_instrumento)
);

-- Inserts nas tabelas
INSERT INTO Alunos (nome, email, telefone, data_nascimento) VALUES 
('Carlos Silva', 'carlos@email.com', '11999998888', '2000-05-12'),
('Ana Beatriz', 'ana@email.com', '11988887777', '1998-03-23'),
('João Pedro', 'joao@email.com', '11977776666', '2002-10-14'),
('Mariana Oliveira', 'mariana@email.com', '11966665555', '1995-08-19'),
('Lucas Souza', 'lucas@email.com', '11955554444', '2001-12-01');

INSERT INTO Professores (nome, email, telefone, especialidade) VALUES 
('Marcos Pereira', 'marcos@email.com', '21944443333', 'Violão'),
('Fernanda Costa', 'fernanda@email.com', '21933332222', 'Piano'),
('Ricardo Lima', 'ricardo@email.com', '21922221111', 'Bateria'),
('Juliana Alves', 'juliana@email.com', '21911110000', 'Guitarra'),
('Thiago Santos', 'thiago@email.com', '21999990000', 'Baixo');

INSERT INTO Instrumentos (nome, tipo, descricao) VALUES 
('Violão Acústico', 'Cordas', 'Instrumento de seis cordas para iniciantes'),
('Piano Digital', 'Teclas', 'Piano compacto para uso em aulas'),
('Bateria Eletrônica', 'Percussão', 'Modelo digital com pads ajustáveis'),
('Guitarra Elétrica', 'Cordas', 'Instrumento versátil para diversos estilos'),
('Baixo Elétrico', 'Cordas', 'Instrumento para acompanhamento rítmico');

INSERT INTO Aulas (id_aluno, id_professor, id_instrumento, data_aula, horario, descricao) VALUES 
(1, 1, 1, '2024-11-21', '10:00:00', 'Aula introdutória para iniciantes'),
(2, 2, 2, '2024-11-21', '11:00:00', 'Revisão de técnicas intermediárias'),
(3, 3, 3, '2024-11-22', '09:00:00', 'Aula avançada de ritmo e coordenação'),
(4, 4, 4, '2024-11-22', '10:30:00', 'Introdução a solos de guitarra'),
(5, 5, 5, '2024-11-23', '14:00:00', 'Acompanhamento rítmico para bandas');

-- Updates nas tabelas
UPDATE Alunos SET telefone = '11999997777' WHERE id_aluno = 1;
UPDATE Professores SET especialidade = 'Violino' WHERE id_professor = 1;
UPDATE Instrumentos SET descricao = 'Modelo para alunos intermediários' WHERE id_instrumento = 1;
UPDATE Aulas SET descricao = 'Aula básica para adaptação' WHERE id_aula = 5;
UPDATE Aulas SET data_aula = '2024-11-25' WHERE id_aula = 3;

-- Deletes nas tabelas
DELETE FROM Aulas WHERE id_aula = 5;
DELETE FROM Alunos WHERE id_aluno = 5;
DELETE FROM Instrumentos WHERE id_instrumento = 5;

-- Selects com Join
SELECT a.nome AS Nome_Aluno, p.nome AS Nome_Professor, i.nome AS Nome_Instrumento, au.descricao
FROM Aulas au
JOIN Alunos a ON au.id_aluno = a.id_aluno
JOIN Professores p ON au.id_professor = p.id_professor
JOIN Instrumentos i ON au.id_instrumento = i.id_instrumento;

SELECT a.nome AS Nome_Aluno, au.data_aula, au.horario, au.descricao
FROM Aulas au
JOIN Alunos a ON au.id_aluno = a.id_aluno
WHERE au.data_aula = '2024-11-21';

SELECT p.nome AS Nome_Professor, COUNT(au.id_aula) AS Total_Aulas
FROM Aulas au
JOIN Professores p ON au.id_professor = p.id_professor
GROUP BY p.nome;

-- Criação de uma View
CREATE VIEW View_Aulas_Alunos AS
SELECT a.nome AS Nome_Aluno, p.nome AS Nome_Professor, i.nome AS Nome_Instrumento, au.data_aula, au.horario, au.descricao
FROM Aulas au
JOIN Alunos a ON au.id_aluno = a.id_aluno
JOIN Professores p ON au.id_professor = p.id_professor
JOIN Instrumentos i ON au.id_instrumento = i.id_instrumento;

-- Select na View
SELECT * FROM View_Aulas_Alunos;
