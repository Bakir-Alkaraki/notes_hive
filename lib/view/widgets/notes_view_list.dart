import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteshive/cubits/cubit/notes_cubit.dart';
import 'package:noteshive/view/widgets/custom_note_item.dart';

import '../../model/note_model.dart';

class NoteListBuilder extends StatelessWidget {
  const NoteListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: NoteItem(),
                );
              }),
        );
      },
    );
  }
}
