import 'package:flutter/material.dart';

class NotesCustomSearch extends StatelessWidget {
  const NotesCustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: IconButton(onPressed: () {},
          icon: const Icon(Icons.search, size: 25,),
        ),
      ),
    );
  }
}
