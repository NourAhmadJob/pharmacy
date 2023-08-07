import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/icon_button.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
import 'package:pharmacy_system/utils/widget/home/one_item_order.dart';

class AllOrder extends StatelessWidget {
  const AllOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        elevation: 0.0,
        title: NormalText(
          text: "Order Pharmacy",
          colorText: Colors.white,
          fontWeight: FontWeight.bold,
          sizeText: 20.0,
        ),
        actions: [
          DefaultIconButton(
            iconData: Icons.search,
            onPressed: () {},
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50.0,
              width: double.infinity,
              color: AllColors.appColor,
              child: Container(
                width: 400,
                margin: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: TabBar(
                  unselectedLabelColor: const Color(0xff8E90C7),
                  physics: const BouncingScrollPhysics(),
                  indicator: const BoxDecoration(
                    color: Colors.white,
                  ),
                  dividerColor: Colors.red,
                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: NormalText(
                          text: "All Order",
                          colorText: Colors.black87,
                          sizeText: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Align(
                          alignment: Alignment.center,
                          child: NormalText(
                            text: "Company",
                            sizeText: 16.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => const OneItemOrder(),
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 1.5,
                    ),
                    itemCount: 10,
                  ),
                  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const OneItemOrder(),
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
