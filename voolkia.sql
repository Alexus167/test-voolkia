-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.16-MariaDB

select
  P.CARRIERID,
  P.ZONA,
  (P.COSTO * Q.`cantidad de envios`) as COSTO_MES
from COSTOS as P
  join `cantidad de envios` as Q
    on Q.ZONA = P.ZONA
where Q.MES = 1
order by COSTO_MES;
select
  C.NAME,
  C.CAPACITY,
  (C.CAPACITY * P.COSTO) as COSTO_POR_CARRIER
from CARRIER as C
  join COSTOS as P
    on C.CARRIERID = P.CARRIERID
where (
  P.ZONA = 'Resto'
  and P.CARRIERID = 1
);
select
  C.NAME,
  C.CAPACITY,
  (C.CAPACITY * P.COSTO) as COSTO_POR_CARRIER
from CARRIER as C
  join COSTOS as P
    on C.CARRIERID = P.CARRIERID
where (
  P.ZONA = 'Bs As'
  and P.CARRIERID = 2
);
select
  C.NAME,
  C.CAPACITY,
  (C.CAPACITY * P.COSTO) as COSTO_POR_CARRIER
from CARRIER as C
  join COSTOS as P
    on C.CARRIERID = P.CARRIERID
where (
  P.ZONA = 'AMBA'
  and P.CARRIERID = 3
);


--carrier A capacidad = 10000 sale amba 10 bsas 20 resto 50 => 10000* 50 = 500000
--carrier B capacidad = 10000 sale amba 15 bsas 19 resto 55 => 10000* 19 = 190000
--carrier C capapacidad = 3000 sale amba 20  => 20*3000 = 6000 
--capacidad * precio(a conveniencia de costos de zona por carrier)

--total = 750.000





