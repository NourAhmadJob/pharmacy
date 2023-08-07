import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/grud/details_grud.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class OneItemAllGrud extends StatelessWidget {
  const OneItemAllGrud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        navigateTo(
          context: context,
          screen: const GrudDetails(
            name: "Vitamin",
          ),
        );
      },
      child: Container(
        height: 100,
        width: 104,
        decoration: BoxDecoration(
            color: AllColors.backGrud,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.transparent,
                child: Image(
                  image: AssetImage("assets/images/open.png"),
                  width: 70,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              NormalText(
                text: "Name Products Name Products",
                fontWeight: FontWeight.w800,
                sizeText: 18.0,
                maxLine: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  NormalText(
                    text: "Amount",
                    sizeText: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  NormalText(
                    text: "1500",
                    sizeText: 18,
                    colorText: Colors.grey,
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


