connection: "formacion_analytics_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: formacion_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: formacion_analytics_default_datagroup

explore: ventas {
  from: h_ventas

  join: fecha {
    from: d_fecha
    type:  inner
    relationship:  many_to_one
    sql_on: ${ventas.id_fecha} = ${fecha.id_fecha} ;;
  }

  join: categoria {
    from: d_categoria
    type:  inner
    relationship:  many_to_one
    sql_on: ${ventas.id_categoria} = ${categoria.id_categoria} ;;
  }

  join: tipo_tarjeta {
    from: d_tipo_tarjeta
    type:  inner
    relationship:  many_to_one
    sql_on: ${ventas.id_tipo_tarjeta} = ${tipo_tarjeta.id_tipo_tarjeta} ;;
  }

  join: pais {
    from: d_pais
    type:  inner
    relationship:  many_to_one
    sql_on: ${ventas.id_pais} = ${pais.id_pais} ;;
  }


}
