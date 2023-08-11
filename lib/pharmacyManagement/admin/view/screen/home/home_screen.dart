import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/search/search_screen_2.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/company/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/employee/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/home/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/home/states.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/laboratory/cubit.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/icon_button.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
import 'package:pharmacy_system/utils/widget/grud/one_item_all_grud_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AllColors.appColor,
              elevation: 0.0,
              title: NormalText(
                text: "Home Pharmacy",
                colorText: Colors.white,
                sizeText: 20.0,
                fontWeight: FontWeight.w800,
              ),
              actions: [
                DefaultIconButton(
                  iconData: Icons.notifications,
                  onPressed: () {
                    LaboratoryCubit.get(context).getAllLaboratory();
                  },
                ),
                DefaultIconButton(
                  iconData: Icons.search,
                  onPressed: () {
                    navigateTo(
                      context: context,
                      screen: SearchScreen2(),
                    );
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.0,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        index == 0 ? Colors.blue : Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: NormalText(
                                    text: index == 0 ? "All Category" : "Vitamin",
                                    colorText: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                            separatorBuilder: (context, index) => const SizedBox(
                              width: 8.0,
                            ),
                            itemCount: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 20,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 160,
                      ),
                      itemBuilder: (context, index) => const OneItemAllGrud(),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
