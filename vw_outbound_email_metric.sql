{{ config(materialized='view') }}

SELECT  -- natural_key
        IC.Name
       , IC.supervisor
       , IC.incontactid
       , IC.week
       , IC.period
       , IC.COUNT AS outbound_emails
    FROM {{ref('outbound_email_count')}} IC

