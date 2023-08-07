import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class DetailsOneItemOrder extends StatelessWidget {
  const DetailsOneItemOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: NormalText(
          text: "Details Order",
          colorText: Colors.white,
          sizeText: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Column(
        children:
        [

        ],
      ),
    );
  }
}
