﻿--
-- La base de datos presente en el fichero comprimido es la base de datos tras crearla y ejecutar este script.
--
-- Para colver poner la base de datos en un estado estable y probar su funcionalidad hay ejecutar este Script.
-- Para colver crear la base de datos hay usar <property name="hibernate.hbm2ddl.auto" value="create" /> despues de borrarla.
-- 
-- Sólo están los datos necesarios para los casos de uso de la ampliación.
-- 		- Clientes
-- 		- Tipos de vehículos
--		- Vehículos
--		- Cursos y sus contenidos
--		- Asistencias
--		- Expertos*
--		- Averías**
--
--		*	Algunos mecanicos son expertos pero no tiene el certificado (no están en la tabla TEXPERTOS)
--		**	Algunas ya asignadas
--
--	Datos basados en el juego de navegador - Kantai Collection (艦隊これくしょん) -
--

DELETE FROM TASISTENCIAS;
DELETE FROM TCONTENIDOCURSO;
DELETE FROM TCURSOS;
DELETE FROM TEXPERTOS;
DELETE FROM TSUSTITUCIONES;
DELETE FROM TINTERVENCIONES;
DELETE FROM TAVERIAS;
DELETE FROM TREPUESTOS;
DELETE FROM TMECANICOS;
DELETE FROM TCARGOS;
DELETE FROM TFACTURAS;
DELETE FROM TMEDIOSPAGO;
DELETE FROM TVEHICULOS;
DELETE FROM TTIPOSVEHICULO;
DELETE FROM TCLIENTES;
--Clientes
INSERT INTO TCLIENTES VALUES(1,'ILLAS','Calle de Gascona','03023','Morales','470909855','Rita');
INSERT INTO TCLIENTES VALUES(2,'MIERES','Av de Roma','76794','Gutierrez Marian','105422942','Roberto');
INSERT INTO TCLIENTES VALUES(3,'NOREÑA','Calle de la Tenderina Alta','10005','Navarro Delgado','084750674','Astrid');
INSERT INTO TCLIENTES VALUES(4,'CUDILLERO','Calle de José Antonio Elola Olaso','92087','Smith','747673378','Maribel');
INSERT INTO TCLIENTES VALUES(5,'NAVA','Calle de la buena pipa','11870','Iglesias Romero','794628214','Sara');
INSERT INTO TCLIENTES VALUES(6,'RIBADESELLA','Av Las Segadas','09293','Hernundez Gutiperrez','558944484','Luis');
INSERT INTO TCLIENTES VALUES(7,'CASTRILLÓN','Calle de Ignacio Herrero Garralda','30713','Ortiz Serrano','081776001','Josua');
INSERT INTO TCLIENTES VALUES(8,'NAVA','C/ Ruado Caudal','86265','Martan Donguez','038744472','Sancho');
INSERT INTO TCLIENTES VALUES(9,'VILLAYÓN','Calle de Jesís Castro','47215','Ramos Garcuda','429871336','Mark');
INSERT INTO TCLIENTES VALUES(10,'TINEO','Calle de Bernardo Casielles','07897','Maron Delgado','384626002','Covadonga');
--TipoVehículos
INSERT INTO TTIPOSVEHICULO VALUES(1, 100, 'Destroyer', 25.0E0);
INSERT INTO TTIPOSVEHICULO VALUES(2, 80, 'Cruiser',  30.0E0);				
INSERT INTO TTIPOSVEHICULO VALUES(5, 190, 'Battleship',   55.0E0);			
INSERT INTO TTIPOSVEHICULO VALUES(3, 120, 'Carrier', 40.0E0);
INSERT INTO TTIPOSVEHICULO VALUES(4, 130, 'Submarine', 50.0E0);
--Vehículos
INSERT INTO TVEHICULOS VALUES(1,'Mutsuki-class','11B','Mutsuki',0,1,1);
INSERT INTO TVEHICULOS VALUES(2,'Mutsuki-class','11C','Yayoi',0,2,1);
INSERT INTO TVEHICULOS VALUES(3,'Fubuki-class','12B','Murakumo',0,3,1);
INSERT INTO TVEHICULOS VALUES(4,'Akatsuki-class','12T','Hibiki',0,4,1);
INSERT INTO TVEHICULOS VALUES(5,'Shiratsuyu-class','11P','Yuudachi',0,5,1);
INSERT INTO TVEHICULOS VALUES(6,'Tenryuu-class','88A','Tenryuu',0,5,2);
INSERT INTO TVEHICULOS VALUES(7,'Tenryuu-class','89A','Tatsuta',0,1,2);
INSERT INTO TVEHICULOS VALUES(8,'Mogami-class','11M','Mikuma',0,7,2);
INSERT INTO TVEHICULOS VALUES(9,'Mogami-class','89M','Mogami',0,6,2);
INSERT INTO TVEHICULOS VALUES(10,'Admiral-Hipper-class','77G','Prinz Eugen Kai',0,8,2);
INSERT INTO TVEHICULOS VALUES(11,'Kongou-class','99B','Kongou',0,9,5);
INSERT INTO TVEHICULOS VALUES(12,'Kongou-class','91K','Kirishima',0,10,5);
INSERT INTO TVEHICULOS VALUES(13,'Nagato-class','97N','Nagato',0,1,5);
INSERT INTO TVEHICULOS VALUES(14,'Nagato-class','66Q','Mutsu',0,8,5);
INSERT INTO TVEHICULOS VALUES(15,'Bismarck-class','66U','Bismarck',0,8,5);
INSERT INTO TVEHICULOS VALUES(16,'Fusou-class','19U','Fusou',0,9,5);
INSERT INTO TVEHICULOS VALUES(17,'Fusou-class','20U','Yamashiro',0,2,5);
INSERT INTO TVEHICULOS VALUES(18,'Shouhou-class','21C','Zuihou',0,1,3);
INSERT INTO TVEHICULOS VALUES(19,'Chitose-class','22C','Chiyoda',0,2,3);
INSERT INTO TVEHICULOS VALUES(20,'Akagi-class','24C','Akagi',0,4,3);
INSERT INTO TVEHICULOS VALUES(21,'Kaga-class','30D','Kaga',0,7,3);
INSERT INTO TVEHICULOS VALUES(22,'Shoukaku-class','25C','Shoukaku',0,8,3);
INSERT INTO TVEHICULOS VALUES(23,'Shoukaku-class','94A','Zuikaku',0,2,3);
INSERT INTO TVEHICULOS VALUES(24,'Unryuu-class','50A','Amagi',0,3,3);
INSERT INTO TVEHICULOS VALUES(25,'Graf-Zeppelin-class','51Z','Graf Zeppelin',0,3,3);
INSERT INTO TVEHICULOS VALUES(26,'IXC U-boat','47Q','U-511',0,7,4);
INSERT INTO TVEHICULOS VALUES(27,'Junsen Type B','48Q','I-19',0,5,4);
INSERT INTO TVEHICULOS VALUES(28,'Junsen Type B','49Q','I-58',0,1,4);
INSERT INTO TVEHICULOS VALUES(29,'Junsen 3','47T','I-8',0,3,4);
INSERT INTO TVEHICULOS VALUES(30,'Kaidai VI','47Y','I-168',0,9,4);
INSERT INTO TVEHICULOS VALUES(31,'Mutsuki-class','11A','Kisaragi',0,1,1);
--Cursos
INSERT INTO TCURSOS VALUES(1,'CD1','Custro sobre Destroyers',60,'Destroyers 1');
INSERT INTO TCONTENIDOCURSO VALUES(1,1,100);
INSERT INTO TCURSOS VALUES(2,'CD2','Segundo curso sobre Destroyers',60,'Destroyers 2');
INSERT INTO TCONTENIDOCURSO VALUES(2,1,100);
INSERT INTO TCURSOS VALUES(3,'CCL','Curso sobre Light Cruisers',60,'Light Cruisers 1');
INSERT INTO TCONTENIDOCURSO VALUES(3,2,100);
INSERT INTO TCURSOS VALUES(4,'CB1','Iniciación a Battleships',60,'Battleships 1');
INSERT INTO TCONTENIDOCURSO VALUES(4,5,100);
INSERT INTO TCURSOS VALUES(5,'CB2','Curso avanzado sobre Battleships',60,'Battleships 2');
INSERT INTO TCONTENIDOCURSO VALUES(5,5,100);
INSERT INTO TCURSOS VALUES(6,'C1','Curso sobre barcos de combate',60,'Barcos de combate 1');
INSERT INTO TCONTENIDOCURSO VALUES(6,1,20);
INSERT INTO TCONTENIDOCURSO VALUES(6,3,10);
INSERT INTO TCONTENIDOCURSO VALUES(6,4,20);
INSERT INTO TCONTENIDOCURSO VALUES(6,5,50);
INSERT INTO TCURSOS VALUES(7,'E1','Curso sobre barcos para expediciones',60,'Barcos de expediciones 1');
INSERT INTO TCONTENIDOCURSO VALUES(7,1,60);
INSERT INTO TCONTENIDOCURSO VALUES(7,3,40);
INSERT INTO TCURSOS VALUES(8,'CM1','Curso dedicado a todos los barcos de la flota',120,'Curso maestro 1');
INSERT INTO TCONTENIDOCURSO VALUES(8,1,20);
INSERT INTO TCONTENIDOCURSO VALUES(8,2,20);
INSERT INTO TCONTENIDOCURSO VALUES(8,3,20);
INSERT INTO TCONTENIDOCURSO VALUES(8,4,20);
INSERT INTO TCONTENIDOCURSO VALUES(8,5,20);
INSERT INTO TCURSOS VALUES(9,'CS1','Curso sobre submarinos',60,'Submarinos 101');
INSERT INTO TCONTENIDOCURSO VALUES(9,4,100);
INSERT INTO TCURSOS VALUES(10,'CC1','Curso de iniciación de Carriers',60,'Carriers y tú');
INSERT INTO TCONTENIDOCURSO VALUES(10,3,100);
INSERT INTO TCURSOS VALUES(11,'CCH','Curso sobre Heavy Cruisers',60,'Heavy Cruisers 1');
INSERT INTO TCONTENIDOCURSO VALUES(11,2,100);
INSERT INTO TCURSOS VALUES(12,'CM2','Curso dedicado a todos los barcos de la flota',60,'Curso maestro 2');
INSERT INTO TCONTENIDOCURSO VALUES(12,1,20);
INSERT INTO TCONTENIDOCURSO VALUES(12,2,20);
INSERT INTO TCONTENIDOCURSO VALUES(12,3,20);
INSERT INTO TCONTENIDOCURSO VALUES(12,4,20);
INSERT INTO TCONTENIDOCURSO VALUES(12,5,20);
--Mecanicos
INSERT INTO TMECANICOS VALUES(1,'Pepez','1234A','Pepe');
INSERT INTO TMECANICOS VALUES(2,'Rodrigez','1234B','Rodrigo');
INSERT INTO TMECANICOS VALUES(3,'Garciez','1234C','Garcio');
INSERT INTO TMECANICOS VALUES(4,'Labez','1234D','Lab');
INSERT INTO TMECANICOS VALUES(5,'Lorez','1234E','Loro');
INSERT INTO TMECANICOS VALUES(6,'Faletez','1234F','Falete');
INSERT INTO TMECANICOS VALUES(7,'Amapolez','1234G','Amapola');
INSERT INTO TMECANICOS VALUES(8,'Enriquetez','1234H','Enriqueta');
--Asistencia
INSERT INTO TASISTENCIAS VALUES(1,1,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(1,2,'NO_APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(1,3,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(1,8,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(2,3,'APTO','1920-05-01','1920-02-02',90);
INSERT INTO TASISTENCIAS VALUES(2,4,'APTO','1917-05-01','1917-02-02',90);
INSERT INTO TASISTENCIAS VALUES(2,5,'NO_APTO','1917-05-01','1917-02-02',15);
INSERT INTO TASISTENCIAS VALUES(2,6,'APTO','1917-05-01','1917-02-02',98);
INSERT INTO TASISTENCIAS VALUES(2,7,'NO_APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(2,8,'APTO','1920-05-01','1920-02-02',90);
INSERT INTO TASISTENCIAS VALUES(3,1,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(3,4,'NO_APTO','1920-05-01','1920-02-02',100);
INSERT INTO TASISTENCIAS VALUES(3,6,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(3,7,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(3,8,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(4,2,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(4,3,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(4,4,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(4,5,'APTO','1919-05-01','1919-02-02',90);
INSERT INTO TASISTENCIAS VALUES(4,6,'NO_APTO','1920-05-01','1920-02-02',100);
INSERT INTO TASISTENCIAS VALUES(5,4,'NO_APTO','1919-05-01','1919-02-02',15);
INSERT INTO TASISTENCIAS VALUES(5,5,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(5,6,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(5,7,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(6,1,'NO_APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(6,2,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(6,3,'APTO','1919-05-01','1919-02-02',98);
INSERT INTO TASISTENCIAS VALUES(6,4,'NO_APTO','1920-05-01','1920-02-02',100);
INSERT INTO TASISTENCIAS VALUES(6,7,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(6,8,'APTO','1917-05-01','1917-02-02',100);
INSERT INTO TASISTENCIAS VALUES(7,2,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(7,3,'APTO','1918-05-01','1918-02-02',95);
INSERT INTO TASISTENCIAS VALUES(7,4,'NO_APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(7,5,'NO_APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(7,8,'NO_APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(8,1,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(8,2,'APTO','1920-05-01','1920-02-02',100);
INSERT INTO TASISTENCIAS VALUES(8,6,'APTO','1918-05-01','1918-02-02',90);
INSERT INTO TASISTENCIAS VALUES(8,7,'NO_APTO','1918-05-01','1918-02-02',70);
INSERT INTO TASISTENCIAS VALUES(8,8,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(9,1,'APTO','1918-05-01','1918-02-02',90);
INSERT INTO TASISTENCIAS VALUES(9,2,'NO_APTO','1918-05-01','1918-02-02',50);
INSERT INTO TASISTENCIAS VALUES(9,3,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(9,8,'NO_APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(10,3,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(10,4,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(10,5,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(10,6,'NO_APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(10,7,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(10,8,'APTO','1920-05-01','1920-02-02',100);
INSERT INTO TASISTENCIAS VALUES(11,1,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(11,4,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(11,6,'APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(11,7,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(11,8,'NO_APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(12,2,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(12,3,'NO_APTO','1918-05-01','1918-02-02',80);
INSERT INTO TASISTENCIAS VALUES(12,4,'APTO','1918-05-01','1918-02-02',100);
INSERT INTO TASISTENCIAS VALUES(12,5,'NO_APTO','1919-05-01','1919-02-02',100);
INSERT INTO TASISTENCIAS VALUES(12,6,'NO_APTO','1920-05-01','1920-02-02',80);
--Expertos
INSERT INTO TEXPERTOS VALUES(1,2,'1924-11-22');
INSERT INTO TEXPERTOS VALUES(3,1,'1924-11-22');
INSERT INTO TEXPERTOS VALUES(4,1,'1924-11-22');
INSERT INTO TEXPERTOS VALUES(7,2,'1924-11-22');
INSERT INTO TEXPERTOS VALUES(8,2,'1924-11-22');
--Averías
INSERT INTO TAVERIAS VALUES(4,'La puerta de los baños tiene el pestillo roto.','1924-08-03',0.0E0,'ASIGNADA',NULL,4,1);
INSERT INTO TAVERIAS VALUES(5,'Hay un exceso de gatos.','1924-04-01',0.0E0,'ASIGNADA',NULL,3,2);
INSERT INTO TAVERIAS VALUES(6,'No arranca bien.','1925-01-08',0.0E0,'ABIERTA',NULL,NULL,21);
INSERT INTO TAVERIAS VALUES(7,'Tiene las bombillas fundidas.','1924-11-01',0.0E0,'ABIERTA',NULL,NULL,17);
INSERT INTO TAVERIAS VALUES(8,'Cambio de aceite','1924-01-12',0.0E0,'ABIERTA',NULL,NULL,15);
INSERT INTO TAVERIAS VALUES(9,'Hay una fuga de agua.','1924-01-01',0.0E0,'ABIERTA',NULL,NULL,13);
INSERT INTO TAVERIAS VALUES(10,'Está en el fondo del mar','1924-06-06',0.0E0,'ABIERTA',NULL,NULL,1);