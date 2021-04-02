create database unidadPrecios


create table unidad_medida(
	id_unidad int AUTO_INCREMENT,
	descr char,
	CONSTRAINT PK_IDUNIDAD PRIMARY KEY(id_unidad)
)

create table lista_precios (
    idLP int AUTO_INCREMENT,
    nombre text,
    id_unidad int,
    precio float(9,2),
    descripcion text,
    categoria text,
    CONSTRAINT PK_idLP PRIMARY KEY (idLP),
    CONSTRAINT FK_lista_unidad FOREIGN KEY (id_unidad) REFERENCES unidad_medida (id_unidad)
)

create table clientes(
    idCliente int AUTO_INCREMENT,
    nombreCliente text,
    calle text,
    numEXT text, 
    colonia text,
    CP int,
    estado text,
    CONSTRAINT PK_idCliente PRIMARY KEY (idCliente)
)

create table presupuesto(
    idPresupuesto int AUTO_INCREMENT,
    idCliente int,
    idLP int,
    cantidad float(15,2),
    importe float(15,2),
    totalPres float(15,2),
    -- aaaa-mm-dd
    fecha date,
    CONSTRAINT PK_idPresupuesto PRIMARY KEY (idPresupuesto),
    CONSTRAINT FK_idCliente FOREIGN KEY (idCliente) REFERENCES clientes (idCliente),
    CONSTRAINT FK_idLP FOREIGN KEY (idLP) REFERENCES lista_precios (idLP)
)