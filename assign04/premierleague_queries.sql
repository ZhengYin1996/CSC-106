-- premierleague_queries.sql
-- CSC 106 - Jan 2019
-- File for Assignment 4, Task 3 queries.



.read premierleague_data.sql

.mode column
.header on

-------------------------------------------
-- Put your answers for Task 3 below --
-------------------------------------------

-- Write a query to print the team name, city, stadium name and capacity of all stadiums in the league in order of decreasing capacity.
-- Question 1 --
.print ''
.print 'Question 1'
.width 20 20 20 10 
select * from stadiums
ORDER BY capacity DESC;


-- Write a query to print the names of the players that are goal keepers that play at a home stadium with a capacity between 30000 and 50000.  You should print this in alphabetical order of the name of the stadium they play at.
-- Question 2 --
.print ''
.print 'Question 2'
.width 20 20
select player_name, stadium_name from players, stadiums
where capacity>=30000 AND capacity<=50000 AND players.team_name = stadiums.team_name AND position = 'GK'
ORDER BY player_name;




.print ''
-- Write a query to print the names of the referee, the number of games they have refereed and the number of red cards and yellow cards they award to the home team.  The output should be in order of the number of red cards then by yellow cards
-- Question 3 --
.print ''
.print 'Question 3'
.width 15 15 12 12
select referee, count(referee) AS games_refereed, sum(team_redcards) AS red_cards, sum(team_yellowcards) AS yellow_cards
from games
GROUP BY referee
ORDER BY red_cards,yellow_cards;





-- Write a query to print the nationality and the number of players of that nationality.  Print those nationalities with either 1 player or more than 10 players in the league.  The data should be sorted by increasing number of players of a given nationality.
-- Question 4 --
.print ''
.print 'Question 4'
.width 20 14
select nationality, COUNT(player_name) AS num_players
FROM players
GROUP BY nationality
HAVING num_players >10 OR num_players =1
ORDER BY num_players;





-- Write a query to print the number of wins that each home team had. Print the result in decreasing order of wins..
-- Question 5 --
.print ''
.print 'Question 5'
.width 20 14
select team_name, sum(winner is 'H') as num_wins
from games
group by team_name
ORder by num_wins desc;





-- Write a query to print the names of players on most winning team ordered by nationality then by player name.
-- Question 6 - optional --
.print ''
.print 'Question 6 - optional'
.width 20 20 20
select player_name, team_name,nationality
from players
natural join(select team_name,(num_hwins+ num_Awins) AS total_wins
from stadiums natural join(select team_name, sum(winner is 'H') as num_hwins, awayteam,sum(winner is 'A') as num_Awins from games group by team_name)
group by team_name
ORDER by total_wins desc limit 1)
ORDER by nationality, player_name;
