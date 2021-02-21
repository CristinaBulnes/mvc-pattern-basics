CREATE DATABASE IF NOT EXISTS patients;
USE patients;

DROP TABLE IF EXISTS tests_info, tests, patients;

create table patients (
    id_pat int auto_increment not null,
    first_name varchar(15) not null,
    last_name varchar(10) not null,
    email varchar(50) not null,
    gender varchar(10) not null,
    age int not null,
    city varchar(10) not null,
    --  phone_number varchar(20) not null,
    PRIMARY KEY(id_pat)
);

create table tests_info (
    test_type varchar(30) not null,
    price int not null,
    PRIMARY KEY(test_type)
);

create table tests (
    id_test int auto_increment not null,
    id_pat int not null,
    test_type varchar(30) not null,
    results varchar(10) not null,
    date_test date not null,
    PRIMARY KEY(id_test),
    FOREIGN KEY(id_pat) REFERENCES patients (id_pat) ON DELETE CASCADE, 
    FOREIGN KEY(test_type) REFERENCES tests_info (test_type)
);

insert into patients (first_name, last_name, email, gender, age, city)
values
('Mike', 'Navarro', 'mike@navarro.com', 'male', 18, 'Sevilla'),
('Julia', 'Santos', 'julia@santos.com', 'female', 44, 'Barcelona'),
('Ryan', 'Merchan', 'ryan@merchan.com', 'male', 45, 'Madrid'),
('Gabriela', 'Belda', 'gabriela@belda.com', 'female', 19, 'Madrid'),
('Samira', 'Mateos', 'samira@mateos.com', 'female', 26, 'Barcelona'),
('Lluc', 'Duque', 'lluc@duque.com', 'male', 27, 'Sevilla'),
('Ruth', 'Li', 'ruth@li.com', 'female', 28, 'Barcelona'),
('Ander', 'Trujillo', 'ander@trujillo.com', 'male', 29, 'Madrid'),
('Daniela', 'Villaverde', 'daniela@villaverde.com', 'female', 10, 'Sevilla'),
('Alejandra', 'Mayor', 'alejandra@mayor.com', 'female', 11, 'Barcelona'),
('Jose', 'Enrique', 'jose@enrique.com', 'male', 12, 'Sevilla'),
('Cesareo', 'Barbero', 'cesareo@barbero.com', 'male', 13, 'Barcelona'),
('Alana', 'Quiles', 'alana@quiles.com', 'female', 14, 'Sevilla'),
('Abdellah', 'Espin', 'Abdellah@Espin.com', 'male', 15, 'Barcelona'),
('Mariona', 'Criado', 'mariona@criado.com', 'female', 16, 'Sevilla'),
('Paul', 'Quiñones', 'paul@quiñones.com', 'male', 17, 'Barcelona'),
('Manuel', 'Alejandro', 'manuel@alejandro.com', 'male', 18, 'Sevilla'),
('Rayan', 'Sans', 'rayan@sans.com', 'male', 19, 'Barcelona'),
('Alfonsa', 'Labrador', 'alfonsa@labrador.com', 'female', 20, 'Sevilla'),
('Miguel', 'Montoro', 'miguel@montoro.com', 'male', 21, 'Barcelona'),
('Fatiha', 'Mota', 'fatiha@mota.com', 'female', 22, 'Sevilla'),
('Javier', 'Borja', 'javier@borja.com', 'male', 23, 'Barcelona'),
('Jesus', 'Alcantara', 'jesus@alcantara.com', 'male', 24, 'Sevilla'),
('Luis', 'Mosquera', 'luis@mosquera.com', 'male', 25, 'Barcelona'),
('Carla', 'Borja', 'Carla@Borja.com', 'female', 26, 'Madrid'),
('Constantino', 'Duarte', 'constantino@duarte.com', 'male', 27, 'Sevilla'),
('Victoriano', 'Clemente', 'victoriano@clemente.com', 'male', 28, 'Barcelona'),
('Maria', 'Benavides', 'maria@benevides.com', 'female', 29, 'Sevilla'),
('Ines', 'Martinez', 'ines@martinez.com', 'female', 30, 'Barcelona'),
('Judith', 'Iniesta', 'judith@iniesta.com', 'female', 31, 'Sevilla'),
('Gabriela', 'Nieves', 'gabriela@nieves.com', 'female', 32, 'Barcelona'),
('Vasile', 'Felipe', 'vasile@felipe.com', 'male', 33, 'Sevilla'),
('Angel', 'Chico', 'angel@chico.com', 'male', 34, 'Barcelona'),
('Ester', 'Ariza', 'ester@ariza.com', 'female', 35, 'Sevilla'),
('Patricio', 'Prados', 'patricia@prados.com', 'male', 36, 'Barcelona'),
('Moises', 'Bello', 'moises@bello.com', 'male', 37, 'Sevilla'),
('Fernando', 'Neira', 'fernando@neira.com', 'male', 38, 'Barcelona'),
('Diego', 'Piñero', 'diego@piñero.com', 'male', 39, 'Sevilla'),
('Aritz', 'Sastre', 'aritz@sastre.com', 'male', 40, 'Barcelona'),
('Paloma', 'Ribera', 'paloma@ribera.com', 'female', 41, 'Sevilla'),
('Aina', 'Sosa', 'aina@sosa.com', 'female', 42, 'Barcelona'),
('Remedios', 'Diaz', 'remedios@diaz.com', 'female', 43, 'Sevilla'),
('Pilar', 'Serna', 'pilar@serna.com', 'female', 44, 'Barcelona'),
('Lia', 'Mellado', 'lia@mellado.com', 'female', 45, 'Sevilla'),
('Sergi', 'Gonzalez', 'sergi@gonzalez.com', 'male', 46, 'Barcelona'),
('Yago', 'Climent', 'yago@climent.com', 'male', 47, 'Sevilla'),
('Rodolfo', 'Nadal', 'rodolfo@nadal.com', 'male', 48, 'Barcelona'),
('Carlos', 'Muñoz', 'carlos@muñoz.com', 'male', 49, 'Sevilla'),
('Victoria', 'Acedo', 'victoria@acedo.com', 'female', 50, 'Barcelona'),
('Denis', 'Cuevas', 'denis@cuevas.com', 'male', 51, 'Madrid'),
('Antonio', 'Montiel', 'antonio@montiel.com', 'male', 51, 'Madrid');

insert into tests_info ( test_type, price)
values
('PCR', 125),
('Test Anticuerpo', 15),
('Test Antigeno', 60);

insert into tests (id_pat, test_type, results, date_test)
values
(1, 'PCR', 'positive', 20210221),
(2, 'PCR', 'negative', 20010221),
(4, 'PCR','positive', 20210221),
(5, 'Test Anticuerpo','positive', 20010921),
(6, 'PCR','positive', 20210221),
(7, 'PCR','negative', 20210221),
(8, 'PCR','negative', 20210221),
(9, 'PCR','negative', 20210221),
(10, 'Test Anticuerpo','positive', 20210221),
(11, 'Test Antigeno','negative', 20210221),
(12, 'Test Antigeno','negative', 20210221),
(13, 'Test Anticuerpo','negative', 20210221),
(14, 'Test Anticuerpo','negative', 20210221),
(15, 'Test Antigeno','negative', 20210221),
(16, 'Test Anticuerpo','negative', 20210221),
(17, 'PCR','positive', 20210221),
(18, 'PCR','positive', 20210221),
(19, 'PCR','positive', 20210221),
(20, 'PCR','positive', 20210221),
(21, 'Test Anticuerpo','positive', 20210221),
(22, 'Test Antigeno','positive', 20210221),
(23, 'PCR','positive', 20210221),
(24, 'PCR','positive', 20210221),
(25, 'PCR','positive', 20210221),
(26, 'PCR','positive', 20210221),
(27, 'PCR','positive', 20210221),
(28, 'Test Anticuerpo','positive', 20210221),
(29, 'Test Antigeno','positive', 20210221),
(30, 'Test Antigeno','positive', 20210221),
(31, 'Test Antigeno','negative', 20210221),
(32, 'Test Anticuerpo','positive', 20210221),
(33, 'Test Antigeno','positive', 20210221),
(34, 'PCR','positive', 20210221),
(35, 'Test Anticuerpo','positive', 20210221),
(36, 'PCR','positive', 20210221),
(37, 'Test Anticuerpo','positive', 20210221),
(38, 'Test Antigeno','negative', 20210221),
(39, 'Test Anticuerpo','negative', 20210221),
(40, 'Test Anticuerpo','negative', 20210221),
(41, 'PCR','negative', 20210221),
(42, 'Test Anticuerpo','negative', 20210221),
(43, 'Test Anticuerpo','positive', 20210221),
(44, 'Test Antigeno','negative', 20210221),
(45, 'Test Antigeno','negative', 20210221),
(46, 'Test Anticuerpo','negative', 20210221),
(47, 'PCR','positive', 20210221),
(48, 'Test Anticuerpo','positive', 20210221),
(49, 'Test Anticuerpo','negative', 20210221),
(50, 'Test Antigeno','positive', 20210221),
(51, 'Test Anticuerpo','positive', 20210221);

