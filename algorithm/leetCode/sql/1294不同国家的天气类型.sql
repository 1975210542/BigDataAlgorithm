select c.country_name , case when avg(w.weather_state)<=15 then 'Cold'  when avg(w.weather_state)>=25 then 'Hot' else 'Warm' end as weather_type

from Weather as w left join Countries as c on w.country_id = c.country_id
 where year(w.day) = 2019 and month(w.day) = 11
group by w.country_id;