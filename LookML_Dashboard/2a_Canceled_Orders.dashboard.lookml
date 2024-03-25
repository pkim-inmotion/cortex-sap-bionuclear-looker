- dashboard: sap_order_to_cash_o2c_02_a_cancelled_ordersperformance_tuning
  title: "Sales Order Cancellations"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: SglJRdRSOxWMsORDfmzrdO
  elements:
  - title: Canceled Orders
    name: Canceled Orders
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    type: looker_grid
    fields: [sales_orders.sales_document_vbeln, sales_orders.item_posnr, materials_md.material_text_maktx,
      sales_orders.sales_order_status, sales_orders.cumulative_order_quantity_kwmeng,
      sales_orders.base_unit_of_measure_meins, currency_conversion_new.ukurs, sales_orders.sales_order_value_line_item_source_currency,
      sales_orders.currency_waerk, sales_orders.sales_order_value_glob_curr, currency_conversion_new.tcurr,
      sales_orders.max_sold_to_party_name, sales_orders.max_ship_to_party_name, sales_orders.max_bill_to_party_name]
    filters:
      sales_orders.canceled_order: Canceled
    sorts: [sales_orders.max_sold_to_party_name desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      sales_orders.sales_document_vbeln: Sales Order
      sales_orders.item_posnr: Sales Order Line Item
      materials_md.material_text_maktx: Product
      customers_md.name1_name1: Sold to Party
      customers_md.name2_name2: Ship to Party
      customers_md.name3_name3: Bill to Party
      sales_orders.cumulative_order_quantity_kwmeng: Sales Order Qty
      sales_orders.base_unit_of_measure_meins: Base UoM
      sales_orders.currency_waerk: Local Currency Key
      currency_conversion_new.ukurs: Exchange Rate Sales Value
      sales_orders.sales_order_value_line_item_source_currency: Sales Order Value
        Local Currency
      sales_orders.sales_order_value_glob_curr: Sales Order Value Global Currency
      currency_conversion_new.tcurr: Global Currency
      sales_orders.max_sold_to_party_name: Sold to Party
      sales_orders.max_ship_to_party_name: Ship to Party
      sales_orders.max_bill_to_party_name: Bill to Party
    series_value_format:
      sales_orders.sales_order_value_glob_curr:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    pinned_columns:
      "$$$_row_numbers_$$$": left
    column_order: ["$$$_row_numbers_$$$", sales_orders.sales_document_vbeln, sales_orders.item_posnr,
      materials_md.material_text_maktx, sales_orders.max_sold_to_party_name, sales_orders.max_ship_to_party_name,
      sales_orders.max_bill_to_party_name, sales_orders.sales_order_status, sales_orders.cumulative_order_quantity_kwmeng,
      sales_orders.base_unit_of_measure_meins, currency_conversion_new.ukurs, sales_orders.sales_order_value_line_item_source_currency,
      sales_orders.currency_waerk, sales_orders.sales_order_value_glob_curr, currency_conversion_new.tcurr]
    series_column_widths:
      materials_md.material_text_maktx: 187
    series_cell_visualizations: {}
    listen:
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Division: divisions_md.division_name_vtext
      Year: sales_orders.creation_date_erdat_date
      Product: materials_md.material_text_maktx
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Untitled
    name: Untitled
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    type: single_value
    fields: [sales_orders.order_snapshot]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Currency: currency_conversion_new.tcurr
      Region: countries_md.country_name_landx
      Sales Org: sales_organizations_md.sales_org_name_vtext
      Distribution Channel: distribution_channels_md.distribution_channel_name_vtext
      Division: divisions_md.division_name_vtext
      Year: sales_orders.creation_date_erdat_date
      Product: materials_md.material_text_maktx
    row: 11
    col: 0
    width: 24
    height: 2
  filters:
  - name: Year
    title: Year
    type: field_filter
    default_value: 2022/01/01 to 2022/04/22
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_orders.creation_date_erdat_date
  - name: Currency
    title: Currency
    type: field_filter
    default_value: DOP
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: currency_conversion_new.tcurr
  - name: Division
    title: Division
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: divisions_md.division_name_vtext
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: materials_md.material_text_maktx
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: countries_md.country_name_landx
  - name: Sales Org
    title: Sales Org
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: sales_organizations_md.sales_org_name_vtext
  - name: Distribution Channel
    title: Distribution Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: bio_nuc_cortex_sap_operational
    explore: sales_orders
    listens_to_filters: []
    field: distribution_channels_md.distribution_channel_name_vtext