SELECT p.name from person p
left join get_fit_now_member gfm on  gfm.person_id = p.id---left muestra tambien aquellos que estan en is null--
where gfm.id is null
