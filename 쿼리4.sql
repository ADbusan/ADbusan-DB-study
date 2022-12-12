INSERT INTO course_mst VALUES
(0,1,1,1),
(0,2,1,2),
(0,3,1,2),
(0,1,2,2),
(0,3,2,1),
(0,1,3,1),
(0,1,4,2);
INSERT INTO emp_mst VALUES
(0,'문성현'),
(0,'고희주'),
(0,'장건녕'),
(0,'문승주');
INSERT INTO status_mst VALUES
(0,'수강'),
(0,'수료');
INSERT INTO student_dtl VALUES
(0,1),
(0,2),
(0,3),
(0,4);
INSERT INTO student_mst VALUES
(0,'신경수'),
(0,'고희주'),
(0,'장건녕'),
(0,'문승주');
INSERT INTO subject_mst VALUES
(0,'java'),
(0,'python'),
(0,'c')emp_mst;


SELECT
	cm.id '순번',
	sbm.subject	 '과목명',
	sm.name  '수강생명',
	em.name  '담당자명',
	stm.name  '상태'
FROM
	course_mst cm
	LEFT OUTER JOIN subject_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN student_mst sm ON(sm.id = cm.student_id)
	LEFT OUTER JOIN student_dtl sd ON (sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON (em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst stm ON (stm.id = cm.status_id);
	
SELECT
	sm.id '순번',
	sm1.subject '과목명',
	sm.name  '수강생명',
	em.name  '담당자명',
	sm2.name  '상태'
FROM
	student_mst sm
	LEFT OUTER JOIN student_dtl sd ON (sd.id = sm.id) 
	LEFT OUTER JOIN emp_mst em ON (em.id = sd.emp_id)
	LEFT OUTER JOIN course_mst cm ON (cm.student_id = sm.id)
	LEFT OUTER JOIN subject_mst sm1 ON (sm1.id = cm.subject_id)
	LEFT OUTER JOIN status_mst sm2 ON (sm2.id = cm.status_id)
ORDER BY
	'과목명';
	
	

