view: records {
  sql_table_name: DemoTrades.Records ;;

  dimension: account {
    type: string
    sql: ${TABLE}.Account ;;
  }

  dimension: account_obf {
    type: string
    sql: ${TABLE}.AccountObf ;;
  }

  dimension: active_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: amount_currency {
    type: string
    sql: ${TABLE}.AmountCurrency ;;
  }

  dimension: amount_gbp {
    type: number
    sql: ${TABLE}.AmountGBP ;;
  }

  dimension: amount_gbpcurrency {
    type: string
    sql: ${TABLE}.AmountGBPCurrency ;;
  }

  dimension: amount_tol {
    type: number
    sql: ${TABLE}.AmountTol ;;
  }

  dimension: amount_tol_currency {
    type: string
    sql: ${TABLE}.AmountTolCurrency ;;
  }

  dimension: amount_usd {
    type: number
    sql: ${TABLE}.AmountUSD ;;
  }

  dimension: amount_usdcurrency {
    type: string
    sql: ${TABLE}.AmountUSDCurrency ;;
  }

  dimension: asset_code {
    type: string
    sql: ${TABLE}.AssetCode ;;
  }

  dimension: asset_description {
    type: string
    sql: ${TABLE}.Asset_Description ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.AssetType ;;
  }

  dimension: assigned_to {
    type: string
    sql: isnull(substring(${TABLE}.AssignedTo,charindex('.',${TABLE}.AssignedTo)+1,200),'Unassigned');;
  }

  dimension: broker {
    type: string
    sql: ${TABLE}.Broker ;;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: buy_sell {
    type: string
    sql: ${TABLE}.BuySell ;;
  }

  dimension: commission {
    type: number
    sql: ${TABLE}.Commission ;;
  }

  dimension: commission_currency {
    type: string
    sql: ${TABLE}.CommissionCurrency ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }
  dimension: country {
    type: string
    sql: case substring(${TABLE}.Currency,1,2) when 'AU' then 'AUS'
                                               when 'CA' then 'CAN'
                                               when 'CH' then 'CHE'
                                               when 'EU' then 'FRA'
                                               when 'GB' then 'GBR'
                                               when 'HK' then 'HKG'
                                               when 'JP' then 'JPN'
                                               when 'NZ' then 'NZL'
                                               when 'SG' then 'SGP'
                                               when 'US' then 'USA'
                                              end ;;
  }

  dimension: date_time_created {
    type: string
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: exchange {
    type: string
    sql: ${TABLE}.Exchange ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: internal_asset_id {
    type: string
    sql: ${TABLE}.InternalAssetId ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: omsid {
    type: string
    sql: ${TABLE}.OMSId ;;
  }

  dimension: pdfpk {
    type: string
    sql: ${TABLE}.PDFPk ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: price_currency {
    type: string
    sql: ${TABLE}.PriceCurrency ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.Priority ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
  }

  dimension: ref1 {
    type: string
    sql: ${TABLE}.Ref1 ;;
  }

  dimension: ref2 {
    type: string
    sql: ${TABLE}.Ref2 ;;
  }

  dimension: ref3 {
    type: string
    sql: ${TABLE}.Ref3 ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.RowId ;;
  }

  dimension_group: settlement {
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
    sql: ${TABLE}.SettlementDate ;;
  }

  dimension_group: statement {
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
    sql: ${TABLE}.StatementDate ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension_group: trade {
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
    sql: ${TABLE}.TradeDate ;;
  }

  dimension: trade_ref {
    type: string
    sql: ${TABLE}.TradeRef ;;
  }

  dimension: trader {
    type: string
    sql: ${TABLE}.Trader ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }

  measure: count {
    type: count
    drill_fields: [rec_name]
  }

  measure: count_percent {
    type: percent_of_total
    sql: ${count};;
    drill_fields: [rec_name]
  }
  measure: sum_amount {
    type: sum
    sql: ${amount};;
    drill_fields: [rec_name]
  }
  measure: average_amount {
    type: average
    sql: ${amount};;
    drill_fields: [rec_name]
  }
  measure: sum_amount_gbp {
    type: sum
    sql: ${amount_gbp};;
    drill_fields: [rec_name]
  }
  measure: sum_amount_usd {
    type: sum
    sql: ${amount_usd};;
    drill_fields: [rec_name]
    value_format_name: usd
  }
  measure: count_matched {
    type: sum
    sql: ${TABLE}.ActiveStatus;;
    drill_fields: [rec_name]
  }

}
