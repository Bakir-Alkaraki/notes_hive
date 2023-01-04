import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteshive/cubits/add_note_cubit/cubit/add_note_cubit.dart';

import '../../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isPicked, required this.color})
      : super(key: key);

  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({Key? key}) : super(key: key);

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentIndex = 0;

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
                      BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
