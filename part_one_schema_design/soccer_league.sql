CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
);

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    amount INTEGER CHECK (amount >= 0)
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT   NOT NULL,
    goal_id INTEGER REFERENCES goals ON DELETE CASCADE
    team_id INTEGER REFERENCES teans ON DELETE CASCADE
);

CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    name TEXT   NOT NULL,
    match_id INTEGER REFERENCES matches
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    referee_id INTEGER REFERENCES diseases ON DELETE CASCADE
);

CREATE TABLE season (
   id SERIAL PRIMARY KEY,
    start_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
);
-- how does this connect to everything else?


CREATE INDEX idx_teams_name ON teams (name);

CREATE INDEX idx_players_name ON players (name);

CREATE INDEX idx_referees_name ON referees (name);

-- how to capture data of rankings?

