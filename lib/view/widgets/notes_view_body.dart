import 'package:flutter/material.dart';
import 'notes_view_appbar.dart';
import 'notes_view_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          NotesCustomAppBar(title: 'Notes', icon: Icons.search,),
          Expanded(child: NoteListBuilder()),
        ],
      ),
    );
  }
}
