# Flutter SQLite CRUD Demo

This is a simple Flutter application demonstrating **basic CRUD operations** (Create, Read, Update, Delete) using the **`sqflite`** package with a local SQLite database.

The app stores user records (name, father's name, email) and provides the ability to:

✅ Insert new users  
✅ Display all users  
✅ Update an existing user's data  
✅ Delete a user by ID  

---

## 📸 Screenshots

| Home Screen | Inserted User List |
|-------------|--------------------|
| ![Home](assets/home.png) | ![List](assets/list.png) |

---

## 📦 Features

- Uses `sqflite` for local persistent storage
- Simple UI using `ListView.builder()`
- Hardcoded actions (Insert, Update, Delete) for demonstration
- Shows real-time updates with `setState()`
- Fully offline app (no internet required)

---

## 🧱 Table Structure

**Table: `user`**

| Column     | Type     | Description            |
|------------|----------|------------------------|
| id         | INTEGER  | Primary Key (auto inc) |
| name       | TEXT     | User's name            |
| fatherName | TEXT     | User's father's name   |
| email      | TEXT     | Email address          |

---

## 🛠 Project Structure

```bash
lib/
├── main.dart                  # App UI
└── database/
    └── database_helper.dart   # SQLite logic (CRUD methods)





    Afaq Zahir
👨‍💻 Flutter Developer & Instructor
📧 afaqxdev@gmail.com
📱 +92 314 2625807
🔗 LinkedIn