Sure! Here's your **Flutter UI Practice Guide** written in **Markdown** format:

````markdown
# Flutter UI Practice Guide

## 🧑‍💻 Overview

This project helps you **practice core Flutter UI widgets** by building a simple yet structured interface. It introduces:

- `Scaffold`: background color, AppBar, Drawer, FAB, BottomNavigationBar  
- `AppBar`: leading icon, title, actions  
- `Text`: color, size, weight, alignment  
- `Container`: size, decoration, border radius  
- `Column` & `Row`: alignment  
- `Buttons`: ElevatedButton, TextButton, IconButton

---

## ⚙️ Setup Instructions

1. **Install Flutter**  
   → [Flutter Installation Guide](https://docs.flutter.dev/get-started/install)

2. **Create a new project**
   ```bash
   flutter create ui_practice
   cd ui_practice
````

3. **Replace `lib/main.dart`** with the practice code provided.

4. **Run the project**

   ```bash
   flutter run
   ```

5. Tap the **menu icon** in the AppBar to view the Drawer.

---

## 📝 Practice Tasks

Update `main.dart` and run the app after each change:

### ✅ Scaffold

* Change `backgroundColor` to `Colors.blue[200]`

### ✅ AppBar

* Set `backgroundColor` to `Colors.purple[300]`
* Update `title` to `"My UI"` with `fontSize: 26`
* Replace an action icon with `Icon(Icons.star)`

### ✅ Drawer

* Add `ListTile` with `Icon(Icons.help)` and text `"Help"`
* Set Drawer `backgroundColor` to `Colors.yellow[100]`

### ✅ FloatingActionButton

* Change `backgroundColor` to `Colors.green`
* Set icon to `Icons.star`

### ✅ BottomNavigationBar

* Add `Icon(Icons.bookmark)` to the `Row`
* Set the bottom `Container`’s `color` to `Colors.red` and `height` to `90`

### ✅ Text (inside purple container)

* Set text `"Purple Box"` to:

  * `color: Colors.black`
  * `fontWeight: FontWeight.w900`
  * `textAlign: TextAlign.right`

### ✅ Container

* Set `width` and `height` to `220`
* Use `borderRadius: BorderRadius.circular(25)`

### ✅ Column

* Set `mainAxisAlignment` to `MainAxisAlignment.spaceAround`

### ✅ Row (containing buttons)

* Set `mainAxisAlignment` to `MainAxisAlignment.spaceEvenly`
* Add a `TextButton` with `"Login"` and `fontSize: 14`

### ✅ Buttons

* `ElevatedButton`: Set `backgroundColor` to `Colors.blue`
* `IconButton`: Use `Icons.arrow_upward` with `color: Colors.blue`
* `TextButton`: Set text to `"Sign In"` and color to `Colors.red`

---

## 💡 Tips

* **Hot reload** often to see changes quickly.
* Try different `Colors` and `TextStyle` to explore.
* Use [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets) for widget properties.
* If the app fails to run, check for **syntax errors**.

---

## 🎯 Goal

Practice configuring `Scaffold`, `AppBar`, `Text`, `Container`, `Column`, `Row`, and `Button` widgets to build beautiful UIs in Flutter.

```

Let me know if you also want a downloadable `.md` file or if you'd like to publish this as a GitHub README.
```
