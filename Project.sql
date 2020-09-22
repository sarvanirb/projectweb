create database SecurityDb
use SecurityDb
create table UserDetails
(UserName nvarchar(50) not null,
UserPwd nvarchar(50) not null
)
insert into UserDetails values('Sam','sam@1')
insert into UserDetails values('Ram','ram@2')
insert into UserDetails values('Rajiv','rajiv@3')
insert into UserDetails values('Deepak','deepak@4')
insert into UserDetails values('Kamala','kamala@5')
insert into UserDetails values('Sanjeev','sanjeev@6')
select * from UserDetails
