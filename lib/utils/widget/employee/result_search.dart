import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/employee/all_employee.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class ResultSearch extends StatelessWidget {
  final AllEmployeeModel allEmployeeModel;

  const ResultSearch({super.key, required this.allEmployeeModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 360.0,
            height: 250.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: CircleAvatar(
                          maxRadius: 35,
                          // backgroundImage:
                          // AssetImage(upcoming[index]),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: NormalText(
                              text: allEmployeeModel.name,
                              sizeText: 22.0,
                              fontWeight: FontWeight.bold,
                              colorText: AllColors.appColor,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: NormalText(text: allEmployeeModel.email),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xff36C8FF),
                                  size: 20,
                                ),
                                NormalText(text: "4.8")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(color: Colors.grey, endIndent: 20, indent: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NormalText(
                      text: "28  Years ",
                      colorText: Colors.grey,
                      sizeText: 13.0,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.access_time, color: Colors.grey, size: 20),
                    const SizedBox(
                      width: 5,
                    ),
                    NormalText(
                      text: "10:30 Am",
                      sizeText: 12,
                      colorText: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(Icons.circle, color: Colors.green, size: 20),
                    const SizedBox(
                      width: 5,
                    ),
                    NormalText(
                      text: "Confirmed",
                      sizeText: 12.0,
                      colorText: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color(0xff1C208F),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text("Cancel",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12)),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    BasicBottom(
                      text: "Details",
                      onPressed: () {},
                      width: 140,
                      height: 40,
                      colorText: Colors.white,
                      borderRadius: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
