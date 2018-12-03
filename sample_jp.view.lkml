view: sample_jp {

  sql_table_name: public.sample_jp ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."製品ID" ;;
  }

  dimension_group: ShipmentDate{
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."出荷日" ;;
  }

  dimension: shikuchouson {
    type: string
    sql: ${TABLE}."市区町村" ;;
  }

  dimension: customer_kbn{
    type: string
    sql: ${TABLE}."顧客区分" ;;
  }

  measure: profit {
    type: sum
    sql: ${TABLE}."利益" ;;
  }

  dimension_group: OrderDate{
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."オーダー日" ;;
  }

  dimension: chiiki {
    type: string
    sql: ${TABLE}."地域" ;;
  }

  dimension: prefecture {
    type: string
    sql: ${TABLE}."都道府県" ;;
  }

  measure: Amount {
    type: sum
    sql: ${TABLE}."数量" ;;
  }

  dimension: CustomerName{
    type: string
    sql: ${TABLE}."顧客名" ;;
  }

  dimension: Country {
    type: string
    sql: ${TABLE}."国" ;;
  }

  measure: Sales {
    type: sum
    sql: ${TABLE}."売上" ;;
  }

  dimension: Category {
    type: string
    sql: ${TABLE}."カテゴリ" ;;
  }

  dimension: ShipMode {
    type: string
    sql: ${TABLE}."出荷モード" ;;
  }

  dimension: SubCategory {
    type: string
    sql: ${TABLE}."サブカテゴリ" ;;
  }

  measure: DiscountRate {
    type: number
    sql: ${TABLE}."割引率" ;;
  }

  dimension: ProductName {
    type: string
    sql: ${TABLE}."製品名" ;;
  }

  dimension: Order_id {
    type: string
    sql: ${TABLE}."オーダーID" ;;
  }

  dimension: Customer_id {
    type: string
    sql: ${TABLE}."顧客ID" ;;
  }

  dimension: Row_id {
    type: string
    sql: ${TABLE}."行ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
