select p.name, dl.car_make, dl.car_model, dl.plate_number, dl.gender, dl.age FROM drivers_license dl  where dl.age > 70 and dl.gender = "male"
join person p on p.id = dl.id