{{ config(materialized='view') }}

SELECT  -- natural_key
*
   FROM {{ref('avg_hold_time')}} IC