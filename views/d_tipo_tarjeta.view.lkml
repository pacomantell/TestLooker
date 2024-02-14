view: d_tipo_tarjeta {
  sql_table_name: "VENTAS"."D_TIPO_TARJETA" ;;

  dimension: desc_tipo_tarjeta {
    type: string
    sql: ${TABLE}."DESC_TIPO_TARJETA" ;;
  }
  dimension: id_tipo_tarjeta {
    type: number
    sql: ${TABLE}."ID_TIPO_TARJETA" ;;
  }
}
