import 'package:firebase_setup/const/color_switch.dart';
import 'package:firebase_setup/model/note_model.dart';
import 'package:firebase_setup/view/add_note/add_note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  Color selectedColor = Colors.yellow[200]!;

  List<Color> noteColors = [
    Colors.yellow[200]!,
    Colors.green[200]!,
    Colors.blue[200]!,
    Colors.pink[200]!,
    Colors.orange[200]!,
    Colors.purple[200]!,
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AddNoteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
        actions: [
          TextButton(
            onPressed: () {
              if (_titleController.text.isNotEmpty ||
                  _contentController.text.isNotEmpty) {
                final note = Note(
                  title:
                      _titleController.text.isEmpty
                          ? 'Untitled'
                          : _titleController.text,
                  content: _contentController.text,
                  color: colorGive(selectedColor),
                  date: DateTime.now(),
                );

                provider
                    .addNote(note: note)
                    .then((value) {
                      Navigator.of(context).pop();
                    })
                    .onError((error, stackTrace) {
                      print("error is the $error");
                    });
              }
            },
            child: Text('Save'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
                hintStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Expanded(
              child: TextField(
                controller: _contentController,
                decoration: InputDecoration(
                  hintText: 'Start writing...',
                  border: InputBorder.none,
                ),
                maxLines: null,
                textInputAction: TextInputAction.newline,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Text('Color: '),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: noteColors.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedColor = noteColors[index];
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: noteColors[index],
                              shape: BoxShape.circle,
                              border:
                                  selectedColor == noteColors[index]
                                      ? Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      )
                                      : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
