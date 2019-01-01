-- Посчитать медиану годов выпуска автобусов

declare @left int
declare @rigth int

set @left = (
	select Max(t.Year)
	from (
		select TOP 50 PERCENT bus.Year
		from Buses as bus
		order by bus.Year asc ) as t)

set @rigth = (
	select Min(t.Year)
	from (
		select TOP 50 PERCENT bus.Year
		from Buses as bus
		order by bus.Year desc) as t)

select (@left + @rigth ) / 2 as 'Median' 
