#CREAR ESQUEMA new_schema_qa
CREATE schema new_schema_qa;

#POSICIONARNOS EN EL SCHEMA
USE new_schema_qa;

#CREAR TABLA mi_tabla_1
CREATE TABLE mi_tabla_1 (
  ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre varchar(255) DEFAULT NULL, 
  apellido varchar(255) DEFAULT NULL, 
  genero varchar(45) DEFAULT NULL, 
  fecha_nac date DEFAULT NULL, 
  fecha_de_alta date DEFAULT NULL, 
  edad int DEFAULT NULL, 
  signo_zodiacal varchar(45) DEFAULT NULL, 
  tipo_documento varchar(45) DEFAULT NULL, 
  num_documento varchar(20) DEFAULT NULL, 
  transporte_preferido varchar(45) DEFAULT NULL, 
  km_diarios_recorridos float DEFAULT NULL, 
  profesion varchar(45) DEFAULT NULL, 
  ingresos_mensuales decimal(10, 2) DEFAULT NULL
);

INSERT INTO mi_tabla_1(nombre,apellido,genero,fecha_nac,fecha_de_alta,edad, signo_zodiacal,tipo_documento,num_documento,transporte_preferido,km_diarios_recorridos,profesion,ingresos_mensuales) 
VALUES 
('Apolonia', 'Alcaraz', 'Femenino', '1952-04-14', '2020-03-28', 68, 'Sagitario', 'Otro', '34239961', 'Bicicleta', 37.29, 'Contador', NULL),
('Isidoro', NULL, 'Masculino', '1986-06-12', '2020-12-30', 35, 'Piscis', 'Pasaporte', '11127712', 'Moto', 0.41, 'Artista', 3343.76),
('Rosalina', 'Guerra', 'Femenino', '1946-09-02', '2021-01-10', 74, 'Piscis', 'Pasaporte', '82022394', NULL, NULL, 'Ingeniero', 1035.38),
('Manuel', 'Calvet', 'Masculino', '2003-04-10', '2022-12-03', 20, 'Escorpio', 'DNI', '40492930', 'Caminando', NULL, 'Médico', 1348.95),
('Gabriel', 'Priego', 'Masculino', '2001-10-13', '2022-01-21', 20, 'Acuario', 'No indica', '59232640AB', NULL, NULL, 'Electricista', 1808.28),
('Borja', 'Terrón', NULL, '2005-11-29', '2023-08-15', 18, 'Capricornio', 'DNI', '24231789', NULL, NULL, 'Contador', 2655.37),
('Maura', 'Aguiló', 'Masculino', '1946-01-06', '2021-01-17', 75, 'Géminis', 'Pasaporte', '3115017', 'Bicicleta', 5.84, 'Jubilado', NULL),
(NULL, 'Ciríaco', 'Benit0', NULL, '2001-10-11', 19, 'Tauro', 'Otro', '77001234', 'Moto', 34.27, 'Emprendedor', 2770.21),
('Florentino', 'Bayo', 'Masculino', '1966-02-11', '2020-08-05', 55, 'Capricornio', 'No indica', '39508211', 'Bicicleta', 34.72, 'Administrativo', 3240.65),
('Marianela', 'Blasco', 'Femenino', '1994-09-09', '2024-08-06', 30, NULL, 'Pasaporte', '34089795', NULL, NULL, 'Contador', 4371.92),
('Maristela', 'Moya', 'Sin datos', '1996-10-30', '2023-11-08', 27, 'Sagitario', 'DNI', '14814592', 'Transporte público', 38.31, 'Economista', 3483.51),
('Pepa', 'Barral', 'Femenino', '1974-01-24', '2021-02-06', 47, 'Escorpio', 'Pasaporte', '11829619', 'Auto', 47.99, 'Maestro', 1195.15),
('Sandalio', 'Roura', 'Masculino', '1986-10-22', '2022-02-26', 35, 'Libra', 'Pasaporte', '47668995', 'Bicicleta', NULL, 'No trabaja', NULL),
('Sergio', 'Godoy', 'Masculino', '1992-04-07', '2024-04-29', 32, 'Capricornio', 'Otro', '84472051', 'Bicicleta', 6.46, 'Ingeniero', 3491.99),
('Hermenegildo', 'Cantero', 'Masculino', '1970-07-04', '2023-10-02', 53, 'Virgo', NULL, '783517', NULL, NULL, 'Contador', 2347.91),
('Inés', 'Francisco', 'Femenino', '1995-12-17', '2024-02-29', 28, 'Géminis', 'DNI', '19642694', 'Transporte público', 33.93, 'Comerciante', 1983.69),
('Isidoro', 'Silva', 'Masculino', '1963-07-26', '2022-12-08', 59, 'Capricornio', NULL, '60751067', 'Moto', 39.37, 'Contador', NULL),
('Flora', 'Osuna', 'Masculino', '1996-02-29', '2022-09-05', 27, 'Géminis', 'Pasaporte', '75976757', 'Caminando', NULL, 'Electricista', 2701.29),
('Pepita', 'Barral', 'Femenino', '1999-04-14', '2024-10-31', 26, 'Leo', 'Pasaporte', '58471821', 'Caminando', 9.00, 'Estudiante', 3480.73),
('Juan Luis', 'Terrón', 'Masculino', '1966-01-24', '2020-05-22', 54, 'Sagitario', 'Pasaporte', '69051657', 'Moto', 42.62, 'Maestro', 4884.78),
('Donato', 'Navarrete', NULL, '2003-02-06', '2021-10-10', 19, 'Virgo', NULL, '91843801', 'Transporte público', NULL, 'Cocinero', 1855.55),
('Emilio', 'Arregui', 'Femenino', '1993-07-22', '2022-02-12', 29, NULL, 'DNI', '59664842', 'Moto', 22.56, 'Ingeniero', 571.28),
('Jovita', 'Valenciano', 'Masculino', '1999-07-15', '2023-09-11', 24, 'Tauro', NULL, '23026258', 'Auto', 39.17, 'Cocinero', 4138.47),
('María Del Carmen', 'Andrés', 'Femenino', '1945-10-30', '2022-10-12', 77, 'Acuario', 'Pasaporte', '53081442', 'Moto', 29.21, 'Maestro', 665.78),
('Francisco Javier', 'Soto', 'Masculino', '1969-03-04', '2020-01-28', 51, 'Tauro', 'Pasaporte', '43442687', 'Caminando', NULL, 'Consultor', 1756.41),
('Victoria', 'Cabanillas', 'Masculino', '1952-08-10', '2021-06-17', 69, 'Virgo', 'DNI', '96491716', 'Transporte público', NULL, 'Cocinero', 2653.57),
('Amada', 'Jordán', 'Masculino', '1966-05-05', '2020-01-17', 54, 'Leo', 'DNI', '85766246', 'Bicicleta', 15.13, 'Consultor', 2966.82),
('Hortensia', 'Bárcena', 'Masculino', '1996-03-12', '2023-02-04', 27, 'Cáncer', 'DNI', '93819333', 'Transporte público', NULL, 'Comerciante', 524.41),
('Jose', 'Pera', 'Masculino', '1972-05-10', '2021-05-15', 49, 'Acuario', 'Pasaporte', '19576850', NULL, NULL, 'Herrero', NULL),
('Encarnación', 'Alegria', 'Masculino', '1946-05-06', '2023-04-10', 77, 'Piscis', 'Pasaporte', '71273818', 'Moto', 29.27, 'Médico', 2223.55),
('Leire', 'Uribe', 'Sin datos', '2004-07-08', '2022-09-26', 18, 'Sagitario', 'DNI', '75812468', 'Transporte público', 28.45, 'No trabaja', 1563.18),
('Calisto', 'Berrocal', 'Femenino', '2003-04-17', '2020-01-02', 17, 'Cáncer', 'Pasaporte', '33865588', 'Otro', 3.54, 'Médico', 4651.33),
('Epifanio', 'Corral', 'Masculino', '1997-12-29', '2022-09-27', 25, 'Piscis', 'Pasaporte', '52566537', 'Transporte público', 16.0, 'Estudiante', 4506.94),
('Geraldo', 'Duran', 'Femenino', '1984-03-03', '2020-07-05', 36, 'Leo', NULL, '37657643', 'Moto', 39.96, 'Abogado', 810.07),
('Ulises', 'Sáenz', 'Masculino', '1966-01-20', '2023-10-11', 58, 'Sagitario', NULL, '37150443', 'Transporte público', NULL, 'Cocinero', 2871.52),
('Paula', 'Bermejo', 'Femenino', '1953-07-24', '2023-09-07', 70, 'Cáncer', 'DNI', '4124783', 'Auto', 36.2, 'Jubilado', NULL),
('Dafne', 'Benet', 'Femenino', '1998-10-31', '2023-03-08', 24, 'Cáncer', 'Pasaporte', '65712249', 'Transporte público', 38.85, 'Estudiante', 3391.42),
('Hugo', 'Gomez', 'Femenino', '2002-12-19', '2023-02-10', 20, 'Libra', 'Pasaporte', '5104023', 'Transporte público', 20.81, 'Estudiante', 2431.29),
('Vinicio', 'Chacón', 'Masculino', '1990-01-14', '2022-06-01', 32, 'Piscis', 'Pasaporte', '21837137', 'Caminando', NULL, 'Consultor', 2687.87),
('Marc', 'Rodriguez', 'Masculino', '1985-03-29', '2023-04-08', 38, 'Tauro', NULL, '94787562', 'Auto', 46.21, 'Medico', 3250.59),
('Kike', 'Arteaga', 'No binario', '1991-04-21', '2022-03-30', 31, 'Piscis', 'DNI', '20814637', 'Caminando', NULL, 'Carpintero', NULL),
('Emiliana', 'Diéguez', 'Femenino', '2002-07-17', '2022-01-19', 20, 'Leo', 'DNI', '59841518', 'Bicicleta', NULL, 'Electricista', 4787.46),
('Duilio', 'Alegre', 'Femenino', '1953-10-06', '2022-02-15', 68, 'Cáncer', NULL, '24976287', 'Bicicleta', NULL, NULL, 3021.24),
('Eduardo', 'Bernal', 'Femenino', '1958-08-12', '2020-02-04', 62, 'Virgo', 'DNI', '30075193', 'Moto', 7.77, 'Contador', 1424.67),
('Pánfilo', 'Martínez', 'No binario', '1952-09-16', '2022-06-30', 70, 'Capricornio', 'Pasaporte', '2288941', 'No usa', NULL, NULL, 4887.13),
('Modesta', 'Bonet', 'Femenino', '1946-07-16', '2024-03-19', 78, 'Sagitario', 'Pasaporte', '11885411', 'Bicicleta', 22.71, NULL, 2031.83),
('Raquel', 'Arcos', 'Masculino', '1950-02-20', '2021-09-28', 72, 'Sagitario', NULL, '13311466', 'Moto', 48.38, 'Ingeniero', NULL),
('Felipe', 'Durán', 'Masculino', '1943-09-22', '2023-06-03', 80, 'Sagitario', 'Pasaporte', '2630002', 'Otro', 38.5, 'Jubilado', NULL),
('Susanita', 'Soriano', 'Femenino', '1947-10-01', '2023-08-04', 76, 'Capricornio', NULL, '20798133', 'Transporte público', NULL, 'Contador', 1183.22),
('Emigdio', 'Camino', 'Masculino', '1959-12-28', '2020-04-23', 60, 'Géminis', 'DNI', '91546676', 'Moto', 44.58, 'Oncólogo', 513.29),
('Agata', 'Esteve', 'Masculino', '1963-04-07', '2024-06-26', 61, 'Aries', 'DNI', '51928461', 'Transporte público', 35.86, NULL, 3361.66),
('Olalla', 'Vallejo', 'Femenino', '1989-02-10', '2024-07-09', 35, 'Acuario', 'DNI', '68749365', 'Auto', 24.21, 'Chef', 2721.58),
('Judith', 'Prada', 'Masculino', '1957-04-20', '2023-09-11', 66, 'Géminis', 'DNI', '26179022', 'Caminando', NULL, 'Médico', 1283.43),
('María Jesús', 'Sáenz', 'Femenino', '1954-03-25', '2022-11-10', 69, 'Libra', 'DNI', '25096687', 'Bicicleta', 49.23, 'Maestro', 646.21),
('Regina', 'Tejero', 'Femenino', '1967-08-07', '2022-02-24', 55, 'Virgo', 'Cédula', '34292553', 'Bicicleta', 11.81, 'Médico', NULL),
('Gonzalo', 'Escudero/Garcia', 'Femenino', '2003-11-15', '2023-01-21', 19, 'Capricornio', 'Cédula', '87128500', 'Bicicleta', 13.94, 'Emprendedor', 2756.69),
('Genoveva', 'Estrada', 'Masculino', '1948-04-08', '2020-07-01', 72, 'Cáncer', 'DNI', '59707444', 'Bicicleta', 11.19, 'Maestro', 2923.64),
('Azahar', 'Ramis', 'Femenino', '1997-09-16', '2022-01-14', 24, 'Escorpio', 'Cédula', '99561405', 'Moto', 34.29, NULL, 1146.71),
('Mauricio', 'Sanz', 'Masculino', '2000-08-24', '2023-10-17', 23, 'Aries', 'Otro', '32919201', 'Transporte público', NULL, 'Médico', 1340.14),
('Adelia', 'Cánovas', 'Masculino', '1993-09-19', '2023-01-17', 29, 'Cáncer', 'DNI', '25311534', 'Caminando', NULL, 'Médico', NULL),
('Primitivo', 'Sosa', 'Femenino', '1995-04-04', '2020-09-20', 25, 'Cáncer', 'Pasaporte', '52922479', 'Auto', 18.44, 'Maestro', 2028.36),
('Manola', 'Roman', 'Femenino', '1959-08-26', '2020-10-07', 61, 'Tauro', 'DNI', '6667172', 'Caminando', NULL, 'Abogado', 4276.57),
('Ciriaco', 'Vall', 'Masculino', '1975-07-29', '2023-09-06', 48, 'Libra', 'Pasaporte', '64299418', 'Otro', 21.48, 'Cardiologo', 4919.69),
('Jesús', 'Blasco', 'Masculino', '1978-03-09', '2023-01-18', 45, 'Tauro', 'DNI', '40846370', 'Bicicleta', 1.13, 'Artista', 4748.17),
('Odalis', 'Ramis', 'Masculino', '1997-11-24', '2022-05-12', 24, 'Escorpio', 'DNI', '30478906', 'Transporte público', 38.05, 'Electricista', NULL),
('Emilia', 'Sanmiguel', 'Masculino', '1969-01-13', '2023-06-28', 54, 'Sagitario', 'DNI', '17813891', 'Auto', 2.59, 'Mozo', 4866.65),
('Cesar', 'Grande', 'Masculino', '1958-03-13', '2022-04-19', 64, 'Capricornio', 'DNI', '74555724', 'Bicicleta', NULL, 'Arrendatario', 1994.46),
('Nilo', 'Talavera', 'Masculino', '1989-10-18', '2020-10-25', 31, 'Cáncer', 'DNI', '36019735', 'Auto', 2.49, 'Cocinero', 4541.27),
('Amarilis', 'Lobo', 'Femenino', '1963-12-09', '2023-03-07', 59, 'Libra', 'Pasaporte', '26873691', 'Transporte público', 1.73, 'Maestro', NULL),
('Ligia', 'Egea', 'No binario', '1956-12-03', '2022-03-15', 65, 'Libra', 'Pasaporte', '9701401', 'No usa', NULL, 'Médico', 979.43),
('Brunilda', 'Galiano', 'Femenino', '2001-12-27', '2021-04-09', 19, 'Tauro', 'DNI', '51044311', 'Moto', 16.75, 'Mozo', 2739.24),
('Ambar', 'Salamanca', 'Masculino', '1993-10-03', '2023-05-03', 30, 'Sagitario', 'Pasaporte', '22846924', 'Auto', 11.28, 'Cocinero', 1531.76),
('Cloe', 'Ramis', 'Femenino', '1972-03-09', '2021-12-10', 50, 'Sin datos', 'DNI', '85241876', 'Auto', 43.83, 'Abogado', 1046.89),
('Amado', 'Aranda', 'Femenino', '1946-08-31', '2022-09-27', 76, 'Piscis', 'DNI', '67321678', 'Bicicleta', 2.29, NULL, 4873.33),
('Manu', 'Verdugo', 'Masculino', '1960-01-10', '2024-08-15', 65, 'Leo', 'DNI', '23849573', 'Bicicleta', NULL, 'Abogado', 4602.61),
('Carlito', 'Blanca', 'Masculino', '2001-04-17', '2023-11-07', 23, 'Virgo', 'Pasaporte', '56331345', 'Auto', 0.86, 'Mozo', 4650.46),
('Feliciana', 'Juan', 'Masculino', '1975-01-31', '2021-08-25', 47, 'Cáncer', 'DNI', '5363460', 'Otro', 33.08, 'Ingeniero', 1234.78),
('Américo', 'Roca', 'Femenino', '1982-08-11', '2020-06-12', 38, 'Virgo', 'Pasaporte', '99958832', 'Caminando', 6.00, 'Cocinero', NULL),
('Nerea', 'Echeverría', 'Femenino', '2006-05-10', '2020-12-29', 15, 'Acuario', 'DNI', '61088191', 'Transporte público', 26.63, 'Abogado', 554.2),
('Teodosio', 'Alvarez', 'Masculino', '1992-07-14', '2020-06-08', 28, 'Cáncer', 'DNI', '78094519', 'Bicicleta', 30.2, 'Ingeniero', NULL),
('Eleuterio', 'Cabezas', 'Femenino', '1964-03-25', '2024-06-04', 60, 'Escorpio', 'Pasaporte', '91979720', 'Moto', 14.49, NULL, 4549.36),
('Gala', 'Alfaro', 'Femenino', '1944-11-30', '2020-02-16', 75, 'Sagitario', 'DNI', '77197588', 'Bicicleta', NULL, 'Jubilado', 707.13),
('Leocadia@gmail.com','Alegre','Femenino','2003-04-30','2024-05-22',21,'Cáncer','DNI',45835440,'Otro',0.03,NULL,2524.64), 
('Abilio','[Medina]','Femenino','1967-09-19','2022-10-05',55,'Capricornio','DNI',89086527,'Auto',25.78,'Médico',976.54), 
('Arsenio','Paz','Femenino','1973-01-08','2020-06-20',47,'Leo','DNI',62541451,'Auto',NULL,'Contador',2049.38), 
('Valeria','Guerra','Femenino','1954-12-28','2021-07-09',67,'Virgo','DNI',61168498,'Bicicleta',39.93,'Contador',2308.61), 
('Lisandro','Abella','Femenino','1975-03-15','2020-07-20',45,'Escorpio','DNI',30439346,'Transporte público',26.43,'Administrativo',2318.24), 
('Maribel','Pinilla','Masculino','2001-03-13','2022-04-09',21,'Leo','Pasaporte',60293235,'Auto',11.95,'Maestro',913.03), 
('Begoña','Segura','Femenino','2005-12-05','2020-03-19',14,'Capricornio','DNI',21874952,'Caminando',NULL,'Médico',1344.68), 
('Adelardo','Fuentes','Femenino','1989-02-23','2020-03-18',31,'Piscis','Pasaporte',91062236,'No usa',NULL,'Emprendedor',NULL), 
('Jenaro','Pinlla',NULL,'1995-04-24','2020-05-05',25,'Capricornio','DNI',30287869,'Caminando',16.50,'Maestro',1756.54), 
('Azucena','Alegre','Femenino','1989-04-30','2020-10-25',32,'Aries','DNI',19724529,'Auto',16.23,'Medico',NULL), 
('Martin','{}','Femenino','1944-05-13','2021-08-03',77,'Tauro','DNI',79427547,'Transporte público',13.66,'Ingeniero',4330.59), 
('Salomé','Gracia','Femenino','1983-09-11','2020-04-26',37,'Virgo','DNI',74234400,'Auto',26.23,'Emprendedor',4749.83), 
('Gala','Prada','Femenino','1974-01-30','2023-01-02',49,'Capricornio','DNI',85238229,'Moto',2.36,'Comerciante',NULL), 
('Amaya','Vera','Femenino','1952-01-10','2023-04-18',71,'Aries','DNI',45686179,'Moto',38.69,'Jubilado',942.61), 
('Hilda','Torre','Femenino','1973-02-26','2022-07-24',49,'Leo','DNI',77465725,'Transporte público',14.48,'No trabaja',1786.39), 
('Américo','Mir','Masculino','1974-06-04','2022-05-10',48,'Géminis','DNI',24347111,'No usa',NULL,NULL,4971.34), 
('Dionisia','Alvarado','Femenino','2003-06-15','2023-04-01',20,NULL,'DNI',37625691,'Bicicleta',6.49,'Ingeniero',3771.96), 
('Leandra','Aragón','Femenino','1961-04-05','2020-03-04',59,'Libra','DNI',98802259,'Auto',43.82,'Maestro',NULL);

#POSICIONARNOS EN EL SCHEMA
USE new_schema_qa;

#CREAR TABLA mi_tabla_2
CREATE TABLE mi_tabla_2 (
ID int NOT NULL PRIMARY KEY auto_increment,
color_favorito varchar(45) DEFAULT NULL, 
vehiculo_propio tinyint(1) DEFAULT NULL);

INSERT INTO mi_tabla_2(color_favorito,vehiculo_propio) 
VALUES 
('Rosa', 0),
('Naranja', 0), 
('Blanco', 1),
('Azul', 1),
('Negro', 0),
('Rosa', 0),
('Amarillo', 0),
('Negro', 0),
('MarrÃ³n', 1),
('Blanco', 1),
('Naranja', 0),
('Negro', 0),
('Blanco', 0),
(NULL, 1),
('Rojo', 1),
('Negro', 1),
('Blanco', 0),
('Azul', 1),
('Violeta', 1),
(NULL, 0),
('Blanco', 0),
('Blanco', 1),
('Blanco', 0),
('Rojo', 0),
('MarrÃ³n', 1),
('Naranja', 1),
('Rojo', 0),
('Blanco', 0),
(NULL, 0),
('Amarillo', 1),
('Rosa', 1),
('Violeta', 1),
('Violeta', 0),
('Azul', 1),
('Amarillo', 0),
('Violeta', 0),
('Naranja', 1),
('Rosa', 1),
('Negro', 1),
('Azul', 1),
('Rosa', 1),
(NULL, 0),
('Azul', 0),
('Rosa', 0),
('Naranja', 0),
('Marrón', 0),
('Rosa', 0),
('Rojo', 0),
('Rojo', 0),
('Rojo', 0),
('Rojo', 1),
('Violeta', 0),
('Azul', 0),
('Blanco', 0),
('Blanco', 1),
('Negro', 0),
('Negro', 0),
(NULL, 0),
('Marrón', 0),
('Naranja', 0),
('Verde', 0),
('Violeta', 1),
('Verde', 1),
('Azul', 0),
('Violeta', 0),
('Azul', 1),
('Blanco', 0),
('Negro', 0),
('Rosa', 1),
('Blanco', 0),
('Naranja', 0),
('Blanco', 1),
('Violeta', 0),
('Naranja', 0),
('Violeta', 0),
('Azul', 0),
(NULL, 0),
('Naranja', 0),
('Blanco', 0),
('Verde', 1),
('Blanco', 0),
('Negro', 1),
('Verde', 1),
('Blanco', 1),
('Negro', 0),
('Rojo', 0),
('Marrón', 1),
('Naranja', 0),
('Rojo', 0),
('Naranja', 0),
('Blanco', 0),
('Naranja', 0),
('Naranja', 0),
('Naranja', 0),
('Rosa', 0),
('Negro', 1),
('Amarillo', 0),
('Verde', 0),
('Blanco', 0),
('Rojo', 1);

select * from mi_tabla_1;
select * from mi_tabla_2;