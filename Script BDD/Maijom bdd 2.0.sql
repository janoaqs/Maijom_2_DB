/*Base de datos*/
create database Maijom;
use Maijom;


/*Tablas principales*/
create table Persona (
rut_persona varchar(12) primary key,
nombres_persona varchar(50) not null,
apellido1_persona varchar(20) not null,
apellido2_persona varchar(20) not null,
f_nacimiento_persona date not null,
sexo_persona varchar(1) not null,
nacionalidad_persona varchar(20) not null,
discapacidad_persona boolean not null
)ENGINE = InnoDB;

create table Direccion(
id_direccion int primary key auto_increment,
calle_direccion varchar(30) not null,
numero_direccion varchar(10) not null
)ENGINE = InnoDB;

create table Comuna(
id_comuna varchar(10) primary key,
nombre_comuna varchar(30) not null
)ENGINE = InnoDB;

create table Region(
id_region varchar(10) primary key,
nombre_region varchar(30) not null
)ENGINE = InnoDB;

create table Tramo(
id_tramo int primary key auto_increment,
nombre_tramo varchar(30) not null,
ahorro_minuf_tramo int not null,
valor_maxuf_tramo int not null,
tope_ingresos_tramo int not null,
tope_vulnerabilidad_tramo int not null
)ENGINE = InnoDB;

create table RSH(
id_rsh int primary key auto_increment,
calificacion_rsh int not null
)ENGINE = InnoDB;

create table Solicitud(
id_solicitud int primary key auto_increment,
fecha_solicitud date not null
)ENGINE = InnoDB;

create table Postulacion(
id_postulacion int primary key auto_increment,
fecha_inicio_postulacion date not null,
fecha_fin_postulacion date not null,
puntajecorte_postulacion int not null
)ENGINE = InnoDB;

create table Subsidio(
id_subsidio int primary key auto_increment,
nombre_subsidio varchar(100) not null,
codigo_subsidio varchar(10) not null,
descripcion_subsidio varchar(300) not null
)ENGINE = InnoDB;

create table Estado(
id_estado varchar(10) primary key,
nombre_estado varchar(30) not null
)ENGINE = InnoDB;

create table Serviu(
id_serviu varchar(10) primary key,
nombre_serviu varchar(30) not null
)ENGINE = InnoDB;

create table Administrador(
id_admin int primary key auto_increment,
nombre_admin varchar(15) not null,
apellido_admin varchar(15) not null,
cargo_admin varchar(30) not null
)ENGINE = InnoDB;

create table Cuenta(
id_cuenta int primary key auto_increment,
tipo_cuenta varchar(20) not null,
monto_cuenta int not null
)ENGINE = InnoDB;

create table Usuario(
id_usuario int primary key auto_increment,
nombre_usuario varchar(30) not null,
password_usuario varchar(30) not null
)ENGINE = InnoDB;

create table Inmobiliaria(
id_inmobiliaria int primary key auto_increment,
nombre_inmobiliaria varchar(30) not null,
telefono_inmobiliaria varchar(30) not null
)ENGINE = InnoDB;

create table ClaveU(
id_claveu int primary key auto_increment,
password_claveu varchar(30) not null
)ENGINE = InnoDB;

create table Banco(
id_banco int primary key auto_increment,
nombre_banco varchar(30) not null
)ENGINE = InnoDB;

create table Imagen(
id_imagen int primary key auto_increment,
nombre_imagen varchar(30) not null,
url_imagen varchar(100) not null
)ENGINE = InnoDB;

create table Noticia(
id_noticia int primary key auto_increment,
descripcion_noticia varchar(500) not null,
fecha_noticia date not null
)ENGINE = InnoDB;

create table Proyecto(
id_proyecto int primary key auto_increment,
casas_disp_proyecto int not null,
descripcion_proyecto varchar(1000) not null,
nombre_proyecto varchar(30) not null
)ENGINE = InnoDB;

/*Tablas intermedias*/
create table PersonaRSH(
rut_persona varchar(12) not null,
id_rsh int not null,
parentezco varchar(20) not null,
fecha_ingreso date not null,
constraint Fk_personarsh primary key(rut_persona,id_rsh),
constraint Fk_personarsh_persona foreign key(rut_persona) references Persona(rut_persona),
constraint Fk_personarsh_rsh foreign key(id_rsh) references RSH(id_rsh)
)ENGINE = InnoDB;

create table NoticiaImagen(
id_noticia int not null,
id_imagen int not null,
constraint Fk_noticiaimagen primary key(id_noticia,id_imagen),
constraint Fk_noticiaimagen_noticia foreign key(id_noticia) references Noticia(id_noticia),
constraint Fk_noticiaimagen_imagen foreign key(id_imagen) references Imagen(id_imagen)
)ENGINE = InnoDB;

create table ProyectoImagen(
id_proyecto int not null,
id_imagen int not null,
constraint Fk_proyectoimagen primary key(id_proyecto,id_imagen),
constraint Fk_proyectoimagen_proyecto foreign key(id_proyecto) references Proyecto(id_proyecto),
constraint Fk_proyectoimagen_imagen foreign key(id_imagen) references Imagen(id_imagen)
)ENGINE = InnoDB;

/*Claves foraneas*/
alter table Direccion
add id_comuna varchar(10) not null,
add constraint Fk_direccion_comuna foreign key(id_comuna) references Comuna(id_comuna);

alter table Comuna
add id_region varchar(10) not null,
add constraint Fk_comuna_region foreign key(id_region) references Region(id_region);

alter table Tramo
add id_subsidio int not null,
add constraint Fk_tramo_subsidio foreign key(id_subsidio) references Subsidio(id_subsidio);

alter table RSH
add id_direccion int not null,
add constraint Fk_rsh_direccion foreign key(id_direccion) references Direccion(id_direccion);

alter table Solicitud
add id_postulacion int not null,
add id_rsh int not null,
add id_estado varchar(10) not null,
add id_cuenta int not null,
add constraint Fk_solicitud_postulacion foreign key(id_postulacion) references Postulacion(id_postulacion),
add constraint Fk_solicitud_rsh foreign key(id_rsh) references RSH(id_rsh),
add constraint Fk_solicitud_estado foreign key(id_estado) references Estado(id_estado),
add constraint Fk_solicitud_cuenta foreign key(id_cuenta) references Cuenta(id_cuenta);

alter table Postulacion
add id_subsidio int not null,
add id_tramo int not null,
add id_estado varchar(10) not null,
add id_serviu varchar(10) not null,
add constraint Fk_postulacion_subsidio foreign key(id_subsidio) references Subsidio(id_subsidio),
add constraint Fk_postulacion_tramo foreign key(id_tramo) references Tramo(id_tramo),
add constraint Fk_postulacion_estado foreign key(id_estado) references Estado(id_estado),
add constraint Fk_postulacion_serviu foreign key(id_serviu) references Serviu(id_serviu);

alter table Cuenta
add id_banco int not null,
add rut_persona varchar(12) not null,
add constraint Fk_cuenta_banco foreign key(id_banco) references Banco(id_banco),
add constraint Fk_cuenta_persona foreign key(rut_persona) references Persona(rut_persona);

alter table Usuario
add id_direccion int not null,
add constraint Fk_usuario_direccion foreign key(id_direccion) references Direccion(id_direccion);

alter table Serviu
add id_usuario int not null,
add id_region varchar(10) not null,
add constraint Fk_serviu_usuario foreign key(id_usuario) references Usuario(id_usuario),
add constraint Fk_serviu_region foreign key(id_region) references Region(id_region);

alter table Administrador
add id_usuario int not null,
add constraint Fk_administrador_usuario foreign key(id_usuario) references Usuario(id_usuario);

alter table Inmobiliaria
add id_usuario int not null,
add constraint Fk_inmobiliaria_usuario foreign key(id_usuario) references Usuario(id_usuario);

alter table ClaveU
add rut_persona varchar(12) not null,
add constraint Fk_claveu_persona foreign key(rut_persona) references Persona(rut_persona);

alter table Noticia
add id_usuario int not null,
add constraint Fk_noticia_usuario foreign key(id_usuario) references Usuario(id_usuario);

alter table Proyecto
add id_inmobiliaria int not null,
add id_subsidio int not null,
add id_direccion int not null,
add constraint Fk_proyecto_inmobiliaria foreign key(id_inmobiliaria) references Inmobiliaria(id_inmobiliaria),
add constraint Fk_proyecto_subisdio foreign key(id_subsidio) references Subsidio(id_subsidio),
add constraint Fk_proyecto_direccion foreign key(id_direccion) references Direccion(id_direccion);