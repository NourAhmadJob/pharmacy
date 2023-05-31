import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';

class DefaultContainer extends StatelessWidget {
  final String text;
  final Function onPressed;
  Color color;
  Color colorContainer;
  double sizeText;

  double height;

  double width;

  double borderRadius;

  FontWeight fontWeight;

  DefaultContainer({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.sizeText = 18.0,
    this.height = 60.0,
    this.width = double.infinity,
    this.borderRadius = 16.0,
    this.colorContainer = AllColors.appColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.green,
      onTap: () {
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
            color: colorContainer,
            borderRadius: BorderRadius.circular(borderRadius)),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        width: width,
        height: height,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: sizeText,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
