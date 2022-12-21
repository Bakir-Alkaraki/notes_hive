import 'package:flutter/material.dart';
import 'package:noteshive/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Center(child: Text("Add", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),),
    );
  }
}
