DROP TABLE IF EXISTS station;

CREATE TABLE station (
    id       INTEGER PRIMARY KEY,
    city     VARCHAR(21),
    state    VARCHAR(2),
    lat_n    NUMERIC,
    long_w   NUMERIC
);



