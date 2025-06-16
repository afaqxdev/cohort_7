import 'package:flutter/material.dart';

void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[100], // Scaffold background color
        appBar: AppBar(
          leading: const Icon(Icons.menu), // Leading icon
          title: const Text(
            "My App",
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true, // Center the title
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Profile"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("Settings"),
            ),
          ], // Action widgets
          backgroundColor: Colors.green[200], // AppBar color
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.yellow, // Non-functional
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: Container(
          height: 80,
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Spread icons
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.home, size: 30),
              Icon(Icons.search, size: 30),
              Icon(Icons.favorite, size: 30),
              Icon(Icons.person, size: 30),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue[100], // Drawer background color
          child: const Column(
            children: [
              SizedBox(height: 50), // Spacer
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center horizontally
            children: [
              // Container with decoration
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Even spacing
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, size: 40, color: Colors.white),
                    Text(
                      "Purple Box",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.check_circle, size: 40, color: Colors.white),
                  ],
                ),
              ),
              const SizedBox(height: 20), // Spacer
              // Row for buttons
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center horizontally
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ElevatedButton
                  ElevatedButton(
                    onPressed: null, // Non-functional
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Generate",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 10), // Spacer
                  // TextButton
                  TextButton(
                    onPressed: null, // Non-functional
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Spacer
              // IconButton
              IconButton(
                onPressed: null, // Non-functional
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 20), // Spacer
              // Another Container
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Teal Button",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
