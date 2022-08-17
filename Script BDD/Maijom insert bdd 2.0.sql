/*Insert región*/
insert into Region values ('R08','Biobío');

/*Insert comuna*/
insert into Comuna values('CM1','Concepción','R08');
insert into Comuna values('CM2','Chiguayante','R08');
insert into Comuna values('CM3','Coronel','R08');
insert into Comuna values('CM4','Florida','R08');
insert into Comuna values('CM5','Hualpén','R08');
insert into Comuna values('CM6','Hualqui','R08');
insert into Comuna values('CM7','Lota','R08');
insert into Comuna values('CM8','Penco','R08');
insert into Comuna values('CM9','San Pedro de la Paz','R08');
insert into Comuna values('CM10','Santa Juana','R08');
insert into Comuna values('CM11','Talcahuano','R08');
insert into Comuna values('CM12','Tomé','R08');

/*Creacion de usuarios para los clientes*/
/*Serviu Biobio*/
insert into Direccion values(1,'Barros Arana','369',"CM1");
insert into Usuario values (1,'sbiobio','1234',1);
insert into Serviu values ('S08','Serviu Biobío',1,"R08");
/*Inmobiliaria COPASA*/
insert into Direccion values(2,'Paicaví','1036',"CM9");
insert into Usuario values (2,'icopasa','1234',2);
insert into Inmobiliaria values (1,'Inmobiliaria COPASA','412999999',2);
/*Administrador Oscar Quintana jefe de proyecto*/
insert into Direccion values(3,'La Concepción','984',"CM6");
insert into Usuario values (3,'oquintana','1234',3);
insert into Administrador values (1,'Oscar','Quintana','Jefe de proyecto',3);

/*Creacion de registros sociales de hogares y personas y sus claves únicas*/
/*RSH 1*/
insert into Direccion values(4,'Ejército','1024','CM6');
insert into RSH values(1,20,4);
insert into Persona values ('74505015','Oscar del Tránsito','Quintana','Castillo','1954-08-23','M','Chilena',true);
insert into claveU values (1,'1234','74505015');
insert into Persona values ('75254113','María Magdalena','Sanhueza','Herrera','1954-04-28','F','Chilena',false);
insert into claveU values (2,'1234','75254113');
insert into Persona values ('167088775','Oscar Alejandro','Quintana','Sanhueza','1988-03-01','M','Chilena',false);
insert into claveU values (3,'1234','167088775');
insert into PersonaRSH values('74505015',1,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('75254113',1,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('167088775',1,'Hijo(a) de ambos','2022-08-14');

/*RSH 2*/
insert into Direccion values(5,'Esmeralda','986','CM6');
insert into RSH values(2,20,5);
insert into Persona values ('179434067','Marta Andrea','Sanchez','Ulloa','1983-02-15','F','Chilena',false);
insert into claveU values (4,'1234','179434067');
insert into Persona values ('135964972','Marco Antonio','Solis','Fernandez','1982-04-18','M','Chilena',false);
insert into claveU values (5,'1234','135964972');
insert into Persona values ('142252538','Victor Edgardo','Solis','Sanchez','2014-05-11','M','Chilena',false);
insert into claveU values (6,'1234','142252538');
insert into Persona values ('142036568','Joaquin Alexander','Solis','Sanchez','2009-10-08','M','Chilena',false);
insert into claveU values (7,'1234','142036568');
insert into PersonaRSH values('179434067',2,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('135964972',2,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('142252538',2,'Hijo(a) de ambos','2022-08-14');
insert into PersonaRSH values('142036568',2,'Hijo(a) de ambos','2022-08-14');

/*RSH 3*/
insert into Direccion values(6,'Anibal Pinto','3012','CM1');
insert into RSH values(3,20,6);
insert into Persona values ('171618770','Javiera Ignacia','Fernandez','Perez','1975-12-01','F','Chilena',false);
insert into claveU values (8,'1234','171618770');
insert into Persona values ('188966373','Maite Florencia','Araneda','Fernandez','2005-03-03','F','Chilena',false);
insert into claveU values (9,'1234','188966373');
insert into PersonaRSH values('171618770',3,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('188966373',3,'Hijo(a)','2022-08-14');

/*RSH 4*/
insert into Direccion values(7,'Serrano','772','CM1');
insert into RSH values(4,20,7);
insert into Persona values ('105778775','Marcelo','Herrera','Sanhueza','1969-09-15','M','Chilena',false);
insert into claveU values (10,'1234','105778775');
insert into Persona values ('169678588','Edith Rebeca','Vergara','Reyes','1971-01-05','F','Chilena',false);
insert into claveU values (11,'1234','169678588');
insert into Persona values ('126633475','Valentina','Sanhueza','Sierra','1945-10-19','F','Chilena',false);
insert into claveU values (12,'1234','126633475');
insert into Persona values ('135461695','Loreto Catalina','Ruiz','Vergara','2000-11-12','F','Chilena',false);
insert into claveU values (13,'1234','135461695');
insert into Persona values ('80173628','Doris Denis','Herrera','Vergara','2006-02-01','F','Chilena',false);
insert into claveU values (14,'1234','80173628');
insert into Persona values ('155002115','Eduardo Alonso','Herrera','Vergara','2008-09-28','M','Chilena',false);
insert into claveU values (15,'1234','155002115');
insert into PersonaRSH values('105778775',4,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('169678588',4,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('126633475',4,'Madre','2022-08-14');
insert into PersonaRSH values('135461695',4,'Hijastro(a)','2022-08-14');
insert into PersonaRSH values('80173628',4,'Hijo(a) de ambos','2022-08-14');
insert into PersonaRSH values('155002115',4,'Hijo(a) de ambos','2022-08-14');

/*RSH 5*/
insert into Direccion values(8,'Esperenza','22','CM2');
insert into RSH values(5,30,8);
insert into Persona values ('66642429','Kevin Alejandro','Gravilla','Pedreros','1984-04-14','M','Chilena',false);
insert into claveU values (16,'1234','66642429');
insert into Persona values ('97333696','Carolina Fernanda','Lazcano','Urrutia','1990-08-05','F','Chilena',false);
insert into claveU values (17,'1234','97333696');
insert into Persona values ('86345455','Marcos Antonio','Gravilla','Pedreros','1977-11-28','M','Chilena',false);
insert into claveU values (18,'1234','86345455');
insert into Persona values ('105120826','Sebastian Arnoldo','Gravilla','Lazcano','2017-12-08','M','Chilena',false);
insert into claveU values (19,'1234','105120826');
insert into PersonaRSH values('66642429',5,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('97333696',5,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('86345455',5,'Hermano(a)','2022-08-14');
insert into PersonaRSH values('105120826',5,'Hijo(a) de ambos','2022-08-14');

/*RSH 6*/
insert into Direccion values(9,'Los castaños','237','CM2');
insert into RSH values(6,30,9);
insert into Persona values ('172058337','Emilia Fernanda','Toledo','Muñoz','1997-08-10','F','Chilena',false);
insert into claveU values (20,'1234','172058337');
insert into Persona values ('47731976','Francisco Jose','Parra','Aguilera','1998-08-26','M','Chilena',false);
insert into claveU values (21,'1234','47731976');
insert into Persona values ('127835543','Jocelyn Alejandra','Parra','Toledo','2017-02-14','F','Chilena',false);
insert into claveU values (22,'1234','127835543');
insert into PersonaRSH values('172058337',6,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('47731976',6,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('127835543',6,'Hijo(a) de ambos','2022-08-14');

/*RSH 7*/
insert into Direccion values(10,'Los fresnos','12','CM3');
insert into RSH values(7,30,10);
insert into Persona values ('207282952','Felipe Steven','Jara','Estrada','2003-08-02','M','Chilena',false);
insert into claveU values (23,'1234','207282952');
insert into Persona values ('41905557','Leyla Elvira','Belmar','Cifuentes','1999-02-22','F','Chilena',false);
insert into claveU values (24,'1234','41905557');
insert into PersonaRSH values('207282952',7,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('41905557',7,'Conyugue o pareja','2022-08-14');

/*RSH 8*/
insert into Direccion values(11,'Los carrera','763','CM3');
insert into RSH values(8,30,11);
insert into Persona values ('3855106K','Roberto Israel','Fuentes','Alarcón','1977-08-01','M','Chilena',false);
insert into claveU values (25,'1234','3855106K');
insert into Persona values ('117817458','Catalina Andrea','Astorga','Valdebenito','1983-10-03','F','Chilena',false);
insert into claveU values (26,'1234','117817458');
insert into Persona values ('107321802','Judith Alfonsina del Carmen','Alarcón','Campos','1940-07-14','F','Chilena',false);
insert into claveU values (27,'1234','107321802');
insert into Persona values ('115893823','Ricardo Ernesto','Fuentes','Caamaño','1945-07-16','M','Chilena',false);
insert into claveU values (28,'1234','115893823');
insert into Persona values ('5102530K','Daina Elizabeth','Fuentes','Astorga','2004-03-04','F','Chilena',false);
insert into claveU values (29,'1234','5102530K');
insert into Persona values ('100184079','Marisol Alejandra','Fuentes','Astorga','2007-12-23','F','Chilena',false);
insert into claveU values (30,'1234','100184079');
insert into Persona values ('116026961','Ambar Estefania','Fuentes','Astorga','2014-06-20','F','Chilena',false);
insert into claveU values (31,'1234','116026961');
insert into Persona values ('89147050','Fernando Alejandro','Fuentes','Astorga','2021-02-18','M','Chilena',false);
insert into claveU values (32,'1234','89147050');
insert into PersonaRSH values('3855106K',8,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('117817458',8,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('107321802',8,'Madre','2022-08-14');
insert into PersonaRSH values('115893823',8,'Padre','2022-08-14');
insert into PersonaRSH values('5102530K',8,'Hijo(a) de ambos','2022-08-14');
insert into PersonaRSH values('100184079',8,'Hijo(a) de ambos','2022-08-14');
insert into PersonaRSH values('116026961',8,'Hijo(a) de ambos','2022-08-14');
insert into PersonaRSH values('89147050',8,'Hijo(a) de ambos','2022-08-14');

/*Bancos*/
insert into Banco values(1,'Scotiabank');
insert into Banco values(2,'Desarrollo');
insert into Banco values(3,'Coopeuch');
insert into Banco values(4,'BancoEstado');

/*Cuentas de ahorro*/
insert into Cuenta values(1,'Ahorro vivienda',2000000,1,'74505015');
insert into Cuenta values(2,'Ahorro vivienda',2000000,1,'179434067');
insert into Cuenta values(3,'Ahorro vivienda',3000000,2,'171618770');
insert into Cuenta values(4,'Ahorro vivienda',3000000,2,'105778775');
insert into Cuenta values(5,'Ahorro vivienda',4000000,3,'66642429');
insert into Cuenta values(6,'Ahorro vivienda',4000000,3,'172058337');
insert into Cuenta values(7,'Ahorro vivienda',5000000,4,'207282952');
insert into Cuenta values(8,'Ahorro vivienda',5000000,4,'3855106K');

/*Subsidios y tramos*/
insert into Subsidio values(1,'Postulación programa sectores medios','DS1',
'Estos Subsidios están dirigidos a personas con capacidad de ahorro y 
posibilidad de complementar el valor de la vivienda con un crédito hipotecario o recursos propios.');
insert into Tramo values(2,'Tramo 1',30,2600,0,60,1);
insert into Tramo values(3,'Tramo 2',40,2660,0,80,1);
insert into Tramo values(4,'Tramo 3',80,2600,800000,0,1);

insert into Subsidio values(2,'Postulación programa fondo solidario de elección de vivienda','DS49',
'Dirigido a familias que viven en situación de vulnerabilidad social, que no tienen capacidad de endeudamiento.');
insert into Tramo values(5,'Tramo único',10,950,0,40,2);

