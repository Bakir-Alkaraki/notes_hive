import 'package:flutter/material.dart';
import 'custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: const [
        SizedBox(height: 32,),
        CustomTextField(hint: 'Title',),
        SizedBox(height: 16,),
        CustomTextField(hint: 'Content', maxLines: 3,),
      ],
    ),);
  }
}
