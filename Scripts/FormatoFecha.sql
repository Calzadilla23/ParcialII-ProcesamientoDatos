update dimfecha  set day_name = 'Lunes' where day_name  = 'Monday'
update dimfecha  set day_name = 'Martes' where day_name  ='Tuesday'
update dimfecha  set day_name = 'Miercoles' where day_name  = 'Wednesday'
update dimfecha  set day_name = 'Jueves' where day_name  = 'Thursday'
update dimfecha  set day_name = 'Viernes' where day_name  = 'Friday'
update dimfecha  set day_name = 'Sabado' where day_name  = 'Saturday'
update dimfecha  set day_name = 'Domingo' where day_name  = 'Sunday'


update dimfecha  set month_name = 'Enero' where month_name = 'January'
update dimfecha  set month_name = 'Febrero' where month_name = 'February'
update dimfecha  set month_name = 'Marzo' where month_name = 'March'
update dimfecha  set month_name = 'Abril' where month_name = 'April'
update dimfecha  set month_name = 'Mayo' where month_name = 'May'
update dimfecha  set month_name = 'Junio' where month_name = 'June'
update dimfecha  set month_name = 'Julio' where month_name = 'July'
update dimfecha  set month_name = 'Agosto' where month_name = 'August'
update dimfecha  set month_name = 'Septiembre' where month_name = 'September'
update dimfecha  set month_name = 'Octubre' where month_name = 'October'
update dimfecha  set month_name = 'Noviembre' where month_name = 'November'
update dimfecha  set month_name = 'Diciembre' where month_name = 'December'

select * from dimfecha 

alter table dimfecha drop column day_abbrev

alter table dimfecha drop column month_abbrev

alter table dimfecha drop column fiscal_month

alter table dimfecha drop column fiscal_quarter

alter table dimfecha drop column fiscal_year

alter table dimfecha drop column last_day_in_month_flag

alter table dimfecha drop column weekday_flag