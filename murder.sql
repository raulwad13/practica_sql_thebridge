-- SELECT *
-- FROM crime_scene_report
-- WHERE date in ("20180115");


-- SELECT *
-- FROM crime_scene_report
-- WHERE city in ("SQL City")
-- ORDER BY 1 DESC;


-- SELECT *
-- FROM crime_scene_report
-- WHERE type in ("murder")
-- ORDER BY 1 DESC;

-- encaja fecha, tipo y lugar:
-- 20180115	murder	Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City

-- SELECT *
-- FROM person
-- WHERE address_street_name LIKE ("Northwestern Dr")
-- ORDER BY address_number DESC;

-- SELECT *
-- FROM person
-- WHERE address_street_name LIKE ("Franklin Ave")
-- ORDER BY name like ("Annabel") DESC;


-- Nombres de los testigos: Morty Schapiro(id=14887)(license=118009) y Annabel Miller(id=16371)(liscence=490173).

-- Buscar la id de los dos para ver su interview.

-- SELECT *
-- FROM interview
-- WHERE person_id like ("14887");
-- Testimonio Morty:
-- I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".

-- SELECT *
-- FROM interview
-- WHERE person_id like ("16371");

-- Testimonio Annabel:
-- I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

-- Buscar miembro de gimnasio
-- SELECT *
-- FROM get_fit_now_member
-- WHERE id LIKE '48Z%' AND membership_status == 'gold';

-- -- Gym check in
-- SELECT *
-- FROM get_fit_now_check_in
-- WHERE membership_id LIKE '48Z%' AND check_in_date LIKE '%0109';


-- Buscar matrícula del coche
-- SELECT * 
-- FROM drivers_license
-- WHERE plate_number LIKE "%H42W%";

-- -- Nombre Culpable
-- SELECT *
-- FROM person
-- WHERE id == '28819' OR id == '67318';
