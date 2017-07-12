- dashboard: trade_summary
  title: Trade Summary
  layout: static
  width: 1632
  tile_size: 68
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:

  elements:
    - name: trade_summary_map
      title: USD Map Summary
      left: 0
      top: 0
      height: 8
      width: 24
      type: looker_geo_choropleth
      model: demo_trades
      explore: records
      dimensions: [records.country]
      measures: [records.sum_amount_usd]
      sorts: [records.sum_amount_usd desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      map: world
      map_projection: ''
      show_view_names: true
      quantize_colors: false
      map_plot_mode: points
      heatmap_gridlines: false
      heatmap_opacity: 0.5
      show_region_field: true
      draw_map_labels_above_data: true
      map_tile_provider: positron
      map_position: fit_data
      map_scale_indicator: 'off'
      map_pannable: true
      map_zoomable: true
      map_marker_type: circle
      map_marker_icon_name: default
      map_marker_radius_mode: proportional_value
      map_marker_units: meters
      map_marker_proportional_scale_type: linear
      map_marker_color_mode: fixed
      show_legend: true
      quantize_map_value_colors: false
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      colors: [orange, red]
      empty_color: grey

    - name: trade_summary
      title: USD Summary
      left: 0
      top: 8
      height: 4
      width: 24
      type: table
      model: demo_trades
      explore: records
      dimensions: [records.country]
      measures: [records.sum_amount_usd]
      sorts: [records.sum_amount_usd desc]
      limit: '500'
      column_limit: '50'
      query_timezone: Europe/London
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      conditional_formatting: []
