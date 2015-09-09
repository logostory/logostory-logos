
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
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test1', '테스트1번', '1', '010-xxxx-xxx1', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test2', '테스트2번', '1', '010-xxxx-xxx2', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test3', '테스트3번', '1', '010-xxxx-xxx3', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test4', '테스트4번', '2', '010-xxxx-xxx4', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test5', '테스트5번', '2', '010-xxxx-xxx5', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test6', '테스트6번', '2', '010-xxxx-xxx6', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test7', '테스트7번', '3', '010-xxxx-xxx7', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test8', '테스트8번', '3', '010-xxxx-xxx8', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test9', '테스트9번', '3', '010-xxxx-xxx9', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test10', '테스트10번', '4', '010-xxxx-xx10', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test11', '테스트11번', '4', '010-xxxx-xx11', 'N', 'N');
insert into logos_userClient(clientID, clientName, clientLevel, clientTel, clientBooking, clientApproval) values ('test12', '테스트12번', '4', '010-xxxx-xx12', 'N', 'N');


-- insert user (Manager)
delete from logos_userManager;
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager1', '매니저1번', 'a', '010-zzzz-zzz1', '2015-09-01', 'N');
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager2', '매니저2번', 'a', '010-zzzz-zzz2', '2015-09-02', 'N');
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager3', '매니저3번', 'a', '010-zzzz-zzz3', '2015-09-03', 'N');
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager4', '매니저4번', 'b', '010-zzzz-zzz4', '2015-09-04', 'N');
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager5', '매니저5번', 'b', '010-zzzz-zzz5', '2015-09-05', 'N');
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager6', '매니저6번', 'b', '010-zzzz-zzz6', '2015-09-06', 'N');
insert into logos_userManager(managerID, managerName, managerLevel, managerTel, managerAttendDate, managerApproval) values ('manager7', '매니저7번', 'c', '010-zzzz-zzz7', '2015-09-07', 'N');

