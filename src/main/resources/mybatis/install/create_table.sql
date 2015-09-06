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
	pmIsActive		char(2)		 default 'N' comment 'is active promotion',
	primary key (pmId)
);

-- user create table1
drop table if exists logos_userGuest;
create table if not exists logos_userGuest(
	uMembership		int not null auto_increment comment 'user membership',
	uID				varchar(255) comment 'user ID',
	uName			varchar(255) comment 'user name',
	uLevel			int(10) comment 'user level',
	uTel			varchar(255) comment 'user telephone number',
	uBooking		char(2)	default 'N',
	uApproval		char(2) default 'N',
	primary key (uMembership)
);

-- user create table2
drop table if exists logos_userManager;
create table if not exists logos_userManager(
	uCode			int not null auto_increment comment 'user manager code',
	uID				varchar(255) comment 'user ID',
	uName			varchar(255) comment 'user name',
	uLevel			int(10) comment 'user level',
	uTel			varchar(255) comment 'user telephone number',
	uAttendDate		varchar(255) comment 'user AttendDate',
	uApproval		char(2) default 'N',
	primary key (uCode)
);