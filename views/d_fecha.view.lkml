view: d_fecha {
  sql_table_name: "VENTAS"."D_FECHA" ;;

  dimension: anyo {
    type: number
    sql: ${TABLE}."ANYO" ;;
  }
  dimension: desc_mes {
    type: string
    sql: ${TABLE}."DESC_MES" ;;
  }
  dimension: dia {
    type: number
    sql: ${TABLE}."DIA" ;;
  }
  dimension: dia_semana {
    type: string
    sql: ${TABLE}."DIA_SEMANA" ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FECHA" ;;
  }
  dimension_group: fecha_ly {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: DATEADD(year, -1, ${TABLE}."FECHA") ;;
  }
  dimension: id_fecha {
    type: number
    sql: ${TABLE}."ID_FECHA" ;;
  }
  dimension: id_fecha_ly {
    type: number
    sql: ${TABLE}."ID_FECHA" - 10000 ;;
  }
  dimension: mes {
    type: number
    sql: ${TABLE}."MES" ;;
  }
}
