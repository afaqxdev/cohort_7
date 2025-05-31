void main() {
  // Example: Using for loop with a list
  final List<String> fruit = ['apple'];
  for (int i = 0; i < fruit.length; i++) {
    print(fruit[i]);
  }

  // Example: Working with Map and addAll
  const Map<String, dynamic> userDataConst = {
    'name': 'Afaq',
    'marks': 141,
    'skills': 'Developer',
  };
  // This won't work because const maps can't be modified.
  // userDataConst.addAll({'sds': 'asfsdf'}); // ❌ Invalid (uncomment to see error)

  print(userDataConst);
  if (userDataConst.containsKey('name')) {
    print("Yes");
  }

  // Example: for-in loop with map entries
  for (var i in userDataConst.entries) {
    if (i.key == "skills") {
      print("${i.key}, ${i.value}");
    }
  }

  // Example: Final list vs modifying elements
  final List<String> fruitList = ['apple', 'mango', 'orange'];
  print("Here is the final list: $fruitList");

  fruitList.add('banana'); // Adding element
  print("After adding banana: $fruitList");

  fruitList.removeAt(1); // Removing mango
  print("After removing at index 1: $fruitList");

  // Example: Working with mutable Map
  Map<String, dynamic> user = {
    'name': 'Afaq',
    'marks': 141,
    'skills': 'Developer',
  };

  print("User data before modification: $user");

  user.forEach((key, val) {
    print('$key $val');
  });

  print("Map length before modification: ${user.length}");

  user.addAll({'location': 'Pakistan'});

  print("Map length after adding location: ${user.length}");

  user.forEach((key, val) {
    print('$key $val');
  });

  // Example: Checking internet and login status using ternary operator
  bool internet = true;
  bool isLogin = true;

  print(
    internet == true
        ? isLogin == true
            ? "User is logged in"
            : "User is not logged in"
        : "No internet connection",
  );

  // Equivalent logic using if-else (more readable)
  if (internet) {
    if (isLogin) {
      print("User is logged in");
    } else {
      print("User is not logged in");
    }
  } else {
    print("No internet connection");
  }

  // Example: Parsing string to int and double
  String number = "42";
  int updateNumber = int.parse(number);
  double updateNumberDouble = double.parse(number);

  print("Parsed int value: $updateNumber");
  print("Parsed double value: $updateNumberDouble");

  // Example: Null check with ternary operator
  String? name;
  print(
    "Here is the name: ${name == null ? 'Value is null' : 'Value is not null'}",
  );

  // Example: Working with DateTime and constants
  final DateTime time = DateTime.now();
  const int marks = 121;
  double gpa = 3.64;

  print("Current time: $time");
  print("Marks: $marks");
  print("GPA: $gpa");

  // Example: Strings and List of user skills
  String fullName = 'Afaq Zahir';
  String userName = 'afaq';
  List<String> skills = ['Flutter', 'Dart', 'JavaScript'];

  print("Full Name: $fullName");
  print("Username: $userName");
  print("Skills: $skills");

  // Example: Complex Map with nested structure
  List<Map<String, Map<String, dynamic>>> users = [
    {'user': {}},
    {'user': {}},
    {'user': {}},
    {'user': {}},
    {'user': {}},
  ];
  print("Users list: $users");

  // Example: Using var and dynamic types
  var a = 123; // Type inferred as int
  dynamic b = 'initial value'; // Can hold any type

  print("Value of a: $a");
  print("Initial value of b: $b");

  b = 132; // Changing the type of b
  print("Changed value of b: $b");

  // Example: Map to represent user data with skills
  Map<String, dynamic> userDataWithSkills = {
    'name': 'Afaq',
    'marks': 141,
    'skills': skills,
  };

  print("User data with skills: $userDataWithSkills");
}
