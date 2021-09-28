--! Track 1

--# 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT * 
from `students` 
where YEAR(`date_of_birth`) = 1990;

--# 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
from `courses`
where `cfu` > 10;

--# 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) <= 1991;

--# 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT * 
FROM `courses`
WHERE `period` = "I semestre" AND `year` = 1;

--# 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams` 
WHERE `date` = '2020/06/20' AND HOUR(`hour`) >= 14;

--# 6. Selezionare tutti i corsi di laurea magistrale (38)
SELECT *
FROM `degrees`
WHERE `level` = 'Magistrale';

--# 7. Da quanti dipartimenti è composta l'università? (12)
SELECT * 
FROM `departments`;

--# 8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT *
FROM `teachers`
WHERE `phone` IS NULL;

--! Track 2

--# 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `Total student`, YEAR(`enrolment_date`) AS `date`
FROM `students`
GROUP BY `date`;

--# 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `Teacher`, `office_address` AS `address`
FROM `teachers`
GROUP BY `address`;

--# 3. Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 2) AS `media`, `exam_id` AS `session`
FROM `exam_student`
GROUP BY `session`;

--# 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `total_courses`, `department_id`
FROM `degrees`
GROUP BY `department_id`;