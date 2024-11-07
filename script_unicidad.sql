WITH unicidad_mi_tabla_1_id as (
  select   
    id
  from mi_tabla_1
  group by id
  having count(*) = 1
),
registros_unicos_mi_tabla_1_id as (
    select 
        'clave: id' as campo, 
        count(*) as unicos
    from unicidad_mi_tabla_1_id
),
resumen_unicidad_mi_tabla_1_id as (
     select 
        current_date as fecha_procesamiento,
        'Unicidad' as dimension_QA,
        database() as esquema,
        'mi_tabla_1' as tabla,
        'sobre el total de registros' as universo, 
        campo, 
        unicos as n_aptos,
        t.total, 
        round(unicos  * 100.0  / t.total , 2) as porcentaje 
    from registros_unicos_mi_tabla_1_id,
     (select count(*) as total from mi_tabla_1) as t
), 
unicidad_mi_tabla_1_tipo_num_documento as (
  select   
    tipo_documento,
    num_documento
  from mi_tabla_1
  group by tipo_documento, num_documento
  having count(*) = 1
),
registros_unicos_mi_tabla_1_tipo_num_documento as (
    select 
        'clave: tipo_documento, num_documento' as campo, 
        count(*) as unicos
    from unicidad_mi_tabla_1_tipo_num_documento
),
resumen_unicidad_mi_tabla_1_tipo_num_documento as (
     select 
        current_date as fecha_procesamiento,
        'Unicidad' as dimension_QA,
        DATABASE() as esquema,
        'mi_tabla_1' as tabla,
        'sobre el total de registros' as universo, 
        campo,
        unicos as n_aptos,
        t.total, 
        round(unicos  * 100.0  / t.total , 2) as porcentaje 
    from registros_unicos_mi_tabla_1_tipo_num_documento,
     (select count(*) as total from mi_tabla_1) as t
), 
unicidad_mi_tabla_2_id as (
  select   
    id
  from mi_tabla_2
  group by id
  having count(*) = 1
),
registros_unicos_mi_tabla_2_id as (
    select 
        'clave: id' as campo, 
        count(*) as unicos
    from unicidad_mi_tabla_2_id
),
resumen_unicidad_mi_tabla_2_id as (
     select 
        current_date as fecha_procesamiento,
        'Unicidad' as dimension_QA,
        DATABASE() as esquema,
        'mi_tabla_2' as tabla,
        'sobre el total de registros' as universo, 
        campo, 
        unicos as n_aptos,
        t.total, 
        round(unicos  * 100.0  / t.total , 2) as porcentaje 
    from registros_unicos_mi_tabla_2_id,
     (select count(*) as total from mi_tabla_2) as t
)

select * from resumen_unicidad_mi_tabla_1_id
union all
select * from resumen_unicidad_mi_tabla_1_tipo_num_documento
union all
select * from resumen_unicidad_mi_tabla_2_id