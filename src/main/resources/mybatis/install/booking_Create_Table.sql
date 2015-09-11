
-- drop table
drop table if exists logos_booking;

-- create table
create table if not exists logos_booking(
	
	bkNum 		primary auto_increment comment 'booking number',
	bkName		varchar(10) comment 'booking of name if user it is id(user)',
	bkEmail		varchar(20) comment 'booking of email',
	bkPhone		varchar(40) comment 'booking of phone',
	bkPerson	varchar(10) comment 'booking of person',
	bkMessage	varchar(255)comment 'booking of message',
	
);

