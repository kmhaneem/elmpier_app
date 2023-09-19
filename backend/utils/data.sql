CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(11) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    salt VARCHAR(255),
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    address TEXT,
    postalcode VARCHAR(10),
    verified BOOLEAN DEFAULT FALSE,
    otp INTEGER
);