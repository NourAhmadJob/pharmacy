import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: const Text("Home Screen"),
      ),
    );
  }
}
