

create database cinema;
create table viewer
(
id int (5) auto_increment primary key,
firstName varchar (15) not null,
secondName varchar (20) not null
);
create table ticket
(
ticketID int (5) auto_increment primary key,
movieSession date not null,
sessionTime time not null,
hallNumber int (2) not null,
hallDescription varchar (255) null,
movieName varchar (255) not null,
price float not null,
seat int (2) not null,
rowNumber int (2) not null,
foreign key (ticketID) references viewer (id)
);


SELECT * FROM bank.Client where city = "lviv";
SELECT firstname, lastname FROM bank.Client where age = "21";
SELECT * FROM bank.Client where education = "high";
SELECT * FROM bank.Client where education = "middle" and not city = 'lviv';
SELECT * FROM bank.Client where age >= "29" and age <= "30" and not Department_idDepartment = "4";



SELECT * FROM bank.Client where Department_idDepartment in ("1", "2", "4");
SELECT * FROM bank.Client where Age not between 30 and 35;
SELECT * FROM bank.Client where LastName like "%iv";
SELECT * FROM bank.Client where LastName regexp "iv";
SELECT * FROM bank.Client where Age < 25 and Passport like "___5%";




SELECT * FROM bank.Client order by age asc;
SELECT * FROM bank.Client where city = "Kyiv" order by lastname desc;
SELECT * FROM bank.Client order by age desc limit 3;
SELECT * FROM bank.Client where age = (select min(age) from bank.client);
SELECT * FROM bank.Client where age > (select avg(age) from bank.Client);


SELECT FirstName, passport FROM bank.Client
order by FirstName;

select * FROM bank.Client
inner join bank.Application
on Department_idDepartment = Client_idClient
where sum > 5000;

select count(LastName) 
from bank.Client
union all
select count(LastName) 
from bank.Client
inner join bank.Department
on idDepartment = Department_idDepartment 
where DepartmentCity = "Lviv";

select sum, Client_idClient
from bank.Application
left join bank.Client
on Department_idDepartment = Client_idClient
and sum = (select max(sum) from bank.Application
where Client_idClient);

select min(sum), max(sum)
from bank.Application;



SELECT FirstName, passport FROM bank.Client
order by FirstName;

select * FROM bank.Client
inner join bank.Application
on Department_idDepartment = Client_idClient
where sum > 5000;

select count(LastName) 
from bank.Client
union all
select count(LastName) 
from bank.Client
inner join bank.Department
on idDepartment = Department_idDepartment 
where DepartmentCity = "Lviv";

select sum, Client_idClient
from bank.Application
left join bank.Client
on Department_idDepartment = Client_idClient
and sum = (select max(sum) from bank.Application
where Client_idClient);

select min(sum), max(sum)
from bank.Application;