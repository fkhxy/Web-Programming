
# 📚 Library API (Node.js + PostgreSQL)

## 🔖 Опис проєкту

Цей проєкт реалізує REST API для керування базою даних книг. Сервер створено на Node.js з використанням Express. Взаємодія з PostgreSQL здійснюється через бібліотеку `pg`.

---

## 🏗️ Структура таблиці `books`

| Поле            | Тип          | Опис                      |
|------------------|---------------|----------------------------|
| `id`            | SERIAL, PK    | Унікальний ідентифікатор   |
| `title`         | VARCHAR(100)  | Назва книги                |
| `author`        | VARCHAR(100)  | Автор книги                |
| `published_year`| INTEGER       | Рік публікації             |

---

## 🛠️ Інструкція з налаштування

### 1. Клонування репозиторію

```bash
git clone <посилання на репозиторій>
cd library-api
```

### 2. Встановлення залежностей

```bash
npm install
```

### 3. Налаштування бази даних

Створи базу даних `library` в PgAdmin або за допомогою SQL:

```sql
CREATE DATABASE library;
```

Потім у Query Tool виконай SQL-скрипт для створення таблиці та заповнення її:

```sql
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
```

### 4. Налаштування підключення до PostgreSQL

У файлі `index.js`:

```js
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'library',
  password: 'ВАШ_ПАРОЛЬ',
  port: 5432,
});
```

### 5. Запуск сервера

```bash
node index.js
```

---

## 🚀 API Роутинги (CRUD)

| Метод | Шлях             | Опис                             |
|--------|------------------|----------------------------------|
| GET    | `/books`         | Отримати всі книги               |
| GET    | `/books/:id`     | Отримати книгу за ID             |
| POST   | `/books`         | Додати нову книгу                |
| PUT    | `/books/:id`     | Оновити книгу за ID              |
| DELETE | `/books/:id`     | Видалити книгу за ID             |

---

## 📬 Приклади запитів

### ➕ Додати книгу (POST `/books`)
```json
{
  "title": "Node.js Guide",
  "author": "John Doe",
  "published_year": 2022
}
```

### 📖 Отримати всі книги (GET `/books`)

Отримаєш масив об'єктів у форматі JSON.

### 📘 Отримати книгу за ID (GET `/books/1`)

Отримаєш одну книгу з ID = 1.

### ✏️ Оновити книгу (PUT `/books/1`)
```json
{
  "title": "Node.js Guide Updated",
  "author": "John Doe",
  "published_year": 2023
}
```

### ❌ Видалити книгу (DELETE `/books/1`)

Книга з ID = 1 буде видалена.

---

## 🧪 Тестування з Postman

1. Встанови Postman з [https://www.postman.com/downloads/](https://www.postman.com/downloads/)
2. Створи нові HTTP-запити до `http://localhost:3000/books`
3. Використовуй відповідні методи: GET, POST, PUT, DELETE
4. Для POST/PUT використовуй вкладку `Body` → `raw` → `JSON`

---

## 🧾 Автор

**Студент групи КІ-22012б**
Мельниченко Владислав Юрійович