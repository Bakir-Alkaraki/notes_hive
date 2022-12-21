import 'package:flutter/material.dart';
import 'package:noteshive/view/widgets/note_bottom_sheet.dart';
import 'package:noteshive/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) {
          return const AddNoteBottomSheet();
        });
      }, child: const Icon(Icons.add),),
      body: const NotesViewBody(),
    );
  }
}

