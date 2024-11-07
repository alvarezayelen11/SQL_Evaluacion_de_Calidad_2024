WITH homogeneidad_mi_tabla_1_signo
 as (
    SELECT 
        CASE WHEN 
            LOWER(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        TRIM(signo_zodiacal), 
                                        'á', 'a'
                                    ), 'é', 'e'
                                ), 'í', 'i'
                            ), 'ó', 'o'
                        ), 'ú', 'u'
                    ), 'ü', 'u'
                )
            ) IN ('acuario'
                  ,'aries'
                  ,'cancer'
                  ,'capricornio'
                  ,'escorpio'
                  ,'geminis'
                  ,'leo'
                  ,'libra'
                  ,'piscis'
                  ,'sagitario'
                  ,'tauro'
                  ,'virgo'
                  ,'sin datos'
                  )
                then 1 else 0 end as signo_conteo
    from mi_tabla_1
),
pivoteo_homogeneidad_mi_tabla_1_signo as (
    select 
        'signo_zodiacal' as campo 
       ,sum(signo_conteo) as homogeneo
    from homogeneidad_mi_tabla_1_signo
),
resumen_homogeneidad_mi_tabla_1_signo as (
     select 
         current_date as fecha_procesamiento,
        'Homogeneidad' as dimension_QA,
        database() as esquema,
        'mi_tabla_1' as tabla,
        'sobre el total de registros no nulos' as universo, 
        campo,
        homogeneo as n_aptos,
        t.total, 
        round(homogeneo  * 100.0  / t.total , 2) as porcentaje 
     from pivoteo_homogeneidad_mi_tabla_1_signo,
     (select count(*) as total from mi_tabla_1
        Where signo_zodiacal is not null
     ) as t
), 
homogeneidad_mi_tabla_1_genero
 as (
    SELECT 
        CASE WHEN 
            LOWER(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        TRIM(genero), 
                                        'á', 'a'
                                    ), 'é', 'e'
                                ), 'í', 'i'
                            ), 'ó', 'o'
                        ), 'ú', 'u'
                    ), 'ü', 'u'
                )
            ) IN ('masculino', 'femenino', 'no binario')
            THEN 1 ELSE 0 
        END AS genero_conteo
    FROM mi_tabla_1
),
pivoteo_homogeneidad_mi_tabla_1_genero as (
    select 
        'genero' as campo 
       ,sum(genero_conteo) as homogeneo
    from homogeneidad_mi_tabla_1_genero
),
resumen_homogeneidad_mi_tabla_1_genero as (
     select 
         current_date as fecha_procesamiento,
        'Homogeneidad' as dimension_QA,
        database() as esquema,
        'mi_tabla_1' as tabla,
        'sobre el total de registros no nulos' as universo, 
        campo, 
        homogeneo as n_aptos,
        t.total,
        round(homogeneo  * 100.0  / t.total , 2) as porcentaje 
     from pivoteo_homogeneidad_mi_tabla_1_genero,
     (select count(*) as total from mi_tabla_1
        Where genero is not null
     ) as t
),
homogeneidad_mi_tabla_1_transporte_preferido
 as (
   SELECT 
        CASE WHEN 
            LOWER(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        TRIM(transporte_preferido), 
                                        'á', 'a'
                                    ), 'é', 'e'
                                ), 'í', 'i'
                            ), 'ó', 'o'
                        ), 'ú', 'u'
                    ), 'ü', 'u'
                )
            ) IN (
                'a pie'
                ,'auto'
                ,'bicicleta'
                ,'caminando'
                ,'moto'
                ,'no usa'
                ,'transporte publico'
                ,'otro'
                )
            THEN 1 ELSE 0 
        END AS transporte_preferido_conteo
    FROM mi_tabla_1
),
pivoteo_homogeneidad_mi_tabla_1_transporte_preferido as (
    select 
        'transporte_preferido' as campo 
       ,sum(transporte_preferido_conteo) as homogeneo
    from homogeneidad_mi_tabla_1_transporte_preferido
),
resumen_homogeneidad_mi_tabla_1_transporte_preferido as (
     select 
         current_date as fecha_procesamiento,
        'Homogeneidad' as dimension_QA,
        database() as esquema,
        'mi_tabla_1' as tabla,
        'sobre el total de registros no nulos' as universo, 
        campo,
        homogeneo as n_aptos,
        t.total,
        round(homogeneo  * 100.0  / t.total , 2) as porcentaje 
     from pivoteo_homogeneidad_mi_tabla_1_transporte_preferido,
     (select count(*) as total from mi_tabla_1
        Where transporte_preferido is not null
     ) as t
),
homogeneidad_mi_tabla_2_color_favorito
 as (
   SELECT 
        CASE WHEN 
            LOWER(
                REPLACE(
                    REPLACE(
                        REPLACE(
                            REPLACE(
                                REPLACE(
                                    REPLACE(
                                        TRIM(color_favorito), 
                                        'á', 'a'
                                    ), 'é', 'e'
                                ), 'í', 'i'
                            ), 'ó', 'o'
                        ), 'ú', 'u'
                    ), 'ü', 'u'
                )
            ) IN (
				'amarillo'
                ,'azul'
                ,'blanco'
                ,'beige'
                ,'cian'
                ,'coral'
                ,'dorado'
                ,'esmeralda'
                ,'gris'
                ,'magenta'
                ,'marron'
                ,'naranja'
                ,'negro'
                ,'plateado'
                ,'rojo'
                ,'rosa'
                ,'turquesa'
                ,'verde'
                ,'violeta'
                ,'otro'
                ,'no sabe'
                ,'no tiene'
                )
                then 1 else 0 end as color_favorito_conteo
    from mi_tabla_2
),
pivoteo_homogeneidad_mi_tabla_2_color_favorito as (
    select 
        'color_favorito' as campo 
       ,sum(color_favorito_conteo) as homogeneo
    from homogeneidad_mi_tabla_2_color_favorito
),
resumen_homogeneidad_mi_tabla_2_color_favorito as (
     select 
         current_date as fecha_procesamiento,
        'Homogeneidad' as dimension_QA,
        database() as esquema,
        'mi_tabla_2' as tabla,
        'sobre el total de registros no nulos' as universo, 
        campo,
        homogeneo as n_aptos,
        t.total,
        round(homogeneo  * 100.0  / t.total , 2) as porcentaje 
     from pivoteo_homogeneidad_mi_tabla_2_color_favorito,
     (select count(*) as total from mi_tabla_2
        Where color_favorito is not null
     ) as t
)

select * from resumen_homogeneidad_mi_tabla_1_signo
union all
select * from resumen_homogeneidad_mi_tabla_1_genero
union all
select * from resumen_homogeneidad_mi_tabla_1_transporte_preferido
union all
select * from resumen_homogeneidad_mi_tabla_2_color_favorito