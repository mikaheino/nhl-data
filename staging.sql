USE ROLE ROLE_COALESCE ; 
USE WAREHOUSE WH_COALESCE ; 
USE DATABASE COALESCE_DEMO ;
CREATE SCHEMA STG ; 
USE SCHEMA STG ;
CREATE OR REPLACE TABLE GAME (
      game_id integer
    , season varchar(15)
    , type varchar(2)
    , date_time_GMT timestamp_tz
    , away_team_id integer
    , home_team_id integer
    , away_goals integer
    , home_goals integer
    , outcome varchar(50)
    , home_rink_side_start varchar(10)
    , venue varchar(255)
    , venue_link varchar
    , venue_time_zone_id varchar
    , venue_time_zone_offset varchar(10)
    , venue_time_zone_tz varchar(10) 
) ;

CREATE OR REPLACE TABLE GAME_GOALIE_STATS (
      game_id integer
    , player_id integer
    , team_id integer
    , timeOnIce integer
    , assists integer
    , goals integer
    , pim integer
    , shots integer
    , saves integer
    , powerPlaySaves integer
    , shortHandedSaves integer
    , evenSaves integer
    , shortHandedShotsAgainst integer
    , evenShotsAgainst integer
    , powerPlayShotsAgainst integer
    , decision varchar(2)
    , savePercentage varchar(255)
    , powerPlaySavePercentage varchar(255)
    , evenStrengthSavePercentage varchar(255)
);

CREATE OR REPLACE TABLE GAME_GOALS (
      play_id varchar(255)
    , strength varchar(50)
    , gameWinningGoal varchar(15)
    , emptyNet varchar(15)
);


CREATE OR REPLACE TABLE GAME_OFFICIALS (
      game_id varchar(255)
    , official_name varchar(50)
    , official_type varchar(15)
);


CREATE OR REPLACE TABLE GAME_OFFICIALS (
      game_id varchar(255)
    , official_name varchar(50)
    , official_type varchar(15)
);


CREATE OR REPLACE TABLE GAME_PENALTIES (
      play_id varchar(255)
    , penaltySeverity varchar(50)
    , penaltyMinutes integer
);

CREATE OR REPLACE TABLE GAME_SCRATHES (
      game_id varchar(255)
    , team_id integer
    , player_id integer
);

CREATE OR REPLACE TABLE GAME_SKATER_STATS (
      game_id varchar(255)
    , player_id integer
    , team_id integer
    , timeOnIce integer
    , assists integer
    , goals integer
    , shots integer
    , hits varchar
    , powerPlayGoals integer
    , powerPlayAssists integer
    , penaltyMinutes integer
    , faceOffWins integer
    , faceoffTaken integer
    , takeaways varchar
    , giveaways varchar
    , shortHandedGoals varchar
    , shortHandedAssists varchar
    , blocked varchar
    , plusMinus varchar(50)
    , evenTimeOnIce varchar(255)
    , shortHandedTimeOnIce varchar(255)
    , powerPlayTimeOnIce varchar(255)
);


CREATE OR REPLACE TABLE GAME_TEAMS_STATS (
      game_id varchar(255)
    , team_id integer
    , hoa varchar(10)
    , won varchar(10)
    , settled_in varchar(3)
    , head_coach varchar(255)
    , goals varchar(50)
    , shots varchar(50)
    , hits varchar(50)
    , pim varchar(50)
    , powerPlayOpportunities varchar(50)
    , powerPlayGoals varchar(50) 
    , faceOffWinPercentage varchar(50)
    , giveaways varchar(50)
    , takeaways varchar(50)
    , blocked varchar(50)
    , startRinkSide varchar(15)
);

CREATE OR REPLACE TABLE PLAYER_INFO (
      player_id varchar(255)
    , firstName varchar(255)
    , lastName varchar(255)
    , nationality varchar(50)
    , birthCity varchar(255)
    , primaryPosition varchar(10)
    , birthDate date
    , birthStateProvince varchar(10)
    , height varchar(50)
    , height_cm varchar(50)
    , weight varchar(50)
    , shootsCatches varchar(10)
) ; 


CREATE OR REPLACE TABLE TEAM_INFO (
      team_id varchar(255)
    , franchiseId varchar(255)
    , shortName varchar(255)
    , teamName varchar(255)
    , abbreviation varchar(10)
    , link varchar(255)
) ; 


CREATE OR REPLACE TABLE GAME_PLAYS (
      play_id varchar(255)
    , game_id varchar(255)
    , team_id_for varchar(10)
    , team_id_against varchar(10)
    , event varchar(100)
    , secondaryType varchar(100)
    , x varchar(10)
    , y varchar(10)
    , period varchar(2)
    , periodType varchar(255)
    , periodTime varchar(100)
    , periodTimeRemaining varchar(255)
    , dateTime date
    , goalsAways varchar(2)
    , goalsHome varchar(2)
    , description varchar(255)
    , st_x varchar(255)
    , st_y varchar(255)
) ; 


CREATE OR REPLACE TABLE GAME_PLAYS_PLAYERS (
      play_id varchar(100)
    , game_id varchar(100)
    , player_id varchar(100)
    , playerType varchar(100)
) ; 

CREATE OR REPLACE TABLE GAME_SHIFTS (
      game_id varchar(100)
    , player_id varchar(100)
    , period varchar(100)
    , shift_start varchar(100)
    , shift_end varchar(100)
) ; 