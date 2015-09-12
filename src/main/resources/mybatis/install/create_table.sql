-- create table
drop table if exists logos_sample;
create table if not exists logos_sample(
	id int,
	name varchar(255)
);

drop table if exists logos_promotion;
create table if not exists logos_promotion(
	id	 			int not null auto_increment comment 'promotion id',
	pmType			varchar(255) comment 'promotion tpye',
	pmTitle			varchar(255) comment 'promotion title',
	pmContents		varchar(255) comment 'promotion content',
	pmImageUrl		varchar(255) comment 'promotion image Url',
	pmLinkurl		varchar(255) comment 'promotion link url',
	pmIsActive		char(2)		 default 'N' comment 'is active promotion',
	primary key (id)
);

-- user create table1
drop table if exists logos_userClient;
create table if not exists logos_userClient(
	clientMembership		int not null auto_increment comment 'client membership',
	clientID				varchar(255) comment 'client ID',
	clientPW				varchar(255) comment 'client PW',
	clientName				varchar(255) comment 'client name',
	clientLevel				char(2) default 'P' comment 'client level',
	clientTel				varchar(255) comment 'client telephone number',
	clientBooking			char(2)	default 'N',
	clientApproval			char(2) default 'N',
	primary key (clientMembership)
);

-- user create table2
drop table if exists logos_userManager;
create table if not exists logos_userManager(
	managerMembership			int not null auto_increment comment 'manager membership',
	managerID					varchar(255) comment 'manager ID',
	managerPW					varchar(255) comment 'manager PW',
	managerName					varchar(255) comment 'manager name',
	managerLevel				char(4)  default 'GM' comment 'manager level',
	managerTel					varchar(255) comment 'manager telephone number',
	managerAttendDate			varchar(255) comment 'manager AttendDate',
	managerApproval				char(2) default 'N',
	primary key (managerMembership)
);

-- drop table
drop table if exists logos_booking;
-- create table
create table if not exists logos_booking(
	
	bkNum 		int not null auto_increment comment 'booking number',
	bkName		varchar(10) comment 'booking of name if user it is id(user)',
	bkEmail		varchar(20) comment 'booking of email',
	bkPhone		varchar(40) comment 'booking of phone',
	bkPerson	varchar(10) comment 'booking of person',
	bkMessage	varchar(255)comment 'booking of message',
	primary key (bkNum)
);
