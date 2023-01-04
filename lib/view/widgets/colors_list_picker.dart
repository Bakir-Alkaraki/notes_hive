import 'package:flutter/material.dart';

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

  List<Color> colors = const [
    Color(0xffBAD1CD),
    Color(0xffF2D1C9),
    Color(0xffE086D3),
    Color(0xff8332AC),
    Color(0xff462749),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38 * 2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: GestureDetector(
                    onTap: () {
                      currentIndex = index;
                      setState(() {});
                    },
                    child: ColorItem(
                      isPicked: currentIndex == index,
                      color: colors[index],
                    )),
              );
            }));
  }
}
