import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty?? true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      cursorColor: primaryColor,
      maxLines:maxLines,
      decoration: InputDecoration(
        hintText: hint,

        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(primaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
       borderRadius: BorderRadius.circular(10),
      borderSide:  BorderSide(color: color??Colors.white),
      );
  }
}
