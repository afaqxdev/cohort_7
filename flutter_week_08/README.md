# 🛠️ Flutter API Integration Example

This Flutter project demonstrates how to:
- Implement a **Splash screen**
- Build a **Login** and **Signup** flow using API (`reqres.in`)
- Save user token using `SharedPreferences`
- Navigate to a **Home screen** that:
  - Fetches **product data** from Fake Store API
  - Can be extended to fetch other APIs like **movies**

---

## ✅ Task Goals

Your task in this project:

1. 🔄 **Splash Screen**
   - Auto-redirect based on whether user is logged in (`token` in storage)

2. 🔐 **Login Screen**
   - API: `https://reqres.in/api/login`
   - Validate user and store token on success

3. 📝 **Signup Screen**
   - API: `https://reqres.in/api/register`
   - Register user and store token

4. 🏠 **Home Screen**
   - Show user data or welcome message
   - Fetch and display:
     - ✅ Products from `https://fakestoreapi.com/products`
     - 🍿 Optionally: Movies from `https://api.sampleapis.com/movies/comedy` or similar

---

## 📦 Packages Used

| Package              | Purpose                         |
|----------------------|---------------------------------|
| `http`               | Perform API requests (GET/POST) |
| `shared_preferences` | Store and retrieve user token   |
| `flutter/material`   | Build UI                        |

---

