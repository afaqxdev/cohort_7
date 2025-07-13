import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final String appbar;
  FirstScreen({super.key, required this.appbar});

  final List<Map<String, dynamic>> contactList = [
    {'name': 'Afaq Zahir', "email": 'afaq@example.com'},
    {'name': 'Shahid Afridi', "email": 'afridi@example.com'},
    {'name': 'John Doe', "email": 'john@example.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbar)),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          // ✅ Stack Widget
          Container(
            height: 200,
            color: Colors.grey[200],
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue.shade100,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.favorite, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // ✅ ListTile with ListView.separated
          Text(
            'Contact List:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: contactList.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder:
                (context, index) => ListTile(
                  leading: Icon(Icons.person),
                  title: Text(contactList[index]['name']),
                  subtitle: Text(contactList[index]['email']),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () => print('Tapped on ${contactList[index]['name']}'),
                ),
          ),

          SizedBox(height: 20),

          // ✅ ListView.builder inside a container
          Text(
            'Dynamic Items (ListView.builder):',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder:
                  (context, index) => Container(
                    width: 120,
                    margin: EdgeInsets.all(8),
                    color: Colors.teal[100 * ((index % 8) + 1)],
                    child: Center(child: Text('Item $index')),
                  ),
            ),
          ),

          SizedBox(height: 20),

          // ✅ GridView.count with InkWell
          Text(
            'Grid Items (GridView.count):',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
              children: List.generate(4, (index) {
                return InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on Grid Item $index')),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Grid $index',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          SizedBox(height: 20),

          // ✅ Navigation button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          SecondScreen(data: 'Hello from FirstScreen!'),
                ),
              );
            },
            child: Text('Navigate to Second Screen'),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String data;
  const SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data, style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
