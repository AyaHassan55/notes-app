import 'package:flutter/material.dart';

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
      body: Column(
        children: [],
      ),

    );
  }
}

