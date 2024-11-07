WITH completitud_mi_tabla_1 AS (
    SELECT  
        CASE WHEN id IS NOT NULL AND TRIM(id) <> '' THEN 1 ELSE 0 END AS id_conteo,
        CASE WHEN nombre IS NOT NULL AND TRIM(nombre) <> '' THEN 1 ELSE 0 END AS nombre_conteo,
        CASE WHEN apellido IS NOT NULL AND TRIM(apellido) <> '' THEN 1 ELSE 0 END AS apellido_conteo,
        CASE WHEN genero IS NOT NULL AND TRIM(genero) <> '' THEN 1 ELSE 0 END AS genero_conteo,
        CASE WHEN fecha_nac IS NOT NULL AND TRIM(fecha_nac) <> '' THEN 1 ELSE 0 END AS fecha_nac_conteo,
        CASE WHEN fecha_de_alta IS NOT NULL AND TRIM(fecha_de_alta) <> '' THEN 1 ELSE 0 END AS fecha_de_alta_conteo,
        CASE WHEN edad IS NOT NULL AND TRIM(edad) <> '' THEN 1 ELSE 0 END AS edad_conteo,
        CASE WHEN signo_zodiacal IS NOT NULL AND TRIM(signo_zodiacal) <> '' THEN 1 ELSE 0 END AS signo_zodiacal_conteo,
        CASE WHEN tipo_documento IS NOT NULL AND TRIM(tipo_documento) <> '' THEN 1 ELSE 0 END AS tipo_documento_conteo,
        CASE WHEN num_documento IS NOT NULL AND TRIM(num_documento) <> '' THEN 1 ELSE 0 END AS num_documento_conteo,
        CASE WHEN transporte_preferido IS NOT NULL AND TRIM(transporte_preferido) <> '' THEN 1 ELSE 0 END AS transporte_preferido_conteo,
        CASE WHEN km_diarios_recorridos IS NOT NULL AND TRIM(km_diarios_recorridos) <> '' THEN 1 ELSE 0 END AS km_diarios_recorridos_conteo,
        CASE WHEN profesion IS NOT NULL AND TRIM(profesion) <> '' THEN 1 ELSE 0 END AS profesion_conteo,
        CASE WHEN ingresos_mensuales IS NOT NULL AND TRIM(ingresos_mensuales) <> '' THEN 1 ELSE 0 END AS ingresos_mensuales_conteo
    FROM mi_tabla_1
),
pivoteo_completitud_mi_tabla_1 AS (
    SELECT 'id' AS campo, SUM(id_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'nombre' AS campo, SUM(nombre_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'apellido' AS campo, SUM(apellido_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'genero' AS campo, SUM(genero_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'fecha_nac' AS campo, SUM(fecha_nac_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'fecha_de_alta' AS campo, SUM(fecha_de_alta_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'edad' AS campo, SUM(edad_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'signo_zodiacal' AS campo, SUM(signo_zodiacal_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'tipo_documento' AS campo, SUM(tipo_documento_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'num_documento' AS campo, SUM(num_documento_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'transporte_preferido' AS campo, SUM(transporte_preferido_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'km_diarios_recorridos' AS campo, SUM(km_diarios_recorridos_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'profesion' AS campo, SUM(profesion_conteo) AS completos FROM completitud_mi_tabla_1 UNION ALL
    SELECT 'ingresos_mensuales' AS campo, SUM(ingresos_mensuales_conteo) AS completos FROM completitud_mi_tabla_1
),
resumen_completitud_mi_tabla_1 AS (
    SELECT
        CURDATE() AS fecha_procesamiento,
        'Completitud' AS dimension_QA,
        DATABASE() AS esquema,
        'mi_tabla_1' AS tabla,
        'sobre el total de registros' AS universo,
        campo,
        completos AS n_aptos,
        t.total,
        ROUND(completos * 100.0 / t.total, 2) AS porcentaje 
    FROM pivoteo_completitud_mi_tabla_1,
    (SELECT COUNT(*) AS total FROM mi_tabla_1) AS t
), 
completitud_mi_tabla_2 as (
    select  
        case when id is not null and trim(id) <> '' then 1 else 0 end as id_conteo,
        case when color_favorito is not null and trim(color_favorito) <> '' then 1 else 0 end as color_favorito_conteo,
        case when vehiculo_propio is not null and trim(vehiculo_propio) <> '' then 1 else 0 end as vehiculo_propio_conteo
    from mi_tabla_2
),
pivoteo_completitud_mi_tabla_2 as (
    select 'id' as campo, sum(id_conteo) as completos from completitud_mi_tabla_2 union all
    select 'color_favorito' as campo, sum(color_favorito_conteo) as completos from completitud_mi_tabla_2 union all
    select 'vehiculo_propio' as campo, sum(vehiculo_propio_conteo) as completos from completitud_mi_tabla_2
),
resumen_completitud_mi_tabla_2 as (
    select
        CURDATE() as fecha_procesamiento,
        'Completitud' as dimension_QA,
        DATABASE() as esquema,
        'mi_tabla_2' as tabla,
        'sobre el total de registros' as universo,
        campo,
        completos as n_aptos,
        t.total,
        round(completos * 100.0 / t.total, 2) as porcentaje 
    from pivoteo_completitud_mi_tabla_2,
    (select count(*) as total from mi_tabla_2) as t
)

SELECT * FROM resumen_completitud_mi_tabla_1
union all 
SELECT * FROM resumen_completitud_mi_tabla_2;