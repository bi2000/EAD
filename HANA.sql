drop view "VIEW_2" cascade;
drop table "TABLE_1" cascade;

create column table "TABLE_1"
(
 "COLUMN_1"   ,
 "COLUMN_2"   );

create view "VIEW_2"("COLUMN_1","COLUMN_2") as
select
   TABLE_1.COLUMN_1,
   TABLE_1.COLUMN_2
from
   TABLE_1
;

