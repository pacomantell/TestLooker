view: d_pais {
  sql_table_name: "VENTAS"."D_PAIS" ;;

  dimension: desc_pais {
    type: string
    sql: ${TABLE}."DESC_PAIS" ;;
  }
  dimension: geo_pais {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."DESC_PAIS" ;;
  }
  dimension: id_pais {
    type: number
    sql: ${TABLE}."ID_PAIS" ;;
  }
}
