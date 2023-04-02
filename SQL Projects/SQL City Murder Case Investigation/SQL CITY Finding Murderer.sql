/* Objective: I vaguely remember that the crime was a murder that occured sometime
in January 15, 2018 and that it took place in SQL city. Start by retrieving the
corresponding crime scene report from the police department's database */

SELECT * FROM crime_scene_report

SELECT * FROM crime_scene_report
WHERE date = 20180115 AND city = 'SQL City'

/* Security footage shows that there were 2 witnesses.
The first witness lives at the last house on "Northwestern Dr".
The second witness, named Annabel, lives somewhere on "Franklin Ave". */

--Witness one - He or She lives at the last house on Northwestern Dr

SELECT * FROM person

SELECT * FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC

/* Witness one is Mr Morty Schapiro, with ID 14887, has a car with license ID
118009, lives on the Northern Dr with address number 4919 and has SSN 111564949 */

SELECT address_street_name, MAX (address_number) FROM person
GROUP BY address_street_name
HAVING address_street_name = 'Northwestern Dr'

SELECT * FROM person
WHERE address_number = 4919

SELECT * FROM person
WHERE name LIKE '%Annabel%'
AND address_street_name = 'Franklin Ave'

/* Our second witness is Annabel Miller with ID 16371, license ID 490173, who lives
on Franklin Ave with address number 103 and SSN 318771143 */

SELECT * FROM interview
WHERE person_id = 14887

/* Mr Morty Schapiro - I heard a gunshot and then saw a man run out.
He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z".
Only gold members have those bags.
The man got into a car with a plate that included "H42W". */

SELECT * FROM interview
WHERE person_id = 16371

/* Annabel Miller - I saw the murder happen, and I recognized the killer
from my gym when I was working out last week on January the 9th. */

SELECT * FROM get_fit_now_member
WHERE id LIKE '48Z%' AND membership_status = 'gold'

/* Suspect 1 - Joe Germuska with ID 48Z7A, person ID 28819, membership start date 
20160305 and has a gold status */
/* Suspect 2 - Jeremy Bowers with ID 48Z55, person ID 67318, membership start date
201601101 and has a gold status */

SELECT * FROM get_fit_now_check_in
WHERE check_in_date = 20180109 AND membership_id IN ('48Z7A', '48Z55')

SELECT dl.age, dl.height, dl.hair_color, dl.gender, dl.plate_number, dl.car_make,
dl.car_model, p.name, P.ssn, p.address_street_name, p.id
FROM drivers_license AS dl
LEFT JOIN person AS p
ON dl.id = p.license_id
WHERE plate_number LIKE '%H42W%' OR plate_number LIKE 'H42W%' OR plate_number LIKE
'%H42W'