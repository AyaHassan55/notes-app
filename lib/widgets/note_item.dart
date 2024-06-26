import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/notes_cubit.dart';
import '../models/note_model.dart';
import '../views/edit_note_view.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,left: 16,bottom: 24),
        margin:const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:Color(note.color),
          borderRadius: BorderRadius.circular(15)
        ),

        child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(note.title,style:const TextStyle(fontSize: 28,color: Colors.black),),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(.4)),),
                ),
                trailing: IconButton(onPressed: (){
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                }, icon: const Icon(Icons.delete,color: Colors.black,))
            ),
             Padding(
               padding: const EdgeInsets.only(right: 18.0),
               child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.4))),
             ),
          ],
        ),
      ),
    );
  }
}
