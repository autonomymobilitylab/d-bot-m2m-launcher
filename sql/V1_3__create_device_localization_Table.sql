CREATE TABLE public.device_localization (
    id SERIAL PRIMARY KEY,
    info VARCHAR(255),
    device_location JSONB,
    x_invert boolean,
    y_invert boolean,
    z_invert boolean,
    created_timestamp TIMESTAMP DEFAULT NOW(),
    modified_timestamp TIMESTAMP DEFAULT NOW()
);
