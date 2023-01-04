import 'package:flutter/material.dart';

import 'notes_view_search.dart';

class NotesCustomAppBar extends StatelessWidget {
  const NotesCustomAppBar(
      {Key? key, required this.title, required this.icon, this.onPressed})
      : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        NotesCustomSearch(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
