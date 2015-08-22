-- create table
drop table if exists logos_sample;
create table logos_sample(
	id int,
	name varchar(255)
);

drop table if exists logos_promotion;
create table if not exists logos_promotion(
	pmId 			int not null auto_increment comment 'promotion id',
	pmType			varchar(255) comment 'promotion tpye',
	pmTitle			varchar(255) comment 'promotion title',
	pmContents		varchar(255) comment 'promotion content',
	pmImageUrl		varchar(255) comment 'promotion image Url',
	pmLinkurl		varchar(255) comment 'promotion link url',
	primary key (pmId)
);