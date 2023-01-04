import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteshive/cubits/cubit/notes_cubit.dart';
import 'package:noteshive/model/note_model.dart';

import 'custom_textfield.dart';
import 'edit_note_color_list.dart';
import 'notes_view_appbar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          NotesCustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          EditNoteColorList(note: widget.note,)
        ],
      ),
    );
  }
}
