import 'package:flutter/material.dart';
import 'package:noteshive/constants.dart';
import 'package:noteshive/model/note_model.dart';

import 'colors_list_picker.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {

  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kColors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: GestureDetector(
                    onTap: () {
                      currentIndex = index;
                      widget.note.color = kColors[index].value;
                      setState(() {});
                    },
                    child: ColorItem(
                      isPicked: currentIndex == index,
                      color: kColors[index],
                    )),
              );
            }));
  }
}
