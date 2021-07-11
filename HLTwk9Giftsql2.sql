#Entering and viewing 10 records
insert into EnglishFootballClubs_details(Club_id, Location, Age, Club_name, Net_worth, Trophies_won)
values ('1', 'London', '116', 'Chelsea FC', '3.2', '25'),
('2', 'Manchester', '143', 'Manchester United FC', '3.05', '42'),
('3', 'Liverpool', '129', 'Liverpool FC', '1.34', '43'),
('4', 'London', '135', 'Aresenal FC', '2.01', '31'),
('5', 'Manchester', '141', 'Manchester City FC', '1.41', '22');

insert into EnglishFootballClubs_details(Club_id, Location, Age, Club_name, Net_worth, Trophies_won)
values ('6', 'London', '122', 'Tottenham Hotspur FC', '0.85', '26'),
('7', 'Birmingham', '146', 'Aston Villa FC', '0.23', '25'),
('8', 'Liverpool', '143', 'Everton FC', '0.21', '24'),
('9', 'Newcastle', '143', 'Newcastle United FC', '0.38', '14'),
('10', 'Nottingham', '123', 'Nottingham Forest FC', '0.051', '13');

select * from EnglishFootballClubs_details;

#updating a record
update EnglishFootballClubs_details set Trophies_won = 12 where Club_id = 10;

#deleting a record
delete from EnglishFootballClubs_details where Club_id = 7;

#running a simple query to find clubs who won 26 trophies
use EnglishFootballClubs;
select * from Englishfootballclubs_details where Trophies_won = 26;

#running a complex query to find clubs located in London who have won more than 20 trophies.
select * from EnglishFootballClubs_details where Trophies_won > 20 and Location = 'London';

# Club names shown in ascending order
select * from EnglishFootballClubs_details
order by Club_name;

# create second table
create database Stadiums;
create table Stadiums_England(Stadium_id int not null, 
Stadium_name varchar(20) not null,
Location varchar(20) not null,
Stadium_age int(10) not null,
Capacity int(20) not null,
Club_name varchar(20) not null,
primary key (Stadium_name));

explain Stadiums_England;

#enter data into 2nd table
insert into Stadiums_England(Stadium_id, Stadium_name, Location, Stadium_age, Capacity, Club_name)
values ('1', 'Wembley', 'London', '14', '90000', 'National Team'),
('2', 'Old Trafford', 'Manchester', '111', '75635', 'Manchester United FC'),
('3', 'Tottenham Hotspur', 'London', '2', '62850', 'Tottenham Hotspur FC'),
('4', 'Emirates', 'London', '15', '60704', 'Arsenal FC'),
('5', 'London Stadium', 'London', '9', '60000', 'West Ham United FC'),
('6', 'Etihad', 'Manchester', '19', '55097', 'Manchester United FC'),
('7', 'Anfield', 'Liverpool', '137', '54074', 'Liverpool FC'),
('8', 'St James Park', 'Newcastle upon Tyne', '141', '52354', 'Newcastle United FC'),
('9', 'Stadium of Light', 'Sunderland', '25', '49000', 'Sunderland FC'),
('10', 'Villa Park', 'Birmingham', '124', '42682', 'Aston Villa FC');

select * from Stadiums_England;

#inner joining of tables
select EnglishFootballClubs_details.Location , Stadiums_England.Location
from EnglishFootballClubs_details
inner join Stadiums_England
on EnglishFootballClubs_details.Location = Stadiums_England.Location;

#View and show both table structures  and data
explain EnglishfootballClubs_details;
explain Stadiums_England;
select * from EnglishFootballClubs_details;
select * from Stadiums_England;

#simple query to find all stadiums located in London
select * from Stadiums_England where Location = 'London';

#complex query to find all clubs located in London and also stadiums with 60000 capacity. 
select*from EnglishFootballClubs_details, Stadiums_England
where EnglishFootballClubs_details.Location = Stadiums_England.Location and Stadiums_England.Capacity = '60000';

#Filtering data using comparison operators.
select*from EnglishFootballClubs_details where Trophies_won between 30 and 45;
select*from Stadiums_England where Capacity > '55000';
