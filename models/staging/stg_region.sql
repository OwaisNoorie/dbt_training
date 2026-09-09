with region as (
    select
    r_regionkey regionkey,
    r_name name,
    r_comment comment,
    --from sourcedb.mkmall.regions
from {{source('src','regions')}}
)
 
select * from region
