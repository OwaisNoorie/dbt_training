select 
n_nationkey nationid,
n_name name,
n_regionkey region_id,
n_comment comment
--from sourcedb.mkmall.nations
from {{source('src','nations')}}