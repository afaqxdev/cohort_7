import 'package:firebase_setup/const/color_switch.dart';
import 'package:firebase_setup/model/note_model.dart';
import 'package:firebase_setup/services/firebase_services.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback? onUpdate;
  final VoidCallback? onDelete;
  final String id;
  const NoteCard({
    super.key,
    required this.note,
    this.onUpdate,
    this.onDelete,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorName(note.color),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Title + 3-dot menu button
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    note.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == "update") {
                      _showUpdateDialog(context);
                    } else if (value == "delete") {
                      _showDeleteDialog(context);
                    }
                  },
                  itemBuilder:
                      (context) => [
                        const PopupMenuItem(
                          value: "update",
                          child: Text("Update"),
                        ),
                        const PopupMenuItem(
                          value: "delete",
                          child: Text("Delete"),
                        ),
                      ],
                ),
              ],
            ),

            const SizedBox(height: 8),

            // 🔹 Note content
            Expanded(
              child: Text(
                note.content,
                style: const TextStyle(fontSize: 14),
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 8),

            // 🔹 Date
            Text(
              '${note.date.day}/${note.date.month}/${note.date.year}',
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Update dialog
  void _showUpdateDialog(BuildContext context) {
    final TextEditingController titleController = TextEditingController(
      text: note.title,
    );
    final TextEditingController contentController = TextEditingController(
      text: note.content,
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Update Note"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: contentController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "Content",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseServices services = FirebaseServices();
                services.updateData(
                  id: id,
                  data: {
                    'title': titleController.text,
                    'content': contentController.text,
                  },
                );

                Navigator.pop(context);
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  // 🔹 Delete dialog
  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Note"),
          content: const Text("Are you sure you want to delete this note?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.pop(context);
                if (onDelete != null) onDelete!();
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }
}
