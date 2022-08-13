create database Maijom;
use Maijom;

create table Persona (
rut_persona varchar(15) primary key,
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
id_tramo varchar(10) primary key,
nombre_tramo varchar(30) not null,
ahorro_min_tramo int not null,
ufvivienda_tramo int not null
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
fecha_fin_postulacion date not null
)ENGINE = InnoDB;

create table Subsidio(
id_subsidio int primary key auto_increment,
nombre_subsidio varchar(30) not null,
codigo_subsidio varchar(10) not null,
descripcion_subsidio varchar(100) not null
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
descripcion_noticia varchar(100) not null
)ENGINE = InnoDB;

create table Proyecto(
id_proyecto int primary key auto_increment,
casas_disp_proyecto int not null
)ENGINE = InnoDB;