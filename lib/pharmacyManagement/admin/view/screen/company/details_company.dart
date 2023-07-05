import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/company/edit_company.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/menu_item.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
class DetailsCompany extends StatelessWidget {
  const DetailsCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        elevation: 0.0,
        title: NormalText(
          text: 'Details Company',
          sizeText: 20.0,
          colorText: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/open.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            MenuItem(
              type: "Name Company : ",
              value: "Noor Ahmad",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 40.0,
            ),
            MenuItem(
              type: "details Company : ",
              value: "Medical Company",
              icon: Icons.supervised_user_circle,
            ),
            const SizedBox(
              height: 40.0,
            ),
            MenuItem(
              type: "Email Company : ",
              value: "noorahmad@gmail.com",
              icon: Icons.email,
            ),
            const SizedBox(
              height: 40.0,
            ),
            MenuItem(
              type: "Address : ",
              value: "Damascus",
              icon: Icons.location_on,
            ),
            const SizedBox(
              height: 40.0,
            ),
            MenuItem(
              type: "Phone Number : ",
              value: "0998318250",
              icon: Icons.phone,
            ),
            const SizedBox(
              height: 40.0,
            ),
            MenuItem(
              type: "Fax : ",
              value: "011 - 9884",
              icon: Icons.phonelink,
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: BasicBottom(
                    text: "Edit",
                    onPressed: () {
                      navigateTo(
                        context: context,
                        screen:  EditCompany(),
                      );
                    },
                    colorContainer: Colors.amber,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: BasicBottom(
                    colorContainer: Colors.red,
                    text: "Delete",
                    onPressed: () {
                      // api delete
                    },
                  ),
                ),
                //BasicBottom(text: "Edit", onPressed: (){},width: 80,),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
