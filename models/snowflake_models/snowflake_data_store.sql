
{{ config(materialized='table') }}
with source_store_sales as (
    select * from {{ source("external_stage", "FIN_TAB") }}
),
final as (
    select * from source_store_sales
)

select * from final
