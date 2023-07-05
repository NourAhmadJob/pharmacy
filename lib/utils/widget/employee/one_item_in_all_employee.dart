import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/employee/profile_employee.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class OneItemEmployee extends StatelessWidget {
  const OneItemEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        navigateTo(context: context, screen: const ProfileEmployee());
      },
      child: Container(
        padding: const EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
        width: 365,
        height: 200.95,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 209.95,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/open.png"),
                  ),
                ),
              ),
              Column(
                children: [
                  NormalText(
                    text: 'Name Employee',
                    sizeText: 20.0,
                    fontWeight: FontWeight.bold,
                    colorText: AllColors.appColor,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  NormalText(
                    text: 'Role Employee',
                    sizeText: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                  const Spacer(),
                  BasicBottom(
                    text: "More Details",
                    onPressed: () {
                      navigateTo(
                        context: context,
                        screen: const ProfileEmployee(),
                      );
                    },
                    height: 30.0,
                    width: 30.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
