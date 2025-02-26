
with source as (
    select
        date,
        symbol,
        action,
        quantity
    from 
        {{ source('dbsales', 'movimentacao_commodities') }}
),

renamed as (
    select
        cast(date as date) as data,
        symbol as simbolo,
        action as acao,
        quantity as quantidade
    from source
)

select
    data,
    simbolo,
    acao,
    quantidade
from renamed