import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../constants.dart';
import '../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note){
    emit(AddNoteLoading());
    try{
      var notesBox=Hive.box(kNotesBox);
      emit(AddNoteSuccess());
      notesBox.add(note);
    }catch(e){
      AddNoteFailure(e.toString());
    }
  }
}
