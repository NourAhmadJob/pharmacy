import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';

import 'text_normal.dart';

class BasicBottom extends StatelessWidget {
  final String text;
  final Function onPressed;
  Color colorText;
  Color? colorContainer;
  double sizeText;
  double height;
  double width;
  double borderRadius;
  FontWeight fontWeight;
  Color borderSide ;

  BasicBottom({
    super.key,
    required this.text,
    required this.onPressed,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.colorContainer = AllColors.appColor ,
    this.sizeText = 18.0,
    this.height = 45.0,
    this.width = double.infinity,
    this.borderRadius = 16.0,
    this.borderSide = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      shape: OutlineInputBorder(
        borderSide:  BorderSide(color:borderSide),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      color: colorContainer,
      onPressed: () {
        // api Add Employee
      },
      child: TextNormal(
        text: "Add Employee",
        colorText: colorText,
        sizeText: 20.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}