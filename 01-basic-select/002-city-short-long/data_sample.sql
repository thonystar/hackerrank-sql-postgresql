-- data_sample.sql
-- Datos de ejemplo para el problema 002

INSERT INTO public.station2 (id, city, state, lat_n, long_w) VALUES
-- nombres más cortos (longitud 2) - hay empate
(1, 'AB',       'TX', 10.0,  20.0),
(2, 'CD',       'CA', 11.0,  21.0),

-- nombres de longitud media
(3, 'LIMA',     'LI', -12.0, -77.0),
(4, 'CUZCO',    'CU', -13.5, -71.9),
(5, 'PUNO',     'PU', -15.8, -70.0),

-- nombres más largos (longitud 8) - también hay empate
(6, 'AREQUIPA', 'AR', -16.4, -71.5),
(7, 'TRUJILLO', 'TR', -8.1,  -79.0);
