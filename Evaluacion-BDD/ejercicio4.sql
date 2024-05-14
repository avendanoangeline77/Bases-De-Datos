SELECT id, name, license_id, max(address_number) as direccion, address_street_name, ssn FROM person
where address_street_name = "Franklin Ave"  
