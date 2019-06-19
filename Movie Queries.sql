--Get all movies and actors
select title,FirstName,LastName
from Actor a
	inner join StarredIn s
		on a.actorId = s.ActorID
	inner join Movies m
		on m.MovieId = s.MovieID



--find actors that have starred with Chris Hemsworth
with hemsworth_movies
as
(select m.MovieId,m.title, a.actorId
from actor a
	inner join StarredIn s
		on a.actorId = s.ActorID
	inner join Movies m
		on m.MovieId = s.MovieID
where FirstName = 'Chris' and LastName = 'Hemsworth'
)
select title,firstName,LastName
from actor a
	inner join starredIn s
		on a.ActorId = s.ActorId
	inner join hemsworth_movies hm
		on hm.movieId = s.MovieID
and a.ActorId <> hm.actorID
order by Title


--Actors that have NOT co-starred with Chris Hemsworth
with hemsworth_costars
as
(
select a.actorID
from Actor a
	inner join starredin s
		on a.actorId = s.actorId
	inner join Movies m
		on m.movieId = s.MovieId
where title in ('The Avengers', 'Thor')
)
select Title,a.FirstName,a.LastName
from Actor a
	left join hemsworth_costars h
		on a.actorId = h.actorId
	inner join starredIn s
		on s.ActorId = a.actorId
	inner join Movies m
		on m.MovieId = s.MovieID
and h.ActorId is null
order by Title