SELECT
	course_id,
	SUM(score) AS '총합',
	AVG(SCORE) AS '평균'
from
	score_mst
GROUP BY
	course_id;