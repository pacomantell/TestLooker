view: h_ventas {
  sql_table_name: "VENTAS"."H_VENTAS" ;;

  dimension: id_categoria {
    type: number
    sql: ${TABLE}."ID_CATEGORIA" ;;
  }
  dimension: id_fecha {
    type: number
    sql: ${TABLE}."ID_FECHA" ;;
  }
  dimension: id_pais {
    type: number
    sql: ${TABLE}."ID_PAIS" ;;
  }
  dimension: id_tipo_tarjeta {
    type: number
    sql: ${TABLE}."ID_TIPO_TARJETA" ;;
  }
  dimension: ventas {
    type: number
    sql: ${TABLE}."VENTAS" ;;
  }
  measure: cuenta {
    type: count
  }
  measure: suma {
    type: sum
    sql: ${TABLE}."VENTAS" ;;
  }
  measure: pct_total {
    type: percent_of_total
    sql: ${suma} ;;
  }
  measure: minimo {
    type: min
    sql: ${TABLE}."VENTAS" ;;
  }

  measure: maximo {
    type: max
    sql: ${TABLE}."VENTAS" ;;
  }

}
