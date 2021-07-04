
use EnglishFootballClubs;
create table EnglishFootballClubs_details(
Club_id int not null, 
Location char (25)not null, 
Age varchar (25) not null, 
Club_name char (25) not null,
Net_worth decimal (25) not null, 
Trophies_won char (25) not null, 
primary key (Club_id), 
unique (Club_name)
);
explain EnglishFootballClubs_details;