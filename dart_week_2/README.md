# ✅ Dart Fundamentals – Completed Topics

This README confirms the completion of core Dart language fundamentals. Below is a checklist of all topics that have been covered, implemented, and tested.

---

## ✅ 1. Variables

- ✅ What are variables?
- ✅ Declaration and initialization
- ✅ Variable modifiers: `var`, `final`, `const`
- ✅ Variable naming conventions (camelCase)
- ✅ Scope of variables (global and local)

---

## ✅ 2. Data Types & Type System

- ✅ Built-in datatypes:
  - `int`, `double`, `String`, `bool`, `List`, `Map`
- ✅ Type inference vs. explicit typing
- ✅ Null safety:
  - Nullable vs. non-nullable types
  - Null-aware operators: `??`, `?.`, `!`
- ✅ Type conversion methods:
  - `toString()`, `int.parse()`, `double.parse()`, `tryParse()`, etc.

---

## ✅ 3. Loops

- ✅ `for` loop and `for-in` loop
- ✅ `while` loop
- ✅ `do-while` loop
- ✅ `break` and `continue`
- ✅ Loop examples with counters

---

## ✅ 4. Arithmetic Operators

- ✅ Basic arithmetic: `+`, `-`, `*`, `/`, `~/`, `%`
- ✅ Operator precedence and evaluation order
- ✅ Increment (`++`) and decrement (`--`)
- ✅ Compound assignment: `+=`, `-=`, `*=`, `/=`, etc.

---

## ✅ 5. Decision Making

- ✅ `if`, `else if`, `else` statements
- ✅ Nested `if` statements
- ✅ `switch` and `case` control structure
- ✅ Ternary operators:
  - `name ?? 'Guest'`
  - `name != null ? name : 'Guest'`

---

## ✅ 6. List

- ✅ What is a List?
- ✅ Creating and accessing lists
- ✅ Adding/removing items (`add`, `remove`, `insert`, etc.)
- ✅ Iterating over lists (`for`, `forEach`)
- ✅ List properties: `length`, `isEmpty`, etc.

---

## ✅ 7. Map

- ✅ What is a Map?
- ✅ Creating and accessing key-value pairs
- ✅ Common methods: `addAll`, `remove`, `containsKey`
- ✅ Iterating over maps

---

### 📘 Notes

All examples were written and tested using Dart's console environment. These concepts build a strong foundation for further exploration into Flutter and Dart back-end development.

---

# 🎯 Student Practice Tasks for Dart Basics

This project includes beginner-level Dart tasks designed to practice core concepts like variables, input/output, decision-making, and type conversion.

---

## 🔸 Task 1: User Profile Summary

**Topics**: Variables, Datatypes  
**Objective**:  
Create variables for name, age, and city. Print a summary like:  
`Hello Afaq! You are 26 years old and live in Lahore.`

---

## 🔸 Task 2: Simple Calculator

**Topics**: Arithmetic Operators  
**Objective**:  
Perform all arithmetic operations on two hardcoded numbers:  
`+ , - , * , / , % , ~/`

---

## 🔸 Task 3: Even or Odd Checker

**Topics**: if-else, Arithmetic Operator, Ternary Operator  
**Objective**:  
Use a hardcoded number and print whether it’s even or odd using both if-else and ternary operator.

---

## 🔸 Task 4: Grading System

**Topics**: Decision Making  
**Objective**:  
Take marks as input (e.g., a variable) and show grade:  
- 90+ → A  
- 80–89 → B  
- 70–79 → C  
- Below 70 → Fail

---

## 🔸 Task 5: Login System

**Topics**: if-else, string comparison  
**Objective**:  
Hardcode username and password. Check them with input values. If matches, print `"Login Successful"`, else `"Invalid Credentials"`.

---

## 🔸 Task 6: Type Conversion Practice

**Topics**: `parse()`, `toString()`  
**Objective**:  
- Convert age from String to int and print  
- Convert marks from int to string and print

---

## 🔸 Task 7: Sum of N Numbers

**Topics**: for loop  
**Objective**:  
Use a variable `n` and calculate the sum from 1 to n.

---

## 🔸 Task 8: Number Guessing Game

**Topics**: if, loops, random  
**Objective**:  
Generate a random number (1–10). Guess the number with a loop until matched. Print feedback like “Too low” or “Too high”.

---

## 🔸 Task 9: List Filtering

**Topics**: List, Loops  
**Objective**:  
Given a list of integers, print only the even numbers using a loop.

---

## 🔸 Task 10: Student Names List

**Topics**: List  
**Objective**:  
Create a list of 5 student names. Then:
- Print all names  
- Print number of students  
- Remove 1 name and print updated list

---

## 🔸 Task 11: Map of Contact Book

**Topics**: Map  
**Objective**:  
Create a map with names as keys and phone numbers as values. Then:
- Add new contact  
- Search by name  
- Delete a contact

---

## 🔸 Task 12: Count Vowels in a String

**Topics**: Loops, Conditions, String  
**Objective**:  
Create a string and count how many vowels it has.

---

## 🔸 Task 13: Null Safe Input Handling

**Topics**: Null Safety  
**Objective**:  
Create a nullable variable and handle it safely using null-aware operators or checks.

---

## ▶️ How to Run the Code

1. Make sure you have [Dart SDK](https://dart.dev/get-dart) installed.
2. Save the code in a file named `main.dart`.
3. Open terminal or command prompt.
4. Run the file using:

```bash
dart run main.dart