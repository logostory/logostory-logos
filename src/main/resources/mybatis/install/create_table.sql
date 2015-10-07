-- create table
drop table if exists logos_sample;
create table if not exists logos_sample(
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
	pmIsActive		char(2)		 default 'N' comment 'is active promotion',
	primary key (pmId)
);

-- user create table1
drop table if exists logos_userGuest;
create table if not exists logos_userGuest(
	uMembership		int not null auto_increment comment 'user membership',
	pmId			varchar(255) comment 'promotion id',
	uName			varchar(255) comment 'user name',
	uLevel			int(10) comment 'user level',
	uTel			varchar(255) comment 'user telephone number',
	uBooking		char(2)	default 'N',
	uApproval		char(2) default 'N',
	primary key (uMembership),
	foreign key (pmId) references logos_promotion (pmId)
);

-- user create table2
drop table if exists logos_userManager;
create table if not exists logos_userManager(
	uCode			int not null auto_increment comment 'user manager code',
	pmId			varchar(255) comment 'promotion id',
	uName			varchar(255) comment 'user name',
	uLevel			int(10) comment 'user level',
	uTel			varchar(255) comment 'user telephone number',
	uAttendDate		varchar(255) comment 'user AttendDate',
	uApproval		char(2) default 'N',
	primary key (uCode),
	foreign key (pmId) references logos_promotion(pmId)
);

-- product create table
drop table if exists logos_product;
create table if not exists logos_product(
	f_id 			int not null auto_increment ,
	f_type			varchar(255),
	f_name		varchar(255),
	f_desc			varchar(255),
	image_addr	varchar(255) ,
	primary key (f_id)
);