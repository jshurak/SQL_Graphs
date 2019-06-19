Create Database MoviesGraph
GO
use MoviesGraph
go
create table Movies (
	MovieID int identity(1,1),
	Title Varchar(60)
) as node

Create table Actor (
	ActorID int identity(1,1),
	FirstName varchar(60),
	LastName varchar(60)
) as Node

Create table StarredIn as edge


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

insert into StarredIn values ((select $node_id from actor where lastname = 'downy'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'johansson'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'evans'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'ruffalo'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'hemsworth'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'renner'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'hiddleston'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'gregg'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'jackson'),(select $node_id from Movies where title = 'The Avengers'))
insert into StarredIn values ((select $node_id from actor where lastname = 'downy'),(select $node_id from Movies where title = 'The Avengers'))

insert into StarredIn values ((select $node_id from actor where lastname = 'downy'),(select $node_id from Movies where Title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'gregg'),(select $node_id from Movies where Title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'downy'),(select $node_id from Movies where Title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Howard'),(select $node_id from Movies where title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Bridges'),(select $node_id from Movies where title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Favreau'),(select $node_id from Movies where title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Tahir'),(select $node_id from Movies where title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Bibb'),(select $node_id from Movies where title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Toub'),(select $node_id from Movies where title = 'Iron Man'))
insert into StarredIn values ((select $node_id from actor where lastname = 'Badreya'),(select $node_id from Movies where title = 'Iron Man'))

insert into StarredIn values ((select $node_id from actor where lastname = 'evans'),(select $node_id from Movies where Title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where lastname = 'jackson'),(select $node_id from Movies where Title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Jones'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Atwell'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Weaving'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Stan'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Cooper'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Tucci'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Armitage'),(select $node_id from movies where title = 'Captain America'))
insert into StarredIn values ((select $node_id from actor where LastName = 'Luke'),(select $node_id from movies where title = 'Captain America'))



insert into StarredIn values ((select $node_id from actor where lastname = 'hemsworth'),(select $node_id from Movies where Title = 'Thor'))
insert into StarredIn values ((select $node_id from actor where lastname = 'renner'),(select $node_id from Movies where Title = 'Thor'))
insert into StarredIn values ((select $node_id from actor where lastname = 'hiddleston'),(select $node_id from Movies where Title = 'Thor'))
insert into StarredIn values ((select $node_id from actor where lastname = 'gregg'),(select $node_id from Movies where Title = 'Thor'))
insert into StarredIn values ((select $node_id from actor where lastname = 'jackson'),(select $node_id from Movies where Title = 'Thor'))
insert into StarredIn values ((select $node_id from actor where lastName = 'Portman'),(select $node_id from Movies where title = 'thor'))
insert into StarredIn values ((select $node_id from actor where lastName = 'Elba'),(select $node_id from Movies where title = 'thor'))
insert into StarredIn values ((select $node_id from actor where lastName = 'Dennings'),(select $node_id from Movies where title = 'thor'))
insert into StarredIn values ((select $node_id from actor where lastName = 'Hopkins'),(select $node_id from Movies where title = 'thor'))
insert into StarredIn values ((select $node_id from actor where lastName = 'Russo'),(select $node_id from Movies where title = 'thor'))




insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'downy'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'johansson'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'evans'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'ruffalo'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'hemsworth'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'renner'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'hiddleston'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'gregg'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'jackson'))
insert into StarredIn values ((select $node_id from Movies where title = 'The Avengers'),(select $node_id from actor where lastname = 'downy'))

insert into StarredIn values ((select $node_id from Movies where Title = 'Iron Man'),(select $node_id from actor where lastname = 'downy'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Iron Man'),(select $node_id from actor where lastname = 'gregg'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Iron Man'),(select $node_id from actor where lastname = 'downy'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Howard'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Bridges'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Favreau'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Badreya'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Bibb'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Toub'))
insert into StarredIn values ((select $node_id from Movies where title = 'Iron Man'),(select $node_id from actor where lastname = 'Tahir'))

insert into StarredIn values ((select $node_id from Movies where Title = 'Captain America'),(select $node_id from actor where lastname = 'evans'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Captain America'),(select $node_id from actor where lastname = 'jackson'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Stan'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Tucci'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Jones'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Atwell'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Cooper'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Weaving'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Armitage'))
insert into StarredIn values ((select $node_id from movies where title = 'Captain America'),(select $node_id from actor where LastName = 'Luke'))

insert into StarredIn values ((select $node_id from Movies where Title = 'Thor'),(select $node_id from actor where lastname = 'hemsworth'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Thor'),(select $node_id from actor where lastname = 'renner'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Thor'),(select $node_id from actor where lastname = 'hiddleston'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Thor'),(select $node_id from actor where lastname = 'gregg'))
insert into StarredIn values ((select $node_id from Movies where Title = 'Thor'),(select $node_id from actor where lastname = 'jackson'))
insert into StarredIn values ((select $node_id from Movies where title = 'thor'),(select $node_id from actor where lastName = 'Elba'))
insert into StarredIn values ((select $node_id from Movies where title = 'thor'),(select $node_id from actor where lastName = 'Dennings'))
insert into StarredIn values ((select $node_id from Movies where title = 'thor'),(select $node_id from actor where lastName = 'Portman'))
insert into StarredIn values ((select $node_id from Movies where title = 'thor'),(select $node_id from actor where lastName = 'Hopkins'))
insert into StarredIn values ((select $node_id from Movies where title = 'thor'),(select $node_id from actor where lastName = 'Russo'))












