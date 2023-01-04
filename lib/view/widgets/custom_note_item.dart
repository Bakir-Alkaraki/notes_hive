import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteshive/model/note_model.dart';

import '../../cubits/cubit/notes_cubit.dart';
import '../edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(note.title, style: const TextStyle(fontSize: 26, color: Colors.black),),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: Text(note.subTitle, style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),),
              ),
              trailing: IconButton(onPressed: () {
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              }, icon: const Icon(FontAwesomeIcons.trash, size: 24,),color: Colors.black,),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(note.date, style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
