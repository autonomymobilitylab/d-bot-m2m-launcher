CREATE TABLE public.dbot_logs (
    id SERIAL PRIMARY KEY,
    log_type INTEGER NOT NULL, 
    log_action INTEGER,
    log_text VARCHAR(255),
    log_error VARCHAR(255),
    log_location VARCHAR(255),
    log_timestamp TIMESTAMP DEFAULT NOW()
);