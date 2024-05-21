select fe.event_name ,count(fe.person_id) as popularidad , inc.annual_income as ingresos_anuales from facebook_event_checkin fe
join person p on fe.person_id = p.id
join income inc on p.ssn = inc.ssn 
where inc.annual_income > 35000
group by  event_name
order by count(fe.person_id) DESC
limit 5 