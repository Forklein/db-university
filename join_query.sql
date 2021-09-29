--! Track 3
--# 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`
from `degrees`
JOIN `students`
ON `degrees`.`id` = `students`.`degree_id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

--# 2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`;

--# 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name`
FROM `course_teacher`
JOIN `courses`
ON `course_teacher`.`course_id` = `courses`.`id`
WHERE `teacher_id` = 44;

--# 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name`, `departments`.`name`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
JOIN `students`
ON `degrees`.`id` = `students`.`degree_id`
ORDER BY `students`.`name`, `students`.`surname` ASC


--# 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti



--# 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `teachers`.`name`, `teachers`.`surname`, `departments`.`name`
FROM `departments`
JOIN `degrees`
ON `departments`.`id` = `degrees`.`department_id`
JOIN `courses`
ON `degrees`.`id` = `courses`.`degree_id`
JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica'

--# 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami