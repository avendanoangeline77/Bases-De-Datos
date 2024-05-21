SELECT gc.check_in_date,p.name, gm.id , gm.membership_status, p.ssn  from get_fit_now_check_in gc
join get_fit_now_member gm on gc.membership_id = gm.id
join person p on gm.person_id = p.id
where gc.check_in_date like "2017%"
GROUP by p.name 
order by gm.membership_status, p.ssn