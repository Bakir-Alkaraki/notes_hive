import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteshive/cubits/cubit/notes_cubit.dart';
import 'notes_view_appbar.dart';
import 'notes_view_list.dart';
/*
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
}*/


class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
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

