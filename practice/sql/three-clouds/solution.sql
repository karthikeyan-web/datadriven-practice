select amount from cloud_costs where amount is not null and lower(provider) in ('gcp','azure') order by amount asc;
