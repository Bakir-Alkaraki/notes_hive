import 'package:flutter/material.dart';

import 'notes_view_search.dart';

class NotesCustomAppBar extends StatelessWidget {
  const NotesCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("Notes", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
        Spacer(),
        NotesCustomSearch(),


      ],
    );
  }
}
