CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    major VARCHAR(100) NOT NULL
);

INSERT INTO students (name, age, major) VALUES
('Olexandr Milkevych', 20, 'Computer Engineering'),
('Vladyslav Lazarev', 21, 'Computer Engineering'),
('Yaroslav Skrynik', 21, 'Computer Engineering'),
('Ivan Dashko', 20, 'Computer Engineering');