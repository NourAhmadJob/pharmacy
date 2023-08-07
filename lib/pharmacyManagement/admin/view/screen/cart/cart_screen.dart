import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
import 'package:pharmacy_system/utils/widget/cart/after_list_cart.dart';
import 'package:pharmacy_system/utils/widget/cart/one_item_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: NormalText(
          text: "My Cart",
          sizeText: 20.0,
          fontWeight: FontWeight.w700,
          colorText: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 490,
            child: ListView.separated(
              itemBuilder: (context, index) => const OneItemCart(),
              separatorBuilder: (context, index) => const Divider(thickness: 1.5,),
              itemCount: 3,
            ),
          ),
          InkWell(
            onTap: (){},
            child: NormalText(
              text: "See All Product My Cart",
              sizeText: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          AfterCart(textRight: "500", textLeft: "Sub Total"),
          const SizedBox(height: 10.0,),
          AfterCart(textRight: "500", textLeft: "Bonus"),
          const SizedBox(height: 10.0,),
          AfterCart(
            textRight: "1000",
            textLeft: "total",
            leftText: Colors.black,
            rightText: Colors.black,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BasicBottom(
              text: "Pay Now",
              colorText: Colors.white,
              fontWeight: FontWeight.w700,
              sizeText: 20.0,
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
        ],
      ),
    );
  }
}
