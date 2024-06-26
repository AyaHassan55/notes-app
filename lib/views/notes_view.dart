import 'package:flutter/material.dart';
import '../widgets/add_note_show_bottom_sheet.dart';
import '../widgets/notes_list_view.dart';
class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Notes',style: TextStyle(
            fontSize: 25,
        ),),
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
              child: const Icon(Icons.search,size: 28,),
            ),
          ),
        ],
      ),
      body: const NotesListView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
          ,context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: const Icon(Icons.add,color: Colors.black,),
      ),

    );
  }
}



