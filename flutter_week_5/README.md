
Flutter UI Practice Guide
🧑‍💻 Overview
This project helps you practice core Flutter UI widgets by building a simple yet structured interface. It introduce

## 🔁 Advanced Widgets (Week 5)

### ✅ Stack

* Add a `Stack` widget with:
  * A background `Container` (e.g. colored box)
  * A `Positioned` widget to place a small circle icon on top-right

### ✅ ListTile

* Create a `ListView` of `ListTile` items showing:
  * `leading`: icon
  * `title`: user name
  * `subtitle`: user email
  * `trailing`: `Icon(Icons.arrow_forward)`
  * Add `onTap` to print something

### ✅ ListView Types

* `ListView.builder`: create dynamic scrollable list
* `ListView.separated`: add dividers between items
* `ListView.custom`: for custom delegate rendering

### ✅ GridView Types

* `GridView.count`: fixed number of columns (e.g. 2)
* `GridView.builder`: infinite scrollable grid items

### ✅ InkWell

* Wrap a `Container` with `InkWell` and implement `onTap`
* Example: tap to show a `SnackBar` or change color

### ✅ Navigation

* Use `Navigator.push()` to go to a second screen
* Use `Navigator.pop()` to return to the previous screen
* Use `Navigator.pushAndRemoveUntil()` for clearing the stack
* Pass data to next screen via constructor
* Receive data back using `pop(result)`

---

## 💡 Tips

* Use **Hot Reload** (`r`) often for faster dev cycle
* Explore widget options using [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
* If the app crashes, check the **error logs** or **missing commas**

---

## 🎯 Goal

Master layout and interaction widgets (`Scaffold`, `Text`, `Stack`, `ListView`, `InkWell`, Navigation) to confidently build dynamic and responsive UIs in Flutter.