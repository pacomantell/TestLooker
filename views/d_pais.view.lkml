view: d_pais {
  sql_table_name: "VENTAS"."D_PAIS" ;;

  dimension: desc_pais {
    type: string
    sql: ${TABLE}."DESC_PAIS" ;;
  }
  dimension: id_pais {
    type: number
    sql: ${TABLE}."ID_PAIS" ;;
  }
  measure: count {
    type: count
  }
}
