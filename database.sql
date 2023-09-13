CREATE DATABASE IF NOT EXISTS sistema_ecommerce;

USE sistema_ecommerce;

CREATE TABLE IF NOT EXISTS producto (
    codpro int not null AUTO_INCREMENT,
    nompro varchar(50) null,
    despro varchar(100) null,
    prepro decimal(6,2) null,
    estado int null,
    rutimapro varchar(50) null,
    CONSTRAINT pk_producto PRIMARY KEY (codpro)
);

INSERT INTO producto (nompro, despro, prepro, estado, rutimapro)
VALUES ('Crepe Paper', 'Ideal for decorating school work', 14.99, 1, 'crepe.jpg'),
        ('A4 Bond Paper', '180gr Ultra White Paper', 9.99, 1, 'bonda4.jpg'),
        ('Faber Castell Colors', 'Box of colors x 12 units + 2 as a gift', 5.99, 1, 'colores12unit.jpg'),
        ('Ecolapices Faber Castell', 'Ecolapices box x 60 units', 11.99, 1, 'ecolapices60unid.jpg'),
        ('Faber Castell pencil case', 'Colored pencil case x 5 units', 6.99, 1, 'pencils5unit.jpg'),
        ('Artesco Tempera 250 ml', 'Artesco Tempera Bottle 250 ml', 3.99, 1, 'temperaartesco.jpg'),
        ('Plasticina Norma', 'Box with 12 plasticine bars. 260 gr', 5.99, 1, 'plastilinanorma.jpg'),
        ('Standford notebook', 'Standford squared notebook 100 sheets', 3.49, 1, 'standford notebook.jpg');

CREATE TABLE IF NOT EXISTS usuario (
    codusu int not null AUTO_INCREMENT,
    nomusu varchar(50),
    apeusu varchar(50),
    emausu varchar(50) not null,
    pasusu varchar(20) not null,
    estado int not null,
    CONSTRAINT pk_usuario PRIMARY KEY (codusu)
);

INSERT INTO usuario (nomusu, apeusu, emausu, pasusu, estado)
VALUES ('usuario', 'Demo', 'correo@example.com', '123456', 1);

CREATE TABLE IF NOT EXISTS pedido (
    codped int not null AUTO_INCREMENT,
    codusu int not null,
    codpro int not null,
    fecped datetime not null,
    estado int not null,
    dirusuped varchar(50) not null,
    telusuped varchar(12) not null,
    token varchar(30) null,
    PRIMARY KEY (codped)
);