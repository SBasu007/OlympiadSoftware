-- CREATE TABLE agent(
--     code TEXT PRIMARY KEY NOT NULL,
--     name VARCHAR(200),
--     add1 VARCHAR(200),
--     add2 VARCHAR(200)
-- );

CREATE TABLE school(
    code TEXT PRIMARY KEY NOT NULL,
    name VARCHAR(200),
    add1 VARCHAR(200),
    add2 VARCHAR(200),
    auth_person VARCHAR(200),
    -- center_fee FLOAT,
    -- agent_code TEXT REFERENCES agent(code),
    -- agent_comm FLOAT
);
CREATE TABLE course (
    id SERIAL,
    subject TEXT PRIMARY KEY,
    class INTEGER
);
-- CREATE TABLE course (
--     id SERIAL,
--     year TEXT PRIMARY KEY NOT NULL,
--     fees FLOAT,
--     theory1 INTEGER,
--     theory2 INTEGER,
--     practical1 INTEGER,
--     practical2 INTEGER,
-- );
CREATE TABLE student (
	roll TEXT PRIMARY KEY NOT NULL,
    session TEXT,
	subject TEXT REFERENCES course(subject),
	center_num TEXT REFERENCES school(code),
	admission_date TEXT,
	name VARCHAR(200),
	guard_name VARCHAR(200),
    stream TEXT,
    mode BOOLEAN
);

CREATE TABLE marks (
    id SERIAL PRIMARY KEY,
    roll TEXT REFERENCES student(roll),
    marks INTEGER
)
