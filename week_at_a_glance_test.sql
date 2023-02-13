-- {{ config(materialized='table') }}

-- {{ dbt_utils.union_relations(

--     relations=[ref('outbound_call_count'), ref('inbound_call_count')]

-- ) }}

--     C.Name
--   , C.Supervisor
--   , C.InContactID
--   , C.Week_Number Week
--   , C.Period
--   , C.Count Inbound Calls

-- SELECT * FROM (
-- SELECT  -- natural_key
--         IC.Name
--        , IC.supervisor
--        , IC.incontactid
--        , IC.week
--        , IC.period
--        , IC.COUNT AS inbound_calls
--        , NULL AS outbound_calls
--        , NULL AS inbound_emails
--        , NULL AS outbound_emails
--        , NULL AS aht_inbound_calls
--        , NULL AS aht_outbound_calls
--        , NULL AS aht_inbound_emails
--        , NULL AS average_hold_time
--        , NULL AS count_hold_time_gt_2
--        , NULL AS refusals
--        , NULL AS average_acw
--        , NULL AS acw_gt_5
--        , NULL AS acw_gt_10
--        , NULL AS adherence
--        , NULL AS total_hours_worked
--        , NULL AS paid_hours
--        , NULL AS occurences
--        , NULL AS login_percentage
--        , NULL AS read_articles
--        , NULL AS total_articles_viewed
--        , NULL AS average_qa_overall
--        , NULL AS average_qa_connectedness
--        , NULL AS loadedbyuser
--        , NULL AS load_date
--    FROM {{ref('inbound_call_count')}} IC

--  UNION
--  SELECT  -- natural_key
--         IC.Name
--        , IC.supervisor
--        , IC.incontactid
--        , IC.week
--        , IC.period
--        , NULL AS inbound_calls
--        , IC.COUNT AS outbound_calls
--        , NULL AS inbound_emails
--        , NULL AS outbound_emails
--        , NULL AS aht_inbound_calls
--        , NULL AS aht_outbound_calls
--        , NULL AS aht_inbound_emails
--        , NULL AS average_hold_time
--        , NULL AS count_hold_time_gt_2
--        , NULL AS refusals
--        , NULL AS average_acw
--        , NULL AS acw_gt_5
--        , NULL AS acw_gt_10
--        , NULL AS adherence
--        , NULL AS total_hours_worked
--        , NULL AS paid_hours
--        , NULL AS occurences
--        , NULL AS login_percentage
--        , NULL AS read_articles
--        , NULL AS total_articles_viewed
--        , NULL AS average_qa_overall
--        , NULL AS average_qa_connectedness
--        , NULL AS loadedbyuser
--        , NULL AS load_date
--    FROM {{ref('outbound_call_count')}} IC
