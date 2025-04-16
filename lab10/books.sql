CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author VARCHAR(100) NOT NULL,
  published_year INTEGER NOT NULL
);

INSERT INTO books (title, author, published_year) VALUES
('Тіні забутих предків', 'Михайло Коцюбинський', 1911),
('Солодка Даруся', 'Марія Матіос', 2004),
('Записки українського самашедшого', 'Ліна Костенко', 2010),
('Фелікс Австрія', 'Софія Андрухович', 2014),
('Наші котики', 'Володимир Тихий', 2020);
