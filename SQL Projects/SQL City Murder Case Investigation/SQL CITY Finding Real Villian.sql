/* Congrats, you found the murderer! But wait, there's more...if you think you are
up for a challenge, try querying the interview transcript of the murderer to find
the real villian behind the crime. If you fell especially confident in your SQL
skills, try to complete this final step with no more than 2 queries. Use this same
INSERT statement with your new suspect to check your answer */

SELECT * FROM person
WHERE name = 'Jeremy Bowers'

--The killer's ID is 67318

SELECT * FROM interview
WHERE person_id = 67318

/* The killer said: I was hired by a woman with a lot of money. I don't know her 
name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she 
drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times 
in December 2017. */

SELECT * FROM drivers_license
WHERE height BETWEEN 65 AND 67
AND hair_color = 'red'
AND gender = 'female'
AND car_make = 'Tesla'
AND car_model = 'Model S'

CREATE TABLE suspects AS (SELECT * FROM drivers_license
WHERE height BETWEEN 65 AND 67
AND hair_color = 'red'
AND gender = 'female'
AND car_make = 'Tesla'
AND car_model = 'Model S')

SELECT * FROM suspects

--202298, 291182, 918773

SELECT * FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
AND date BETWEEN 20171201 AND 20171231

SELECT s.id, s.age, s.height,
p.id AS person_id, p.name, p.address_street_name, p.ssn
FROM suspects AS S
RIGHT JOIN person AS p
ON s.id = p.license_id

--Person ID of the 3 suspects are 99716, 90700 and 78881

SELECT * FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
AND date BETWEEN 20171201 AND 20171231
AND person_id IN (99716,90700,78881)

--The abetter has person ID 99716

SELECT * FROM person
WHERE id = 99716

--Miranda Priestly is the brain behind the murderer 
