{{ config(
    materialized='table'
) }}

select * from event_ext_tbl

