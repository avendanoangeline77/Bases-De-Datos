SELECT p.name , dl.age, dl.gender, dl.car_make, dl.car_model, dl.plate_number  from person p
join drivers_license dl on dl.id = p.license_id
where gender = "female" and age < 40
order by age desc
