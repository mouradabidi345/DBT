{{ config(materialized='view') }}

SELECT  -- natural_key
        IC.Name
       , IC.supervisor
       , IC.incontactid
       , IC.week
       , IC.period
       , IC.COUNT AS inbound_calls
   FROM {{ref('inbound_call_count')}} IC