import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,left: 16,bottom: 24),
        margin:const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:const Color(0xf0ffd475),
          borderRadius: BorderRadius.circular(15)
        ),

        child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title:const Text('Flutter tips',style: TextStyle(fontSize: 28,color: Colors.black),),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text('studying hive and local database',style: TextStyle(color: Colors.black.withOpacity(.4)),),
                ),
                trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,))
            ),
             Padding(
               padding: const EdgeInsets.only(right: 18.0),
               child: Text('June 23, 2024',style: TextStyle(color: Colors.black.withOpacity(.4))),
             ),
          ],
        ),
      ),
    );
  }
}
