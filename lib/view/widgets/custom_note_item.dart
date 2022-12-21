import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text("Flutter Tips", style: TextStyle(fontSize: 26, color: Colors.black),),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              child: Text("Build your Career with Tharwat Samy", style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5)),),
            ),
            trailing: IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.trash, size: 24,),color: Colors.black,),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text("May21, 2022", style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.4)),
            ),
          )
        ],
      ),
    );
  }
}