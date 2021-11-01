INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (1,'Federico','Moreno Rodríguez','federico@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (2,'Francisco','Moreno Rodríguez','francisco@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (3,'Alan','Hernandez','Alan@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (4,'Lucas','Ramirez','Lucas@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (5,'Marcelo','Montoya','Marcelo@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (6,'Diego','Godoy','Diego@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (7,'Guille','Alvarez','Guille@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (8,'Mario','Reynoso','Mario@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (9,'Fernanda','Vallejos','Fernanda@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (10,'Flavia','Del Valle','Flavia@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (11,'Johana','Banana','Johana@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (12,'Zoraida','Gonzales','Zoraida@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (13,'Emilia','Pereyra','Emilia@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (14,'Gabriel','Mendez','Gabriel@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (15,'Gabriela','Cipitelli','Gabriela@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (16,'Teresa','Arjona','Teresa@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (17,'Ernesto','Young','Ernesto@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (18,'Alexandra','Vega','Alexandra@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (19,'Ximena','Gutierrez','Ximena@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (20,'Rodolfo','Herrera','Rodolfo@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (21,'Maria','Bregman','Maria@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (22,'Tamara','Gomez','Tamara@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (23,'Antonella','Avila','Antonella@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (24,'Samuel','Estebanes','Samuel@mail.com','2017-08-28', '');
INSERT INTO clientes (id,nombre,apellido,email,create_at, foto) VALUES (25,'Piyita','Soria','Piyita@mail.com','2017-08-28', '');

INSERT INTO productos (nombre,precio,create_at) VALUES ("Panasonic Pantalla LCD","25000", NOW());
INSERT INTO productos (nombre,precio,create_at) VALUES ("Sony Camara Digital DSC-W3208","12349", NOW());
INSERT INTO productos (nombre,precio,create_at) VALUES ("Apple Ipod suffle","15780", NOW());
INSERT INTO productos (nombre,precio,create_at) VALUES ("Sony Notebook Z110","37456", NOW());
INSERT INTO productos (nombre,precio,create_at) VALUES ("Hawlett Packard Multifuncional F2280","18782", NOW());
INSERT INTO productos (nombre,precio,create_at) VALUES ("Bianchi Bicicleta Aro 26","69547", NOW());
INSERT INTO productos (nombre,precio,create_at) VALUES ("Mica Comoda 5 Cajones","43881", NOW());

INSERT INTO users (username, password, enabled) VALUES ("Fede","$2a$10$PxZ05AgTyVKq3W1W3hS/7.AY0W/GY1GVbHeQyuDmkaq1xhi5zGm6u",1);
INSERT INTO users (username, password, enabled) VALUES ("Admin","$2a$10$xlEDI2vArnKx6RnfuJXHn.xxftwPId3Uuu045BJS1kz/xSJrgrC4S",1);

INSERT INTO authorities (user_id, authority) VALUES (1,"ROLE_USER");
INSERT INTO authorities (user_id, authority) VALUES (2,"ROLE_ADMIN");
INSERT INTO authorities (user_id, authority) VALUES (2,"ROLE_USER");
