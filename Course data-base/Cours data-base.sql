create database Course
use Course

--create table Educations(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null,
--	[Durations] int
--) 



--insert into Educations ([Name],[Durations])
--values  ('Programming',360),
--		('Designer',300),
--		('Digital Marketing',250),
--		('System Adminstration',280),
--		('UX/UI',320)

		



--create table Groups(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null,
--	[EducationId] int foreign key references Educations(Id),
--	[RoomId] int foreign key references Rooms(Id),
--	[WeekDaySeansId] int foreign key references WeekDaySeans(Id)
--)




--insert into Groups ([Name])
--values  ('P-135'),
--		('D-150'),
--		('DM-111'),
--		('SA-223'),
--		('UX/UI-110')




--create table Rooms(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null,
--	[Capacity] int
--)

--insert into Rooms ([Name],[Capacity])
--values  ('Serious',18),
--		('Neptun',16),
--		('Pluton', 14),
--		('Yupiter',20),
--		('Saturn',15)



--create table WeekDays(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null
--)

--insert into WeekDays ([Name])
--values  ('WeekDays'),
--		('WeekEnd')
	






--create table WeekDaySeans(
--	[Id] int primary key identity(1,1),
--	[WeekDayId] int foreign key references WeekDays(Id),
--	[SeansId] int foreign key references Seanses(Id)
--)




--create table Seanses(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null
--)


--insert into Seanses ([Name])
--values  ('Morning'),
--		('Afternoon'),
--		('Evning')
	



--create table Countries(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null
--)

--insert into Countries ([Name])
--values  ('Azerbaijan'),
--		('Turkey'),
--		('Georgia'),
--		('London')
		




--create table Cities(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null,
--	[CountryId] int foreign key references Countries(Id)
--)




--insert into Cities ([Name])
--values  ('Baku'),
--		('Gence'),
--		('Istanbul'),
--		('Ankara'),
--		('Tbilisi'),
--		('London')

 
	



--create table Teachers(
--	[Id] int primary key identity(1,1),
--	[FullName] nvarchar(100) not null,
--	[Email] nvarchar(150) unique,
--	[Address] nvarchar(150) default 'XXX',
--	[Salary] decimal,
--	[CityId] int foreign key references Cities(Id)
--)

--insert into Teachers ([FullName], [Email], [Address],[Salary])
--VALUES ('Konul Ibrahimova','konul@gmail.com','Bayil',5000),
--       ('Cinare Ibadova','cinare@gmail.com','LokBatan',4000),
--  ('Roya Meherremova','roya@gmail.com','Sumqayit',3000),
--  ('Ali Talibov','ali@gmail.com','Xetai',2000),
--  ('Cavid Ismayilzade','cavid@gmail.com','Sulutepe',1000),
--  ('Alakbar Hasanov','alakbar@gmail.com','Bayil',3500)




--create table GroupTeachers(
--	[Id] int primary key identity(1,1),
--	[GroupId] int foreign key references Groups(Id),
--	[TeacherId] int foreign key references Teachers(Id)
--)


select * from GroupTeachers


--create table Roles(
--	[Id] int primary key identity(1,1),
--	[Name] nvarchar(50) not null
--)

--INSERT INTO Roles ([Name])
--VALUES ('Director'),
--       ('Deputy'),
--       ('Librarian'),
--       ('Keeper'),
--       ('Master'),
--	   ('Cleaner')
	   



--create table RoleMembers(
--	[Id] int primary key identity(1,1),
--	[RoleId] int foreign key references Roles(Id),
--	[MemberId] int foreign key references StaffMembers(Id)
--)


--create table StaffMembers(
--	[Id] int primary key identity(1,1),
--	[FullName] nvarchar(100) not null,
--	[Salary] decimal,
--	[CityId] int foreign key references Cities(Id)
--)

--INSERT INTO StaffMembers([FullName],[Salary])
--VALUES ('Daniel',500),
--       ('Ikram',600),
--       ('Tebriz',700),
--       ('Umid',800),
--       ('Aga',900),
--	   ('Nahide',900)

	   
			

--create table Students(
--	[Id] int primary key identity(1,1),
--	[FullName] nvarchar(100) not null,
--	[Birthday] date,
--	[Address] nvarchar(150) default 'XXX',
--	[CityId] int foreign key references Cities(Id)
--)


--INSERT INTO Students ([FullName],[Birthday],[Address])
--VALUES ('Anar Aliyev','1995-04-11','Raboci'),
--       ('Samil Abbasli','1996-05-12','Bayil'),
--       ('Cavid Bashirov','1997-06-13','Ehmedli'),
--       ('Besir Huseynzade','1998-07-14','Mastaga'),
--	    ('Zehra Huseynzade','1998-07-14','Narimanov'),
--       ('Lale Aliyeva','1999-08-15','Elmler')



--create table GroupStudents(
--	[Id] int primary key identity(1,1),
--	[GroupId] int foreign key references Groups(Id),
--	[StudentId] int foreign key references Students(Id)
--)



