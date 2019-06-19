use MoviesGraph
go

--Get all movies,actors
select Title,FirstName,LastName
from Movies,Actor, StarredIn
where match(actor-(starredIn)->Movies)


--Get Chris Hemsworth films
select Title,FirstName,LastName
from Movies,Actor, StarredIn
where match(actor-(starredIn)->Movies)
and FirstName = 'Chris' and lastName = 'Hemsworth'

--get Chris Hemsworth co-stars
with hemsworth_movies
as
(
	select movieID,actorId
	from Movies,Actor, StarredIn
	where match(actor-(starredIn)->Movies)
	and FirstName = 'Chris' and lastName = 'Hemsworth'
)
select Title,FirstName,LastName
from Movies m,Actor a,StarredIn s
where match(m-(s)->a)
and movieID in (select movieId from hemsworth_movies)
and ActorID not in (select actorId from hemsworth_movies)

--get actors that have NOT co starred with Chris Hemsworth
with hemsworth_movies
as
(
	select movieID,actorId
	from Movies,Actor, StarredIn
	where match(actor-(starredIn)->Movies)
	and title in ('The Avengers','Thor')
)
select Title,FirstName,LastName
from Movies m,Actor a,StarredIn s
where match(m-(s)->a)
and movieID not in (select movieId from hemsworth_movies)
and ActorID not in (select actorId from hemsworth_movies)
order by Title