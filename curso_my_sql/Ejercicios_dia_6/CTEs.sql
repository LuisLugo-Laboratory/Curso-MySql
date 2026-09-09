WITH ListadaEpisodios as (
	SELECT serie_id, episodio_id, titulo as Titulo_Episodio, Descripcion as desc_Episodio from episodios
), 

ListaSeries as (
Select Serie_id, titulo as Titulo_Serie  from series
)


select * FROM ListadaEpisodios
LEFT JOIN ListaSeries on ListaSeries.serie_id = ListadaEpisodios.Serie_id



---
WITH ListaSeries as (
	SELECT  serie_id , titulo  from series
), 

ListadaEpisodios  as (
Select serie_id, MIN(fecha_estreno) as fecha_estreno
  from episodios
    GROUP BY  serie_id
)

select  titulo as 'Título de la Serie', fecha_estreno as 'Fecha del Primer Episodio' from ListaSeries
LEFT JOIN ListadaEpisodios on ListaSeries.serie_id = ListadaEpisodios.serie_id
order by fecha_estreno asc
