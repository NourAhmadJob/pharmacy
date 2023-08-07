import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/order/details_one_item_order.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class OneItemOrder extends StatelessWidget {
  const OneItemOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(
          context: context,
          screen: const DetailsOneItemOrder(),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        decoration: BoxDecoration(
          //color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/open.png"),
                  width: 130.0,
                  height: 140.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                NormalText(
                  text: "10 Dec 2020",
                  sizeText: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NormalText(
                    text: "Name of Order in My Company",
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  NormalText(text: "Name of some thing"),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      NormalText(
                        text: "Order Id : ",
                        fontWeight: FontWeight.w800,
                      ),
                      NormalText(
                        text: "98452654",
                        colorText: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      NormalText(
                        text: "Price : ",
                        fontWeight: FontWeight.w800,
                      ),
                      NormalText(
                        text: "900000 s.y",
                        colorText: Colors.grey,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      NormalText(
                        text: "Date Order : ",
                        fontWeight: FontWeight.w800,
                      ),
                      NormalText(
                        text: "10/10/2020",
                        colorText: Colors.grey,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      NormalText(text: 'Order Returned'),
                      const SizedBox(
                        width: 12.0,
                      ),
                      BasicBottom(
                        height: 20.0,
                        width: 20.0,
                        borderRadius: 8.0,
                        colorContainer: Colors.red,
                        text: "Delete",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  NormalText(
                    text: "20 % OFF",
                    colorText: AllColors.greenColor,
                    fontWeight: FontWeight.w800,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
