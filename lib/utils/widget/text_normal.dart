import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  final String text;
  Color colorText;

  double sizeText;

  FontWeight fontWeight;

   TextNormal({
    super.key,
    required this.text,
    this.colorText = Colors.black ,
    this.sizeText = 16.0 ,
    this.fontWeight = FontWeight.w400 ,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colorText,
        fontSize: sizeText,
        fontWeight: fontWeight,
      ),
    );
  }
}
