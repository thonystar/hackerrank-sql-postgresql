DROP TABLE IF EXISTS public.station2;

CREATE TABLE public.station2 (
    id       INTEGER PRIMARY KEY,
    city     VARCHAR(21),
    state    VARCHAR(2),
    lat_n    NUMERIC,
    long_w   NUMERIC
);

