// ----------------------------------------------
// 🔹 Part 1: Functions in Dart
// ----------------------------------------------

// ✅ Function with parameters & return type
String greetUser(String name) {
  return 'Hello, $name!';
}

// ✅ Function with optional & named parameters
void showUserInfo({String name = 'Guest', int age = 0}) {
  print('Name: $name, Age: $age');
}

// ✅ Arrow function
void sayHello() => print('Hello from arrow function');

// ✅ Anonymous Function / Callback
void executeCallback(Function callback) {
  callback();
}

// ----------------------------------------------
// 🔹 Part 2: Object-Oriented Programming (OOP) - Part 1
// ----------------------------------------------

void main() {
  // Class & Object
  Flutter flutter1 = Flutter('Current Flutter version 3.29');
  flutter1.printVersion(); // Call class method
  print(flutter1.account); // Access getter

  // Object of User class
  User user = User();

  // Call methods with parameters
  user.isUserLogin(email: "afasdfa", isLogin: false);
  user.isDelete();
  user.arrowType();

  // Method with return type
  Map<String, dynamic> name = user.userName();
  print(name);

  // Check user role using method with logic
  String role = user.checkUserRole();
  print('Welcome $role');

  // Function examples
  print(greetUser('Afaq'));
  showUserInfo(age: 22);
  sayHello();

  executeCallback(() {
    print('This is a callback function!');
  });
}

// ✅ Class with constructor, instance variables, and methods
class Flutter {
  String? version;
  final int _account = 200;

  // Getter
  int get account => _account;

  // Constructor
  Flutter(this.version);

  // Method
  void printVersion() {
    print(version);
  }
}

// ✅ Another class demonstrating methods and data
class User {
  // Return type method
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

  // Method with return type
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
