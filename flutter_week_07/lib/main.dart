import 'package:flutter/material.dart';
import 'package:sqlite_viewer2/sqlite_viewer.dart';
import 'package:week_07/databse/database_help.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite CRUD Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final db = DatabaseHelp();
  List<Map<String, dynamic>> userList = [];

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    userList = await db.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SQLite User CRUD")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await db.insertData("Shahab", "Afridu", "shahab@example.com");
                await loadUsers();
              },
              child: Text("Insert User"),
            ),
            ElevatedButton(
              onPressed: () async {
                await db.updatData(1, "UpdatedFather");
                await loadUsers();
              },
              child: Text("Update User with ID 1"),
            ),
            ElevatedButton(
              onPressed: () async {
                await db.deletData(1);
                await loadUsers();
              },
              child: Text("Delete User with ID 1"),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DatabaseList()),
                );
              },
              child: Text("Navigate to Database List"),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  final user = userList[index];
                  return ListTile(
                    title: Text(user['name']),
                    subtitle: Text(user['fatherName']),
                    trailing: Text(user['email']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
