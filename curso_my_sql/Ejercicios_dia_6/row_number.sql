WITH OrdenSeries as (

SELECT titulo, año_lanzamiento,
row_number() over(order by año_lanzamiento desc) as orden_lanzamiento
from series 
)

SELECT * from OrdenSeries
WHERE orden_lanzamiento in (1,2,3)


--
select titulo, año_lanzamiento,
ROW_NUMBER() OVER(ORDER BY año_lanzamiento DESC) AS clasificacion_global
FROM series