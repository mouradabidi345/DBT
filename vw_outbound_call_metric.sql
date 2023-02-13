{{ config(materialized='view') }}

SELECT  -- natural_key
        IC.Name
       , IC.supervisor
       , IC.incontactid
       , IC.week
       , IC.period
       , IC.COUNT AS outbound_calls
    FROM {{ref('outbound_call_count')}} IC