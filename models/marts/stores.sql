

    select 
        stores.*, 
        date_dim.date as store_closed_date
    
    from {{ ref('stg_tpcds_core__store') }} as stores
    left join {{ ref('stg_tpcds_core__date_dim') }} as date_dim
        on stores.closed_date_sk = date_dim.date_sk

