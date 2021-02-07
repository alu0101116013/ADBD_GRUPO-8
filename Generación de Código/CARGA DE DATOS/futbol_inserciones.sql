USE `futbol`;

-- -----------------------------------------------------
-- Data for table `futbol`.`CLUB`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`CLUB` (`Código club`, `Nombre club`, `Presidente`, `Año fundado`, `Nº socios`, `Nº administrativos`, `Palmarés`, `Presupuestos`, `Patrocinador`) VALUES ('001', 'Real Madrid C.F.', 'Florentino Perez', 1902, 99781, 100, 92, 100000000, 'Emirates');
INSERT INTO `futbol`.`CLUB` (`Código club`, `Nombre club`, `Presidente`, `Año fundado`, `Nº socios`, `Nº administrativos`, `Palmarés`, `Presupuestos`, `Patrocinador`) VALUES ('002', 'F.C. Barcelona', 'Josep Bartomeu', 1899, 150000, 75, 89, 90000000, 'Rakuten');
INSERT INTO `futbol`.`CLUB` (`Código club`, `Nombre club`, `Presidente`, `Año fundado`, `Nº socios`, `Nº administrativos`, `Palmarés`, `Presupuestos`, `Patrocinador`) VALUES ('003', 'Valencia C.F.', 'Anil Murthy', 1919, 75000, 30, 32, 50000000, 'Bwin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`COMPETICION`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`COMPETICION` (`Código competición`, `Nombre competición`, `País`, `Deporte`, `Nº equipos`, `Bonus económico`) VALUES ('1', 'Liga Santander', 'España', 'Futbol', 20, 1000000);
INSERT INTO `futbol`.`COMPETICION` (`Código competición`, `Nombre competición`, `País`, `Deporte`, `Nº equipos`, `Bonus económico`) VALUES ('2', 'Liga SmartBank', 'España', 'Futbol', 22, 500000);
INSERT INTO `futbol`.`COMPETICION` (`Código competición`, `Nombre competición`, `País`, `Deporte`, `Nº equipos`, `Bonus económico`) VALUES ('3', 'Liga Iberdrola', 'España', 'Futbol', 18, 500000);
INSERT INTO `futbol`.`COMPETICION` (`Código competición`, `Nombre competición`, `País`, `Deporte`, `Nº equipos`, `Bonus económico`) VALUES ('4', 'ACB', 'España', 'Baloncesto', 18, 1000000);

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`EQUIPO`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('01', '001', 'Real Madrid C.F.', 'Santiago Bernabeu', 'Madrid', 'Liga Santander ', 'Profesional', 'Masculino', 50000000, 60, 10, 23, 'Sergio Ramos', 'Futbol', NULL);
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('011', '001', 'Real Madrid Femenino', 'Valdebebas', 'Madrid', 'Liga Iberdrola', 'Profesional', 'Femenino', 25000000, 20, 8, 23, 'Ivana Andres', 'Futbol', NULL);
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('012', '001', 'Real Madrid Baloncesto', 'WiZink Center', 'Madrid', 'ACB', 'Profesional', 'Masculino', 25000000, 12, 15, 15, 'Felipe Reyes', 'Baloncesto', NULL);
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('021', '002', 'F.C. Barcelona B', 'Johan Cruyff', 'Barcelona', 'Liga SmartBank', 'Profesional', 'Masculino', 30000000, 14, 8, 14, 'Alex Collado', 'Futbol', NULL);
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('02', '002', 'F.C. Barcelona', 'Camp Nou', 'Barcelona', 'Liga Santander', 'Profesional', 'Masculino', 60000000, 75, 12, 11, 'Leo Messi', 'Futbol', '021');
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('03', '003', 'Valencia C.F. Femenino', 'C.D. Paterna', 'Valencia', 'Liga Iberdrola', 'Profesional', 'Femenino', 25000000, 12, 9, 18, 'Marta Carro', 'Futbol', NULL);
INSERT INTO `futbol`.`EQUIPO` (`Código equipo`, `Código club`, `Nombre equipo`, `Estadio`, `Localización`, `Liga`, `Categoría`, `Genero`, `Presupuesto`, `Nº trofeos`, `Nº técnicos`, `Nº jugadores`, `Capitán`, `Tipo deporte`, `ID filial`) VALUES ('031', '003', 'Valencia Basket', 'Pabellon Fonteta de Sant Lluís', 'Valencia', 'ACB', 'Profesional', 'Masculino', 25000000, 20, 7, 7, 'Bojan Dubljevic', 'Baloncesto', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`JUGADORES`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456789A', '01', 'DNI', 'Sergio Ramos', 4, 'Defensa', 50000000, 'Real Madrid', 5000000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456780B', '01', 'DNI', 'Karim Benzema', 9, 'Delantero', 40000000, 'Real Madrid', 3000000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456781C', '01', 'Pasaporte', 'Luka Modric', 10, 'Centrocampista', 60000000, 'Real Madrid', 2000000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456782D', '011', 'DNI', 'Ivana Andres', 15, 'Defensa', 1000000, 'Real Madrid Femenino', 500000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456783E', '012', 'DNI', 'Felipe Reyes', 9, 'Ala-Pivot', 3000000, 'Real Madrid Baloncesto', 2000000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456784F', '012', 'DNI', 'Rudy Fernandez', 5, 'Escolta', 4000000, 'Real Madrid Baloncesto', 1000000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456785G', '02', 'DNI', 'Leo Messi', 10, 'Delantero', 80000000, 'F.C.Barcelona', 10000000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456786H', '02', 'Pasaporte', 'Ter Stegen', 1, 'Portero', 20000000, 'F.C.Barcelona', 4500000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456787I', '021', 'DNI', 'Alex Collado', 7, 'Centrocampista', 1000000, 'F.C.Barcelona B', 500000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456788J', '03', 'DNI', 'Marta Carro', 5, 'Defensa', 100000, 'Valencia C.F. Femenino', 200000);
INSERT INTO `futbol`.`JUGADORES` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Dorsal`, `Posición`, `Valor de mercado`, `Nombre equipo`, `Salario anual`) VALUES ('123456789K', '031', 'Pasaporte', 'Bojan Dubljevic', 14, 'Pivot', 1250000, 'Valencia Basket', 125000);

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`SUBVENCION`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`SUBVENCION` (`Código subvención`, `Importe`, `Benefactor`, `Tiempo invertido necesario (Horas)`) VALUES ('1001', 25000, 'Disa', 3);
INSERT INTO `futbol`.`SUBVENCION` (`Código subvención`, `Importe`, `Benefactor`, `Tiempo invertido necesario (Horas)`) VALUES ('1002', 30000, 'Nike', 4);
INSERT INTO `futbol`.`SUBVENCION` (`Código subvención`, `Importe`, `Benefactor`, `Tiempo invertido necesario (Horas)`) VALUES ('1003', 10000, 'Red Bull', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`ACTIVIDAD`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`ACTIVIDAD` (`Código actividad`, `Tipo actividad`, `Tiempo invertido (Horas)`) VALUES ('0001', 'Partido Benefico', 3);
INSERT INTO `futbol`.`ACTIVIDAD` (`Código actividad`, `Tipo actividad`, `Tiempo invertido (Horas)`) VALUES ('0002', 'Visita a Escuela', 2);
INSERT INTO `futbol`.`ACTIVIDAD` (`Código actividad`, `Tipo actividad`, `Tiempo invertido (Horas)`) VALUES ('0003', 'Visita a Hospital', 3);
INSERT INTO `futbol`.`ACTIVIDAD` (`Código actividad`, `Tipo actividad`, `Tiempo invertido (Horas)`) VALUES ('0004', 'Subasta de objetos firmados', 2);
INSERT INTO `futbol`.`ACTIVIDAD` (`Código actividad`, `Tipo actividad`, `Tiempo invertido (Horas)`) VALUES ('0005', 'Visita a Peña Deportiva', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`CUERPO_TECNICO`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654320A', '01', 'Pasaporte', 'Zinedine Zidane', 'Entrenador', 'Real Madrid', 250000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654321B', '01', 'DNI', 'Gregory Dupont', 'Preparacion Fisica', 'Real Madrid', 100000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654322C', '011', 'DNI', 'David Aznar', 'Entrenador', 'Real Madrid Femenino', 50000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654323D', '012', 'DNI', 'Pablo Laso', 'Entrenador', 'Real Madrid Baloncesto', 50000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654324E', '02', 'Pasaporte', 'Ronald Koeman', 'Entrenador', 'F.C.Barcelona', 200000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654325F', '02', 'Pasaporte', 'Henrik Larsson', 'Segundo Entrenador', 'F.C.Barcelona', 100000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654326G', '021', 'DNI', 'Francisco Garcia Pimienta', 'Entrenador', 'F.C.Barcelona B', 50000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654327H', '03', 'DNI', 'Jose Lopez Bargues', 'Entrenador', 'Valencia C.F. Femenino', 50000);
INSERT INTO `futbol`.`CUERPO_TECNICO` (`Código identificador`, `Código equipo`, `Tipo identificación`, `Nombre personal`, `Rol`, `Nombre equipo`, `Salario anual`) VALUES ('987654328I', '031', 'DNI', 'Jaume Ponsarnau', 'Entrenador', 'Valencia Basket', 80000);

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`EQUIPO_PARTICIPA_COMPETICION`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`EQUIPO_PARTICIPA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '1', '01');
INSERT INTO `futbol`.`EQUIPO_PARTICIPA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '2', '021');
INSERT INTO `futbol`.`EQUIPO_PARTICIPA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '3', '011');
INSERT INTO `futbol`.`EQUIPO_PARTICIPA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '3', '03');
INSERT INTO `futbol`.`EQUIPO_PARTICIPA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '4', '012');

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`EQUIPO_GANA_COMPETICION`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`EQUIPO_GANA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '1', '01');
INSERT INTO `futbol`.`EQUIPO_GANA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '2', '021');
INSERT INTO `futbol`.`EQUIPO_GANA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '3', '011');
INSERT INTO `futbol`.`EQUIPO_GANA_COMPETICION` (`Año disputado`, `Código competición`, `Código equipo`) VALUES (2019, '4', '012');

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`CLUB_RECIBE_SUBVENCION`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`CLUB_RECIBE_SUBVENCION` (`Código subvención`, `Código club`) VALUES ('1003', '001');

COMMIT;


-- -----------------------------------------------------
-- Data for table `futbol`.`CLUB_REALIZA_ACTIVIDAD`
-- -----------------------------------------------------
START TRANSACTION;
USE `futbol`;
INSERT INTO `futbol`.`CLUB_REALIZA_ACTIVIDAD` (`Código actividad`, `Código club`) VALUES ('0002', '001');

COMMIT;

