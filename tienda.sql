create database tienda;

use tienda;

create table CLIENTE (
Id_cliente int not null auto_increment primary key,
Nombre VARCHAR(30),
Email VARCHAR(30),
Contrasena VARCHAR(30),
Telefono INT,
Ciudad VARCHAR(30)
);

create table ORDEN (
Id_orden int not null auto_increment primary key,
Id_cliente INT,
Direccion_entrega VARCHAR(30),
correo_orden  VARCHAR(30),
fecha_orden Datetime,
estado_orden  VARCHAR(30),
	FOREIGN KEY (Id_cliente) REFERENCES CLIENTE (Id_cliente) 
	ON UPDATE RESTRICT ON DELETE CASCADE
);


create table CATEGORIA(
Id_categoria int not null auto_increment primary key,
Nombre VARCHAR(30)
);


create table PRODUCTO(
Id_producto int not null auto_increment primary key,
Id_categoria INT,
SKU VARCHAR(10),
Nombre VARCHAR(30),
Precio FLOAT,
Descripcion VARCHAR(256),
Stock INT,
	FOREIGN KEY (Id_categoria) REFERENCES CATEGORIA (Id_categoria) 
	ON UPDATE RESTRICT ON DELETE CASCADE
);




create table DETALLE_ORDEN(
Id_detalle_orden int not null auto_increment primary key,
Id_orden INT,
Id_producto INT,
Precio FLOAT,
Cantidad INT,
	FOREIGN KEY (Id_orden) REFERENCES ORDEN (Id_orden) 
	ON UPDATE RESTRICT ON DELETE CASCADE,
	FOREIGN KEY (Id_producto) REFERENCES PRODUCTO (Id_producto) 
	ON UPDATE RESTRICT ON DELETE CASCADE

);

create table CARRITO_CLIENTE(
Id_carrito_cliente int not null auto_increment primary key,
Id_cliente INT unique,
confirmacion varchar(5),
estado varchar(10),
    FOREIGN KEY (Id_cliente) REFERENCES CLIENTE (Id_cliente) 
	ON UPDATE RESTRICT ON DELETE CASCADE
);

create table CARRITO(
Id_carrito int not null auto_increment primary key,
Id_carrito_cliente INT,
Id_producto INT,
Cantidad INT,
    FOREIGN KEY (Id_producto) REFERENCES PRODUCTO (Id_producto) 
	ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (Id_carrito_cliente) REFERENCES CARRITO_CLIENTE (Id_carrito_cliente) 
	ON UPDATE RESTRICT ON DELETE CASCADE
);



INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (1, 'Esteban', 'esteban1@gmail.com', 'contranueva', 39854350, 'Manizales');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (2, 'Majo', 'majos2@gmail.com', 'lobito', 37294639, 'Bucaramanga');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (3, 'Natalia', 'nati3@gmail.com', 'mariposa', 35894858, 'Bogota');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (4, 'Sebastian', 'sebas4@gmail.com', 'ositocari??osito', 38954519, 'Ibague');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (5, 'Antonio', 'antonito5@gmail.com', 'tortugaveloz', 34983238, 'Cali');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (6, 'Maria', 'mariaAntionet6@gmail.com', 'libelula', 30945123, 'Pasto');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (7, 'Jose', 'joselito7@gmail.com', 'aguilaciega', 31205084, 'Bucaramanga');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (9, 'Laura', 'LauSp@gmail.com', 'mariquita', 38487501, 'Bogota');
INSERT INTO CLIENTE (Id_cliente, Nombre, Email, Contrasena, Telefono, Ciudad) VALUES (10, 'Isis', 'ikatitza12@gmail.com', 'gatooo', 35047463, 'Medellin');

INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (101, 'Pan frances');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (102, 'Pan italiano');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (103, 'Pan canadiense');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (104, 'Pan norteamericano');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (105, 'Pan ruso');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (106, 'Pan noruego');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (107, 'Pan japones');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (108, 'Pan chileno');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (109, 'Pan africano');
INSERT INTO CATEGORIA (Id_categoria, Nombre) VALUES (110, 'Pan colombiano');


INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (147369,101,'SRA17893','Pan de centeno',3000,'El pan de centeno es f??cilmente reconocible: su miga es m??s densa y oscura que el pan blanco.',15);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (173682,102,'EPA91375','Baguette francesa',5000,'Podemos decir que la baguette es uno de los s??mbolos nacionales de Francia. Es f??cil encontrarlas en postales parisinas junto a la Torre Eiffel.',25);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (778335,103,'QWP11765','Bagel',2000,'El bagel es un pan que m??s bien parece una rosquilla por su agujero en el centro. Su miga es esponjosa y su exterior ligeramente crujiente.',20);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (334678,104,'HGM17336','Pan de ajo',3000,'Bastan tres ingredientes b??sicos para crear un delicioso pan de ajo: pan tostado, aceite de oliva y ajo troceado.',10);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (147669,105,'ALM18996','Pan de hogaza',3000,'El pan de hogaza es un verdadero patrimonio gastron??mico espa??ol. ',20);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (116899,106,'POL73995','Foccacia',5000,'La foccacia es un pan que nos recuerda un poco al de pizza. Con forma plana, cubierto de hierbas y ali??ado con aceite de oliva.',12);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (335710,107,'AZX14785','Pan de queso',3000,'El pan de queso o P??o de Queijo es una delicia brasile??a elaborada con almid??n de yuca.',16);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (147305,108,'ERT14006','Pumpernickel',4000,'La regi??n alemana de Westfalia elabora su propio pan de centeno: el Pumpernickel. Es un tipo de pan integral marr??n hecho con centeno poco molido.',12);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (223056,109,'MLP14368','Pan de pita',2000,'Crujiente por fuera y hueco por dentro. As?? es el delicioso pan de pita, un pan tradicional de Oriente Medio.',17);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (147832,110,'KLS13698','Pan de mollete',2000,'Todo buen desayuno andaluz deber??a llevar siempre un pan de mollete. Con miga blanda y forma redondeada.',18);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (179631,101,'QWE14368','Chapata',2000,'El pan de chapata es uno de los preferidos para hacer bocadillos. Inventado en Italia como ciabatta o giabata, este pan blanco tiene una corteza gruesa que cruje nada m??s morderla.',20);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (147932,102,'MNB14236','Pan Naan',4000,'En pa??ses como la India, Afganist??n o Pakist??n se consume un pan muy plano conocido como naan.',23);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (128653,103,'PQH13645','Pan lavash',5000,'En Armenia y otros pa??ses del Ca??caso es muy com??n encontrar el pan lavash, un pan de origen persa muy similar al blanco tradicional.',0);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (147632,104,'PZV70036','Pan pay??s',3000,'Todo viaje a Catalu??a se merece una buena comida. Y si es acompa??ado de un buen pan pay??s, mejor que mejor. ',17);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (156830,105,'GDL43856','Stollen',5000,'En toda Navidad alemana no puede faltar el Christstollen, un pan dulce relleno de nueces y pasas que pone el toque m??s dulce a las fiestas.',16);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (142365,106,'QPO13562','Baozi',4000,'El baozi es el pan cotidiano de la cocina china. Se trata de un tipo de bollo de pan relleno y cocido al vapor que los chinos rellenan con de carne de cerdo y jengibre o incluso con vegetales.',18);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (178935,107,'LSM15520','Piadina',4000,'La piadina es otro pan italiano que nos vuelve locos. Originaria de la regi??n de la Roma??a, este pan plano se cocina con harina de trigo, grasa de cerdo, sal y agua.',19);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (780365,108,'KSL16405','Kn??ckebr??d',3000,'Viajamos a Escandinavia para encontrar un pan muy t??pico de Suecia: el Kn??ckebr??d.',16);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (817803,109,'AQP17605','Pan de ma??z americano',2000,'En el sur de Estados Unidos es muy habitual acompa??ar una barbacoa o una sopa sabrosona con pan de ma??z.  ',14);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (123987,110,'PLJ64532','Pan gallego',2000,'Galicia es tierra de mariscos. Pero tambi??n de panes. Cada pueblo elabora su propio tipo de pan siguiendo las tradiciones m??s ancestrales.',17);
INSERT INTO PRODUCTO(Id_producto,Id_categoria,SKU,Nombre,Precio,Descripcion,Stock) VALUES (743697,101,'ZMC13789','Rugbr??d',4000,'Con una miga esponjosa y suave, el pan de s??mola es una variedad sorprendente.',19);

