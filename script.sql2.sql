select * from tblmember;

select * from tblaccommodate;

select * from tblroom;

CREATE OR REPLACE VIEW vwacc AS
SELECT tblaccommodate.name, tblaccommodate.address, tblaccommodate.type, tblroom.limit AS limit, 
tblaccommodate.acco_img, tblaccommodate.acco_seq
FROM tblaccommodate
INNER JOIN tblroom ON tblaccommodate.acco_seq = tblroom.acco_seq;

select * from vwacc;

select distinct * from vwacc where address like '%서울%' and limit >= '3';

select tbltransport.tran_seq, tbltransport.type, tbltransport.runtime,
tbltransport.departure, tbltransport.destination, tbltransport.limit,
tbltransport.price, tbltrandate.tran_date 
from tbltransport
inner join tbltrandate on tbltransport.tran_seq = tbltrandate.tran_seq where type='비행기';

select * from tbltrandate;

create or replace view vwairplane as
select tbltransport.tran_seq, tbltransport.type, tbltransport.runtime,
tbltransport.departure, tbltransport.destination, tbltransport.limit,
tbltransport.price, tbltrandate.tran_date 
from tbltransport
inner join tbltrandate on tbltransport.tran_seq = tbltrandate.tran_seq where type='비행기';

create or replace view vwbus as
select tbltransport.tran_seq, tbltransport.type, tbltransport.runtime,
tbltransport.departure, tbltransport.destination, tbltransport.limit,
tbltransport.price, tbltrandate.tran_date 
from tbltransport
inner join tbltrandate on tbltransport.tran_seq = tbltrandate.tran_seq where type='버스';

create or replace view vwtrain as
select tbltransport.tran_seq, tbltransport.type, tbltransport.runtime,
tbltransport.departure, tbltransport.destination, tbltransport.limit,
tbltransport.price, tbltrandate.tran_date 
from tbltransport
inner join tbltrandate on tbltransport.tran_seq = tbltrandate.tran_seq where type='기차';

select * from vwairplane;

select * from vwairplane where departure like '%서울%' and destination like '%제주%' and limit>='100';
select * from vwtrain;
select * from vwbus;

