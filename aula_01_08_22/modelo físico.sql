CREATE DATABASE projeto;
USE projeto;


CREATE TABLE usuarios (
 id_usu int PRIMARY KEY AUTO_INCREMENT,
email varchar(255),
 cpf varchar(14),
 tiipo int,
 senha varchar(255),
 nome varchar(255)
);

CREATE TABLE  curriculo (
 id_curr int PRIMARY KEY AUTO_INCREMENT,
 email varchar(255),
 curso varchar(255),
 tel varchar(14),
 nome varchar(255)
);

CREATE TABLE  competencias (
 id_comp int PRIMARY KEY AUTO_INCREMENT,
 competencia varchar(255),
 id_curr int,
FOREIGN KEY( id_curr) REFERENCES  curriculo (id_curr)
);

CREATE TABLE  habilidades (
 id_habi int PRIMARY KEY AUTO_INCREMENT,
 habilidade varchar(255),
 id_curr int,
FOREIGN KEY( id_curr) REFERENCES  curriculo (id_curr)
);

CREATE TABLE  educacao (
 id_educ int PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
 inicio date,
 fim date,
 instituicao varchar(255),
 id_curr int,
FOREIGN KEY( id_curr) REFERENCES  curriculo (id_curr)
);

CREATE TABLE  experiencia (
 id_expe int PRIMARY KEY AUTO_INCREMENT,
 ocupacao varchar(255),
 inicio date,
 fim date,
 empresa varchar(255),
 id_curr int,
FOREIGN KEY( id_curr) REFERENCES  curriculo (id_curr)
);

