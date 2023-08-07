import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
class GrudDetails extends StatelessWidget {
  final String name ;
  const GrudDetails({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: NormalText(text: "$name  Details" , colorText: Colors.white,sizeText: 20.0,fontWeight: FontWeight.w800,),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
