INSERT INTO public.device_localization
(info, device_location, x_invert, y_invert, z_invert, created_timestamp, modified_timestamp)
VALUES('', '{"x": 1, "y": 2, "z": 3}'::jsonb, false, false, false, now(), now());
