-- =============================================
-- 01_basicas.sql
-- Consultas básicas sobre la base Chinook
-- SELECT, WHERE, ORDER BY, LIMIT, COUNT
-- =============================================

-- 1. ¿Qué clientes son de Brasil?
select first_name, last_name, city, country
from customer
where country = 'Brazil';

-- 2. ¿Cuáles son las 10 pistas más largas? (en minutos)
-- Nota: las más largas son episodios de series de TV, no canciones.
select name, round(milliseconds / 60000.0, 1) as minutos
from track t
order by milliseconds desc
limit 10;

-- 3a. ¿Entre qué fechas hay facturas?
-- Resultado: desde 2021-01-01 hasta 2025-12-22
select min(invoice_date), max(invoice_date)
from invoice;

-- 3b. Facturas de 2021, de mayor a menor total
-- Resultado: 83 facturas; la más alta es de 13,86 (varias empatadas)
select invoice_id, invoice_date, billing_country, total
from invoice
where invoice_date >= '2021-01-01' and invoice_date < '2022-01-01'
order by total desc, invoice_date;

-- 4a. ¿Cuántos clientes tiene la tienda?
-- Resultado: 59
select count(*) as total_clientes
from customer;

-- 4b. ¿Cuántas facturas hay en total?
-- Resultado: 412 (≈ 7 compras por cliente)
select count(*) as total_facturas
from invoice;

-- 4c. ¿Cuántos clientes son de Brasil?
-- Resultado: 5
select count(*) as clientes_brasil
from customer
where country = 'Brazil';

-- 5. Empleados y sus cargos, ordenados por cargo
-- Resultado: 8 empleados
select e.first_name, e.last_name, e.title
from employee e
order by e.title;