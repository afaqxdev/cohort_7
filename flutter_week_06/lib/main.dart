import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DemoClass(),
    );
  }
}

class DemoClass extends StatefulWidget {
  const DemoClass({super.key});

  @override
  State<DemoClass> createState() => _DemoClassState();
}

class _DemoClassState extends State<DemoClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 19,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.amber,
        ),
      ),
      appBar: AppBar(
        leading: Text("leading"),
        title: ListTile(
          title: Text("Afaq Zahir"),
          subtitle: Text("Flutter Developer "),

          trailing: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xfff7b34a),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("10", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Icon(Icons.monetization_on, color: Colors.black, size: 30),
              ],
            ),
          ),
          leading: CircleAvatar(
            child: Image.network(
              'https://media.licdn.com/dms/image/v2/D4D03AQG2fw9LMqSgNA/profile-displayphoto-shrink_800_800/B4DZaPpUwtGgAc-/0/1746166697609?e=1756339200&v=beta&t=iwmjlaNgU9JTwRnc8RMjo_XPIsRvy4Zv0nJJp1XDQrw',
            ),
          ),
        ),

        actions: [Icon(Icons.not_accessible)],
      ),
    );
  }
}
