{{ config(materialized='table',
          schema='marts',
          alias='test'
   ) }}

select 1 as test, 2 as test_2
