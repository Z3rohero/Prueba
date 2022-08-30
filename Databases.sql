CREATE TABLE if not EXISTS Vendedor(
  id int auto_increment,
  nombre_completo  varchar (100),
  primer_apellido  varchar (100),
  fecha_vendi date,
  fecha_naci  date,
  constraint id_pk  primary key(id)
);

 CREATE TABLE if not EXISTS productos(
  id int auto_increment,
  nombre_producto varchar (100),
  precio_venta  int(100),
  radicado boolean,
  enviado boolean,
  cancelado boolean,
  cantidad_exitencias int(100),
  surcusal  varchar(100),
  constraint id_pk  primary key(id)    
);

 CREATE TABLE if not EXISTS fecha_envio ( 
  id int auto_increment ,
  cedula_cliente int (100),
  fecha_envio date,
  constraint id_pk  primary key(id)   
  
);



CREATE TABLE if not EXISTS cliente_nuevo(
  id int auto_increment ,
  id_vender int , 
  id_fecha_envio int,
  id_producto int,
  cedula int(100),
  nombre_completo  varchar (100),
  primer_apellido  varchar (20),
  segundo_apellido  varchar (100),
  sexo  char(1),
  fecha_naci varchar(10),
  correo  varchar  (10),
  constraint correo_uq unique,
  constraint cedula_uq unique,
  constraint cedula_pk  primary key(cedula),
  constraint  id_vender_fk  foreign key (id_vender) references  Vendedor(id),
  constraint  id_fecha_envio_fk  foreign key (id_fecha_envio) references  fecha_envio(id),
  constraint  id_nombre_producto_fk  foreign key ( id_producto ) references  productos(id)   
);
