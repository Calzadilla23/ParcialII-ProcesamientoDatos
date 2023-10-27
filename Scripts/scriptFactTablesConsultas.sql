select  c.FlightDate as FechaVuelo, a.description as NombreAerolinea, c.OriginCityName as CuidadOrigen, 
c.Origin as AeropuertoOrigen, c.Dest as AeropuertoDestino, c.DestCityName as CuidadDestino from combinedflights c
inner join airlines a on c.IATA_Code_Operating_Airline = a.code


select IATA_Code_Operating_Airline  from combinedflights c 



select count(case when c.DepDel15 = 1.0 then 1 end) as TotalMinutosAtrasados,
count(case when c.Cancelled = 'True' then 1 end) as TotalVuelosCancelados, 
count (case when c.Diverted = 'True' then 1 end) as TotalVuelosDiferidos,
c.FlightDate as FechaVuelo, a.code as AirlineID, c.OriginAirportID as AirportID, 
c.DestCityMarketID as CityID, c.Flight_Number_Operating_Airline as NumeroVueloOperativo,
c.Cancelled as VueloCancelado, c.Diverted as VueloDesviado, c.DepDelay as VueloAtrasado
from combinedflights c inner join airlines a on c.IATA_Code_Operating_Airline =a.code 
group by Flight_Number_Operating_Airline 

/*Query para cantidad de vuelos cancelados por aerolinea*/
select count(c.Cancelled) as CantidadCancelados, 
a.description as Airline from combinedflights c  inner join airlines a 
on c.IATA_Code_Operating_Airline = a.code  
where c.Cancelled ='True' 
group by a.code 

/* Query cantidad vuelos cancelos por aeropuerto origen*/
select count(c.Cancelled) as CantidadCancelados, 
c.OriginAirportID  as Aeropuerto, Origin as Name from combinedflights c  
where c.Cancelled ='True' 
group by OriginAirportID 

/*Query cantidad vuelos cancelados cuidad*/
select count(c.Cancelled) as CantidadCancelados, 
c.OriginCityName as Cuidad, c.OriginStateName  as Estado from combinedflights c  
where c.Cancelled ='True' 
group by OriginCityName 

---/*
select c.Cancelled, a.description  from combinedflights c inner join airlines a 
on c.IATA_Code_Operating_Airline = a.code 
where a.description ='Cape Air' and c.Cancelled ='True'

*/
select distinct   from combinedflights c 

select  distinct OriginCityMarketID,OriginCityName, OriginStateName  from combinedflights 
 
/*-----*/
select count(case when c.DepDel15 = 1 then 1 end) as TotalMinutosAtrasados,
count(case when c.Cancelled = 'True' then 1 end) as TotalVuelosCancelados, 
count (case when c.Diverted = 'True' then 1 end) as TotalVuelosDiferidos,origin
from combinedflights c 
group by Origin 
/*count(case when c.DepDel15 = 1.0 then 1 end) as TotalMinutosAtrasados,
count(case when c.Cancelled = 'True' then 1 end) as TotalVuelosCancelados, 
count (case when c.Diverted = 'True' then 1 end) as TotalVuelosDiferidos,*/

----
select count(DepDel15) as total,origin as name from combinedflights c 
where  DepDel15  = 1.0
group by Origin 

select c.FlightDate as FechaVuelo, a.code as AirlineID, c.OriginAirportID as AirportID, 
c.OriginCityMarketID  as CityID, c.Flight_Number_Operating_Airline as NumeroVueloOperativo,
c.Cancelled as VueloCancelado, c.Diverted as VueloDiferido, c.DepDel15 as VueloAtrasado
from combinedflights c inner join airlines a on c.IATA_Code_Operating_Airline =a.code 
