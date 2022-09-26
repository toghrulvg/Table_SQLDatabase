--create database Company

use Company

--create table Employees(
--[Id] int primary key identity(1,1),
--[Name] nvarchar (50) not null,
--[Surname] nvarchar (50) not null,
--[Age] int ,
--[Salary] int,
--[Position] nvarchar (50),
--[IsDeleted] bit)

ALTER TABLE Cities
add CountryId int foreign key references Countries(Id)

select * from Employees


create table Cities(
[Id] int primary key identity(1,1),
[Name] nvarchar (50) not null)

create table Countries(
[Id] int primary key identity(1,1),
[Name] nvarchar (50) not null)

select firstname, Cities.Name, Countries.Name from Employees
inner join Cities
on Cities.id = Employees.CityId
inner join Countries
on Countries.Id = Cities.CountryId


select firstname, Countries.Name from Employees
inner join Cities
on Cities.id = Employees.CityId
inner join Countries
on Countries.Id = Cities.CountryId  where Salary > 2000


select Cities.Name, Countries.Name from Employees
inner join Cities
on Cities.id = Employees.CityId
inner join Countries
on Countries.Id = Cities.CountryId



select [FirstName],[Surname], [Age], [Salary], [Position], Cities.Name, Countries.Name from Employees
inner join Cities
on Cities.id = Employees.CityId
inner join Countries
on Countries.Id = Cities.CountryId where Position = 'President'


select firstname, surname, Cities.Name, Countries.Name from Employees
inner join Cities
on Cities.id = Employees.CityId
inner join Countries
on Countries.Id = Cities.CountryId where isDeleted = 'True'






