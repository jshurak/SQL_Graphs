Create Database Movies
GO
use Movies
go
create table Movies (
	MovieID int identity(1,1),
	Title Varchar(60)
)

Create table Actor (
	ActorID int identity(1,1),
	FirstName varchar(60),
	LastName varchar(60)
)

Create table StarredIn (
	ActorId Int,
	MovieId int
)


insert into actor values ('robert','downy')
insert into actor values ('scarlett','johansson')
insert into actor values ('chris','evans')
insert into actor values ('mark','ruffalo')
insert into actor values ('chris','hemsworth')
insert into actor values ('jeremy','renner')
insert into actor values ('tom','hiddleston')
insert into actor values ('clark','gregg')
insert into actor values ('samuel','jackson')
insert into actor values ('gwyneth','paltrow')
insert into Actor values ('Natalie','Portman')
insert into Actor values ('Idris','Elba')
Insert into Actor values ('Terrence','Howard')
Insert into Actor values ('Kat','Dennings')
Insert into Actor values ('Anthony','Hopkins')
Insert into Actor values ('Rene','Russo')
Insert into Actor values ('Jeff','Bridges')
Insert into Actor values ('Jon','Favreau')
Insert into Actor values ('Faran','Tahir')
Insert into Actor values ('Leslie','Bibb')
Insert into Actor values ('Shaun','Toub')
Insert into Actor values ('Sayed','Badreya')
insert into Actor values ('Tommy','Jones')
insert into Actor values ('Hayley','Atwell')
insert into Actor values ('Hugo','Weaving')
insert into Actor values ('Sebastian','Stan')
insert into Actor values ('Dominic','Cooper')
insert into Actor values ('Stanley','Tucci')
insert into Actor values ('Richard','Armitage')
insert into Actor values ('Derek','Luke')



insert into movies values ('The Avengers')
insert into movies values ('Iron Man')
insert into movies values ('Captain America')
insert into movies values ('Thor')

insert into StarredIn values ((select ActorId from actor where LastName = 'downy'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'johansson'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'evans'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'ruffalo'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'hemsworth'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'renner'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'hiddleston'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'gregg'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'jackson'),(select MovieId from Movies where title = 'The Avengers'))
insert into StarredIn values ((select ActorId from actor where LastName = 'paltrow'),(select MovieId from Movies where title = 'The Avengers'))

insert into StarredIn values ((select actorId from actor where lastName = 'downy'),(select MovieId from Movies where Title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastName =  'paltrow'),(select MovieId from Movies where Title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastName =  'gregg'),(select MovieId from Movies where Title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Howard'),(select MovieId from Movies where title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Bridges'),(select MovieId from Movies where title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Favreau'),(select MovieId from Movies where title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Tahir'),(select MovieId from Movies where title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Bibb'),(select MovieId from Movies where title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Toub'),(select MovieId from Movies where title = 'Iron Man'))
insert into StarredIn values ((select actorId from actor where lastname = 'Badreya'),(select MovieId from Movies where title = 'Iron Man'))

insert into StarredIn values ((select actorId from actor where lastName =  'evans'),(select MovieId from Movies where Title = 'Captain America'))
insert into StarredIn values ((select actorId from actor where lastName =  'jackson'),(select MovieId from Movies where Title = 'Captain America'))
insert into StarredIn values ((select actorId from actor where LastName = 'Jones'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Atwell'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Weaving'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Stan'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Cooper'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Tucci'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Armitage'),(select MovieId from Movies where title like 'Captain Am%'))
insert into StarredIn values ((select actorId from actor where LastName = 'Luke'),(select MovieId from Movies where title like 'Captain Am%'))



insert into StarredIn values ((select actorId from actor where lastName =  'hemsworth'),(select MovieId from Movies where Title = 'Thor'))
insert into StarredIn values ((select actorId from actor where lastName =  'renner'),(select MovieId from Movies where Title = 'Thor'))
insert into StarredIn values ((select actorId from actor where lastName =  'hiddleston'),(select MovieId from Movies where Title = 'Thor'))
insert into StarredIn values ((select actorId from actor where lastName =  'gregg'),(select MovieId from Movies where Title = 'Thor'))
insert into StarredIn values ((select actorId from actor where lastName =  'jackson'),(select MovieId from Movies where Title = 'Thor'))
insert into StarredIn values ((select actorId from actor where lastName = 'Portman'),(select MovieId from Movies where title = 'thor'))
insert into StarredIn values ((select actorId from actor where lastName = 'Elba'),(select MovieId from Movies where title = 'thor'))
insert into StarredIn values ((select actorId from actor where lastName = 'Dennings'),(select MovieId from Movies where title = 'thor'))
insert into StarredIn values ((select actorId from actor where lastName = 'Hopkins'),(select MovieId from Movies where title = 'thor'))
insert into StarredIn values ((select actorId from actor where lastName = 'Russo'),(select MovieId from Movies where title = 'thor'))



