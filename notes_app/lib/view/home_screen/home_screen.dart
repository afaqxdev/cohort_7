import 'package:firebase_setup/model/note_model.dart';
import 'package:firebase_setup/view/add_note/note_add_screen.dart';
import 'package:firebase_setup/view/grid_screen/grid_screen.dart';
import 'package:firebase_setup/view/home_screen/home_provider.dart';
import 'package:firebase_setup/view/setting_screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> notes = [
    // Note(
    //   title: 'Meeting Notes',
    //   content: 'Discuss project timeline and deliverables',
    //   color: Colors.yellow[200]!,
    //   date: DateTime.now().subtract(Duration(days: 1)),
    // ),
    // Note(
    //   title: 'Shopping List',
    //   content: 'Milk, Bread, Eggs, Apples',
    //   color: Colors.green[200]!,
    //   date: DateTime.now().subtract(Duration(hours: 2)),
    // ),
    // Note(
    //   title: 'Afaq',
    //   content: 'Science fiction novel about time travel',
    //   color: Colors.blue[200]!,
    //   date: DateTime.now().subtract(Duration(days: 3)),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePrvoder>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: provider.getData(),
        builder: (context, snapshot) {
          List<Note> notes = [];
          notes.addAll(
            snapshot.data!.docs.map((doc) => Note.fromJson(doc.data())),
          );
          if (snapshot.data!.docs.isNotEmpty) {
            for (var element in snapshot.data!.docs) {
              print(element['color']);
            }

            return Padding(
              padding: EdgeInsets.all(10),
              child: StaggeredGridView(notes: notes, data: snapshot.data!.docs),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.note_add, size: 80, color: Colors.grey[400]),
                SizedBox(height: 20),
                Text(
                  'No notes yet',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                Text(
                  'Tap + to create your first note',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          );
        },
      ),

      // notes.isEmpty
      //     ? Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.note_add, size: 80, color: Colors.grey[400]),
      //           SizedBox(height: 20),
      //           Text(
      //             'No notes yet',
      //             style: TextStyle(fontSize: 18, color: Colors.grey[600]),
      //           ),
      //           Text(
      //             'Tap + to create your first note',
      //             style: TextStyle(color: Colors.grey[500]),
      //           ),
      //         ],
      //       ),
      //     )
      //     : Padding(
      //       padding: EdgeInsets.all(10),
      //       child: StaggeredGridView(notes: notes),
      //     ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => AddNoteScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
