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

/*Creacion de registros sociales de hogares y personas*/
/*RSH 1*/
insert into Direccion values(4,'Ejército','1024','CM6');
insert into RSH values(1,20,4);
insert into Persona values ('74505015','Oscar del Tránsito','Quintana','Castillo','1954-08-23','M','Chilena',true);
insert into Persona values ('75254113','María Magdalena','Sanhueza','Herrera','1954-04-28','F','Chilena',false);
insert into Persona values ('167088775','Oscar Alejandro','Quintana','Sanhueza','1988-03-01','M','Chilena',false);
insert into PersonaRSH values('74505015',1,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('75254113',1,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('167088775',1,'Hijo(a) de ambos','2022-08-14');

/*RSH #*/
insert into Direccion values(id,'Calle','Numero','Comuna');
insert into RSH values(id,calificacion,direccion);
insert into Persona values ('rut','Nombres','Apellido1','Apellido2','1954-08-23','M','Chilena',true);
insert into Persona values ('rut','Nombres','Apellido1','Apellido2','1954-08-23','M','Chilena',true);
insert into Persona values ('rut','Nombres','Apellido1','Apellido2','1954-08-23','M','Chilena',true);
insert into PersonaRSH values('rut',idficha,'Jefe(a) de hogar','2022-08-14');
insert into PersonaRSH values('rut',idficha,'Conyugue o pareja','2022-08-14');
insert into PersonaRSH values('rut',idficha,'Hijo(a) de ambos','2022-08-14');




