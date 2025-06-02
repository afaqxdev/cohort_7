// --------------------------------------------------------
// 🔹 Part 1: Functions in Dart (45 Minutes)
// 🎯 Learning Objectives:
// - Defining a Function
// - Parameters vs Arguments
// - Return Types
// - Optional & Named Parameters
// - Arrow Functions
// - Anonymous Functions / Callbacks
// --------------------------------------------------------

// ✅ Function with parameters & return type
String greetUser(String name) {
  return 'Hello, $name!';
}

// ✅ Function with optional & named parameters
void showUserInfo({String name = 'Guest', int age = 0}) {
  print('Name: $name, Age: $age');
}

// ✅ Arrow function (short syntax)
void sayHello() => print('Hello from arrow function');

// ✅ Anonymous Function / Callback
void executeCallback(Function callback) {
  callback();
}

// --------------------------------------------------------
// 🔹 Part 2: Object-Oriented Programming (OOP) - Part 1
// 🎯 Learning Objectives:
// - Class & Object
// - Constructor
// - Instance, Object, Reference
// --------------------------------------------------------

class Flutter {
  String? version;
  final int _account = 200; // private variable (Encapsulation)

  // Getter for private variable
  int get account => _account;

  // Constructor
  Flutter(this.version);

  // Method
  void printVersion() {
    print(version);
  }
}

class User {
  // Method with return type
  String checkUserRole() {
    Map<String, dynamic> userData = userName();
    if (userData['role'] == 'Admin') {
      return 'Admin login';
    } else {
      return 'Simple User';
    }
  }

  // Arrow function
  void arrowType() => print('Arrow function call');

  // Method returning map data
  Map<String, dynamic> userName() {
    return {'name': 'Afaq', 'role': 'Admin'};
  }

  // Method with named parameters
  void isUserLogin({required bool isLogin, required String email}) {
    if (isLogin) {
      print("User is logged in with email: $email");
    } else {
      print("User is not logged in.");
    }
  }

  // Simple method
  void isDelete() {
    print('User clicked on delete');
  }
}

// --------------------------------------------------------
// 🔹 Part 3: OOP - Inheritance & Polymorphism
// 🎯 Learning Objectives:
// - Inheritance
// - Method Overriding (Polymorphism)
// - Abstract Class
// --------------------------------------------------------

// ✅ Base class (parent)
class Animal {
  void speak() {
    print('Animal cannot speak');
  }
}

// ✅ Derived class (child)
class Dog extends Animal {
  @override
  void speak() {
    print('Dog barks');
  }
}

// ✅ Abstract class
abstract class AppFunction {
  login();
  singUp();
  forgotPassword();
  socailLogin();
  logOut();
  deleteAccount();
  recoverAccount();
  updateProfile();
}

// ✅ Implementation of abstract class
class FirstLogin implements AppFunction {
  @override
  deleteAccount() => print("Delete account logic");

  @override
  forgotPassword() => print("Forgot password logic");

  @override
  logOut() => print("Logout logic");

  @override
  login() => print("Login logic");

  @override
  recoverAccount() => print("Recover account logic");

  @override
  singUp() => print("Signup logic");

  @override
  socailLogin() => print("Social login logic");

  @override
  updateProfile() => print("Update profile logic");
}

// --------------------------------------------------------
// 🔹 Bonus: Bank Account Example (Encapsulation)
// --------------------------------------------------------

class BankAccount {
  int _account = 0; // private field

  int get account => _account; // getter

  void deposit(int amount) {
    _account += amount;
  }

  int getBalance() {
    return _account;
  }
}

// --------------------------------------------------------
// 🔹 Demonstration in main() function
// --------------------------------------------------------

void main() {
  // Function Examples
  print(greetUser('Afaq'));
  showUserInfo(age: 22);
  sayHello();

  executeCallback(() {
    print('This is a callback function!');
  });

  // Class Object Examples
  Flutter flutter1 = Flutter('Current Flutter version 3.29');
  flutter1.printVersion();
  print(flutter1.account);

  User user = User();
  user.isUserLogin(email: "afaq@example.com", isLogin: true);
  user.isDelete();
  user.arrowType();
  print(user.userName());
  print('Welcome ${user.checkUserRole()}');

  // Inheritance
  Animal myDog = Dog();
  myDog.speak();

  // Abstract class implementation
  FirstLogin loginFlow = FirstLogin();
  loginFlow.login();
  loginFlow.updateProfile();

  // BankAccount usage
  BankAccount bank = BankAccount();
  bank.deposit(1000);
  print("Bank Balance: ${bank.getBalance()}");
}
