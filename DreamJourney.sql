select * from tblbookmark;

select
			*
		from tblBookmark
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
    
select * from tblAccommodate where acco_seq = 1;