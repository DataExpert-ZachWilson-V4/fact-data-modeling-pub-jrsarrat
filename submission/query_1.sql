CREATE OR REPLACE TABLE jrsarrat.fct_nba_game_details (
  game_id BIGINT,
  team_id BIGINT,
  player_id BIGINT,
  dim_team_abbreviation VARCHAR,
  dim_player_name VARCHAR,
  dim_start_position VARCHAR,
  dim_did_not_dress BOOLEAN,
  dim_not_with_team BOOLEAN,
  m_seconds_played INTEGER,
  m_field_goals_made DOUBLE,
  m_field_goals_attempted DOUBLE,
  m_3_pointers_made DOUBLE,
  m_3_pointers_attempted DOUBLE,
  m_free_throws_made DOUBLE,
  m_free_throws_attempted DOUBLE,
  m_offensive_rebounds DOUBLE,
  m_defensive_rebounds DOUBLE,
  m_rebounds DOUBLE,
  m_assists DOUBLE,
  m_steals DOUBLE,
  m_blocks DOUBLE,
  m_turnovers DOUBLE,
  m_personal_fouls DOUBLE,
  m_points DOUBLE,
  m_plus_minus DOUBLE,
  game_date DATE,
  season INTEGER,
  team_did_win BOOLEAN
)
WITH
  (
    FORMAT = 'PARQUET',
    partitioning = ARRAY['season']
  )
