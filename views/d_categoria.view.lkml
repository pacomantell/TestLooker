view: d_categoria {
  sql_table_name: "VENTAS"."D_CATEGORIA" ;;

  dimension: desc_categoria {
    type: string
    sql: ${TABLE}."DESC_CATEGORIA" ;;
  }
  dimension: id_categoria {
    type: number
    sql: ${TABLE}."ID_CATEGORIA" ;;
  }
}
