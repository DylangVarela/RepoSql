-- Creacion de las tablas principales --
create table clientes(
	id_cliente serial primary key,
	email varchar(200) unique not null
);

create table productos(
	id_productos serial primary key,
	precio decimal(10,2) not null check(precio > 0),
	stock int not null check (stock >= 0) 
);
-- Creación de tabla ventas --
create table ventas(
	id_ventas serial primary key,
	id_cliente int not null references clientes(id_cliente),
	id_producto int not null references productos(id_productos),
	cantidad int not null check (cantidad > 0)
);

-- Insert con begin y commit --
begin;
insert into clientes(email)
	values 
	('juan@gmail.com'),
	('garcia12@gmail.com'),
	('lopezzz@gmail.com'),
	('mark22@gmail.com'),
	('suarezSs@gmail.com');
	
insert into productos(precio , stock)
	values 
	(20.15, 5),
	(5.0, 10),
	(150.0, 7),
	(17.5, 3),
	(11.7, 0);

INSERT INTO ventas(id_cliente, id_producto, cantidad)
VALUES
    (1, 1, 2),
    (2, 3, 1),
    (3, 2, 4),
    (4, 5, 2),
    (5, 4, 3);

commit;

-- Select previo al update para visualizar el update que se va a ejecutar --

select * from productos
where precio < 20;

-- Update masivo de precios con where --

update productos
set precio = precio * 1.20
where precio < 20;

-- Select para ver los cambios --

select * from productos;

-- Select previo al delete de ventas --

select * from ventas
where id_ventas = 2;
-- Delete de una venta con where --

delete from ventas
where id_ventas = 2;

-- Select post delete --

select * from ventas;

