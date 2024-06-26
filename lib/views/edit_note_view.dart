import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note' ,style: TextStyle(
          fontSize: 25,
        ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 46,
              width: 46,
              decoration:  BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.check,size: 28,),
            ),
          ),
        ],
      ),
      body: EditNoteViewBody(),
    );
  }
}
