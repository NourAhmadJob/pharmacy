import 'package:flutter/material.dart';

class TextNormal extends StatelessWidget {
  final String text;
  Color colorText;

  double sizeText;
  double heightText ;
  double letterSpacing ;
  FontWeight fontWeight;

   TextNormal({
    super.key,
    required this.text,
    this.colorText = Colors.black ,
    this.sizeText = 16.0 ,
     this.heightText = 0.0,
     this.letterSpacing = 0.0,
    this.fontWeight = FontWeight.w400 ,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,

      style: TextStyle(
       height: heightText,
        letterSpacing: letterSpacing,
        color: colorText,
        fontSize: sizeText,
        fontWeight: fontWeight,
      ),
    );
  }
}
