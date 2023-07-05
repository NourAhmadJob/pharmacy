import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
import 'package:pharmacy_system/utils/widget/employee/one_item_in_all_employee.dart';

class AllEmployee extends StatelessWidget {
  const AllEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: NormalText(
          text: "All Employee",
          colorText: Colors.white,
          sizeText: 20.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: AllColors.appColor,
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: TextEditingController(),
                decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(Icons.search , color: Colors.white,),
                  hintText: "Search about employee",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => const OneItemEmployee(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15.0,
                ),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
