
-- insert sample data
insert into logos_sample(id, name) values(1, 'first logos');

-- insert promotion
delete from logos_promotion;
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2015 Summer Sale', '2015 summer sail is comming', '/resources/img/event/0001.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2016 Summer Sale', '2015 summer sail is comming', '/resources/img/event/0001.jpg', 'http://www.daum.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2017 Summer Sale', '2015 summer sail is comming', '/resources/img/event/0001.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2018 Summer Sale', '2018 winter sail is comming', '/resources/img/event/0002.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2019 Summer Sale', '2019 summer sail is comming', '/resources/img/event/0003.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2020 Summer Sale', '2020 summer sail is comming', '/resources/img/event/0004.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2021 Summer Sale', '2021 summer sail is comming', '/resources/img/event/0005.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2022 Summer Sale', '2022 summer sail is comming', '/resources/img/event/0006.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2023 Summer Sale', '2023 summer sail is comming', '/resources/img/event/0007.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2024 Summer Sale', '2024 summer sail is comming', '/resources/img/event/0008.jpg', 'http://www.naver.com', 'Y');
insert into logos_promotion(pmType, pmTitle, pmContents, pmImageUrl, pmLinkUrl, pmIsActive) values ('Link', '2025 Summer Sale', '2025 summer sail is comming', '/resources/img/event/0009.jpg', 'http://www.naver.com', 'Y');


-- insert user (Guest)
delete from logos_userClient;
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test01', '0000', '테스트1번', 'P', '010-xxxx-xxx1', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test02', '0000', '테스트2번', 'P', '010-xxxx-xxx2', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test03', '0000', '테스트3번', 'P', '010-xxxx-xxx3', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test04', '0000', '테스트4번', 'B', '010-xxxx-xxx4', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test05', '0000', '테스트5번', 'B', '010-xxxx-xxx5', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test06', '0000', '테스트6번', 'B', '010-xxxx-xxx6', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test07', '0000', '테스트7번', 'S', '010-xxxx-xxx7', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test08', '0000', '테스트8번', 'S', '010-xxxx-xxx8', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test09', '0000', '테스트9번', 'S', '010-xxxx-xxx9', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test10', '0000', '테스트10번', 'G', '010-xxxx-xx10', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test11', '0000', '테스트11번', 'G', '010-xxxx-xx11', 'N', 'N');
insert into logos_userClient(clientID, clientPW, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test12', '0000', '테스트12번', 'G', '010-xxxx-xx12', 'N', 'N');


-- insert user (Manager)
delete from logos_userManager;
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager1', '0000', '매니저1번', 'GM', '010-zzzz-zzz1', '2015-09-01', 'N');
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager2', '0000', '매니저2번', 'GM', '010-zzzz-zzz2', '2015-09-02', 'N');
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager3', '0000', '매니저3번', 'GM', '010-zzzz-zzz3', '2015-09-03', 'N');
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager4', '0000', '매니저4번', 'TM', '010-zzzz-zzz4', '2015-09-04', 'N');
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager5', '0000', '매니저5번', 'TM', '010-zzzz-zzz5', '2015-09-05', 'N');
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager6', '0000', '매니저6번', 'TM', '010-zzzz-zzz6', '2015-09-06', 'N');
insert into logos_userManager(clientID, clientPW, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager7', '0000', '매니저7번', 'B', '010-zzzz-zzz7', '2015-09-07', 'N');


-- delete seq, booking
delete from logos_booking;
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
insert into logos_booking(bkName, bkEmail, bkPhone, bkPerson, bkMessage) values
('Iam', 'logos@mail.com', '010-1234-5678', '3', '커피는 맛있게...');
