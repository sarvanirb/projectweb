drop table ProductList
create table ProductList
(PId int primary key,
PName nvarchar(50) not null,
PPrice float not null,
PType nvarchar(50) not null,
PImages nvarchar(50) not null

)
insert into ProductList values (1,'Samsung mobile',50000,'Electronics')
insert into ProductList values (2,'Dominos Pizza',1000,'Food','Images/dominos.jpg')
insert into ProductList values (3,'Denim T-Shirt',5000,'Clothing')
insert into ProductList values (4,'Lakme Face wash',500,'Cosmetics')
insert into ProductList values (5,'Hotwheels car',2000,'Kids PlayToy')
insert into ProductList values (6,'Burger King',800,'Food')

select * from ProductList
create proc usp_insertprodlist
@id int,
@name nvarchar(50),
@price float,
@type nvarchar(50)
as
begin
insert into ProductList (PId,PName,PPrice,PType) values(@id,@name,@price,@type)
end
exec usp_insertprodlist 7,'Coco-Cola',45,'SoftDrink'



create proc usp_iprodlist
@id int,
@name nvarchar(50),
@price float,
@type nvarchar(50)
as
begin
update ProductList set PName=@name,PPrice=@price,PType=@type
where PId=@id
end
exec usp_iprodlist 6,'Pepsi',60,'SoftDrink'

create proc usp_idellist
@id int
as
begin
delete from ProductList where PId=@id
end
exec usp_idellist 6,'Burger King',800,'Food'



