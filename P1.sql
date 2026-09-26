CREATE TABLE passengers (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL
);

CREATE TABLE airlines (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE concourses (
    id INTEGER PRIMARY KEY,
    airline_id INTEGER NOT NULL,
    concourse TEXT NOT NULL,
    FOREIGN KEY (airline_id) REFERENCES airlines(id)
);

CREATE TABLE flights (
    id INTEGER PRIMARY KEY,
    flight_number INTEGER NOT NULL,
    airline_id INTEGER NOT NULL,
    departure_airport TEXT NOT NULL,
    arrival_airport TEXT NOT NULL,
    departure_datetime TEXT NOT NULL,
    arrival_datetime TEXT NOT NULL,
    FOREIGN KEY (airline_id) REFERENCES airlines(id)
);

CREATE TABLE check_ins (
    id INTEGER PRIMARY KEY,
    passenger_id INTEGER NOT NULL,
    flight_id INTEGER NOT NULL,
    check_in_datetime TEXT NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passengers(id),
    FOREIGN KEY (flight_id) REFERENCES flights(id)
);