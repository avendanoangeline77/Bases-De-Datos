SELECT p.name from person p
left join get_fit_now_member gfm on  gfm.person_id = p.id
where gfm.id is null