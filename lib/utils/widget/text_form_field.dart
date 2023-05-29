import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final  validate ;
  bool obscure = false;
  IconData? prefixIcon;
  IconData? suffixIcon;
  String? hint;
  String? label;
  double? borderRadius = 18.0;
  Color? textInputColor;
  int? maxLine;
  Color? enableBorderColor;

  DefaultFormField({
    super.key,
    required this.controller,
    required this.type,
    required this.validate,
    this.obscure = false,
    this.hint,
    this.label,
    this.borderRadius,
    this.textInputColor,
    this.maxLine = 1,
    this.prefixIcon,
    this.enableBorderColor,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: obscure,
      maxLines: maxLine,
      validator: validate,
      style: TextStyle(
        color: textInputColor,
      ),
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        labelText: label,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w300,
        ),
        // enabledBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     //color: enableBorderColor!,
        //     width: 1.0,
        //   ),
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0 ,
          ) ,
        ),
      ),
    );
  }
}
