alter table "TABLE_2"
	drop constraint FK_TABLE_2_REFERENCE_TABLE_1;
drop view "VIEW_2" cascade;
alter table "TABLE_2"
	drop constraint FK_TABLE_2_REFERENCE_TABLE_1;
drop table "TABLE_2" cascade;

alter table "TABLE_1"
	drop primary key;
drop table "TABLE_1" cascade;

create column table "TABLE_1"
(
 "COLUMN_1" CHAR   not null,
 "COLUMN_2" DATE  ,
 primary key cpbtree ("COLUMN_1"));

create column table "TABLE_2"
(
 "COLUMN_1" CHAR  ,
 "COLUMN_2" DEC  );

create view "VIEW_2"("COLUMN_1","COLUMN_2") as
select
   TABLE_1.COLUMN_1,
   TABLE_1.COLUMN_2
from
   TABLE_1
;

 alter table "TABLE_2"
	 add constraint FK_TABLE_2_REFERENCE_TABLE_1  foreign key ("COLUMN_1")
		references "TABLE_1" ("COLUMN_1") on delete restrict on update restrict;
