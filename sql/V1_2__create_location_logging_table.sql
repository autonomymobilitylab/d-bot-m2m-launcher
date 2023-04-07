CREATE TABLE public.dbot_location_log (
    id SERIAL PRIMARY KEY,
    bot_id INTEGER,
    info VARCHAR(255),
    error_msg VARCHAR(255),
    bot_location JSONB,
    log_timestamp TIMESTAMP DEFAULT NOW()
);