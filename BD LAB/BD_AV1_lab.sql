DROP DATABASE IF EXISTS AV1;
CREATE DATABASE AV1;
USE AV1;

#COMANDO PARA DESATIVAR O SAFE MODE
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE IF NOT EXISTS Personagem (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    linhagem VARCHAR(50) NOT NULL,
    classe VARCHAR(50) NOT NULL,
    arma VARCHAR(50) NOT NULL,
    proficiencia VARCHAR(50) NOT NULL,
    idade INT NOT NULL
);
# Responda aqui a letra A
insert into Personagem (id, nome, linhagem, classe, arma, proficiencia,idade) values ('1','Grog','golias','bárbaro', 'espada','atletismo','40');
insert into Personagem (id, nome, linhagem, classe, arma, proficiencia,idade) values ('2','Keyleth','meio-elfo','druida', 'cajado','natureza','23');
insert into Personagem (id, nome, linhagem, classe, arma, proficiencia,idade) values ('3','Pike','gnomo','clerigo','martelo','religião','30');
insert into Personagem (id, nome, linhagem, classe, arma, proficiencia,idade) values ('4','Taryon','humano','artífice', 'pistola','tecnologia','29');
insert into Personagem (id, nome, linhagem, classe, arma, proficiencia,idade) values ('5','Scanlan','gnomo','bardo', 'flauta','atuação','66');
insert into Personagem (id, nome, linhagem, classe, arma, proficiencia,idade) values ('6','Tiberius','draconato','feiticeiro', 'cajado','arcanismo','28');
select *from Personagem;
# Responda aqui a letra B
UPDATE Personagem SET idade = '24' WHERE nome = 'Keyleth';
# Responda aqui a letra C
select id, nome, linhagem, classe, arma, proficiencia,idade FROM Personagem where arma='cajado';
# Responda aqui a letra D
DELETE from Personagem where classe='artífice';
# Responda aqui a letra E
select * from Personagem  where linhagem ='gnomo';
# Responda aqui a letra F
SELECT MAX(idade) AS maior_idade FROM Personagem;

# Responda aqui a letra G

update Personagem set proficiencia='natação' where id='1';
update Personagem set proficiencia='natação' where id='3';

# Responda aqui a letra H
SELECT * FROM Personagem WHERE nome LIKE 'Ti___%' and LENGTH(nome)=6;


# Responda aqui a letra I
select * from Personagem where idade>='30';