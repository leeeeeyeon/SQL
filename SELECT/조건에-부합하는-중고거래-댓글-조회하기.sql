-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요. 
-- 결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.

select title, board.board_id, reply_id, reply.writer_id, reply.contents, date_format(reply.created_date, '%Y-%m-%d') as created_date
from used_goods_board board, used_goods_reply reply
where board.board_id = reply.board_id
and year(board.created_date) = 2022 and month(board.created_date) = 10
order by reply.created_date, title;