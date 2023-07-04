
select
			*
			where member_seq = 5
				order by bookmark_seq desc;

select * from tblActivity;
select * from tblAccommodate;

select 
    ac.name as Accommodate_name,
    ac.address as Accommodate_address,
    at.title as Activity_name,
    at.address as Activity_address,
    at.category as Activity_category,
    at.price as Activity_price,
    f.name as Food_name,
    f.address as Food_address,
    ar.name as Area_name,
    ar.address as Area_address
from tblBookmark b
    left outer join tblAccommodate ac on b.acco_seq = ac.acco_seq
    left outer join tblActivity at on b.activity_seq = at.activity_seq
    left outer join tblFood f on b.food_seq = f.food_seq
    left outer join tblArea ar on b.area_seq = ar.area_seq
    where b.member_seq = 5;
    
select
    *
from tblMember m;
    
select * from tblTranReserve tr
select 
    tp.type,
    tp.runtime,
    tp.departure,
    tp.destination,
    tp.price,
    td.tran_date,
    td.begin,
    tr.regdate
from tblTranReserve tr
    inner join tblTranDate td
        on tr.trandate_seq = td.trandate_seq
            inner join tblTransport tp
                on td.tran_seq = tp.tran_seq;
SELECT
    a.type,
    a.begin,
    a.departure,
    a.destination,
    a.regdate,
    a.price
FROM tblMember m
INNER JOIN (
    SELECT tr.*, td.*, tp.*
    FROM tblTranReserve tr
    INNER JOIN tblTranDate td ON tr.trandate_seq = td.trandate_seq
    INNER JOIN tblTransport tp ON td.tran_seq = tp.tran_seq) a ON m.member_seq = a.member_seq
        where m.member_seq = 5;
                on td.tran_seq = tp.tran_seq
                    where tr.member_seq = 5;


    
select * from tblAccommodate where acco_seq = 1;