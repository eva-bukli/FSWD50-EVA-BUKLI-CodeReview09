---Complex JOIN---

SELECT custtomer_account.account_name, driver.driver_name, reservation.reservation_type, reservation_date.start_reservation, reservation_date.end_reservation, car_description.car_type, manufacturer.manufacturer_name 
FROM `custtomer_account` 
INNER JOIN `reservation` on custtomer_account.fk_reservation_id = reservation.reservation_id 
INNER JOIN `reservation_date` on reservation.FK_reservation_date_id=reservation_date.reservation_date_id 
INNER JOIN `driver` on driver.fk_account_id = custtomer_account.account_id 
INNER JOIN `car` on reservation.fk_car_id = car.car_id 
INNER JOIN `car_description` on car.fk_description_id =car_description.description_id 
INNER JOIN `manufacturer` on car.fk_manufacturer_id = manufacturer.manufacturer_id


---Left JOIN---

SELECT driver.driver_name, address.zip, address.city, address.street, address.street_number 
FROM `driver` 
LEFT JOIN `address` on driver.FK_address_id = address.address_id


---Right JOIN---

SELECT driver.driver_name, address.zip, address.city, address.street, address.street_number 
FROM `driver` 
RIGHT JOIN `address` on driver.FK_address_id = address.address_id


---Inner JOIN---

SELECT driver.driver_name, address.zip, address.city, address.street, address.street_number 
FROM `driver` 
INNER JOIN `address` on driver.FK_address_id = address.address_id


---Union JOIN---

SELECT driver.driver_name, address.zip, address.city, address.street, address.street_number 
FROM `driver` 
LEFT JOIN `address` on driver.FK_address_id = address.address_id 
UNION 
SELECT driver.driver_name, address.zip, address.city, address.street, address.street_number 
FROM `driver` 
RIGHT JOIN `address` on driver.FK_address_id = address.address_id
