SELECT
	om.id AS '주 문 번 호',
	od.product_id AS '제 품 번 호',
	pm.product_name,
	pm.product_price,
	od.order_stock,
	om.user_id,
	um.name
/*출력하는 부분*/
FROM
	order_mst om /*order_mst를 om으로 정의*/
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id)
	/*order_dtl를 od로 정의 후 od 안에 있는 order_id랑 order_mst안에 있는 id는 같다라고 정의*/
	LEFT OUTER JOIN product_mst pm ON (pm.id = od.product_id)
	/*product_mst를 pm으로 정의 후 pm안에있는 id랑 od안에 있는 product_id 랑 같다고 정의*/
	LEFT OUTER JOIN user_mst um ON (om.user_id = um.id)
	/*user_mst를  um으로 정의 후 om안에있는 user_id랑 um안에 id랑 같다고 정의*/


SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name

FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_img ni ON(ni.notice_id = nm.id);