import 'package:flutter/material.dart';
import 'package:noteshive/view/widgets/custom_note_item.dart';

class NoteListBuilder extends StatelessWidget {
  const NoteListBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
        child: NoteItem(),
      );
    });
  }
}
