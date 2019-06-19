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


--Get Chris Hemsworth co stars
select Title,a2.FirstName,a2.LastName
from Movies,Actor a,StarredIn, actor a2, starredIn s2
where match(
	a-(starredIn)->Movies
	and
	Movies-(s2)->a2
)
and a.ActorID = (select actorID from actor where FirstName = 'Chris' and lastName = 'Hemsworth')
and a2.actorId <> (select actorID from actor where FirstName = 'Chris' and lastName = 'Hemsworth')

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
