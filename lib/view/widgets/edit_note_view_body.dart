import 'package:flutter/material.dart';

import 'custom_textfield.dart';
import 'notes_view_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          NotesCustomAppBar(title: 'Edit Note', icon: Icons.check,),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}
