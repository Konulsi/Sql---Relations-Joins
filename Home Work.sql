create database Company

use Company

create table Employees(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50),
	[Age] int,
	[Salary] decimal,
	[Position] nvarchar(50),
	[IsDeleted] bit,
	[CityId] int foreign key references Cities(Id)
)

create table Cities(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50),
	[CountryId] int foreign key references Countries(Id)
)


create table Countries(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50)
)

--*  Ishcilerin ozlerini, yashadiqi sheherlerini ve olkelerini gosterin.

select em.Name, em.Surname,ct.name, co.Name from Employees em
inner join Cities ct
on em.CityId = ct.Id
inner join Countries co
on co.Id = ct.CountryId




--*  Maashi 2000-den yuxari olan ishcilerin adlari ve yashadiqi olkeleri gosterin.

select em.Name, co.Name from Employees em
inner join Cities ct
on em.CityId = ct.Id
inner join Countries co
on co.Id = ct.CountryId
where em.Salary > 2000




--*  Hansi sheherin hansi olkeye aid olduqunu gosterin.

select ct.Name, co.Name from Cities ct
inner join Countries co
on ct.CountryId = co.Id




--*  Positioni "Reseption" olan ishcilerin table-larin id-leri daxil olmamaq sherti ile butun melumatlarini gostermek.

select em.Name, em.Surname, em.Age ,em.Salary, em.Position, ct.Name, co.Name, em.IsDeleted from Employees em
inner join Cities ct
on em.CityId = ct.Id
inner join Countries co
on co.Id = ct.CountryId
where em.Position = 'Reseption'




 --* Ishden cixan ishcilerin yashadiqi sheher ve olkeleri, hemcinin ishcilerin oz ad ve soyadlarini gosteren query yazin.

 select em.Name, em.Surname, ct.Name, co.Name, em.IsDeleted  from Employees em
 inner join Cities ct
 on em.CityId = ct.Id
 inner join Countries co
 on co.Id = ct.CountryId
 where em.IsDeleted = 'True'