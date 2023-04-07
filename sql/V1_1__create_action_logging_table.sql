CREATE TABLE public.dbot_action_log (
    id SERIAL PRIMARY KEY,
    bot_id INTEGER,
    info VARCHAR(255),
    error_msg VARCHAR(255),
    action_id INTEGER,
    log_timestamp TIMESTAMP DEFAULT NOW()
);
