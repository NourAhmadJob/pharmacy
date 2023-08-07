import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/laboratory/edit_laboratory.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/icon_button.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_botton.dart';

import '../all_app/text_normal.dart';

class AllLaboratoryWidget extends StatelessWidget {
  const AllLaboratoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NormalText(
                        text: "Al-Majed Laboratory",
                        sizeText: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      NormalText(
                        text: "noorahmad@gmail.com",
                        sizeText: 16,
                        fontWeight: FontWeight.bold,
                        colorText: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      NormalText(
                        text: "0998318250",
                        sizeText: 14,
                        fontWeight: FontWeight.bold,
                        colorText: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      NormalText(
                        text: "20 products",
                        sizeText: 14,
                        fontWeight: FontWeight.bold,
                        colorText: Colors.grey,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      DefaultIconButton(
                        iconData: Icons.edit,
                        onPressed: () {
                          navigateTo(
                            context: context,
                            screen: EditLaboratory(
                              name: "Name Laboratory Local",
                              email: "no@gmail.com",
                              phone: '9855522222',
                            ),
                          );
                        },
                        iconColor: Colors.grey,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      DefaultIconButton(
                        iconData: Icons.delete,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              actions: [
                                DefaultTextButton(
                                  text: "No",
                                  onPressed: () {
                                    navigateBack(context: context);
                                  },
                                  fontWeight: FontWeight.w700,
                                ),
                                DefaultTextButton(
                                  text: "Yes",
                                  onPressed: () {
                                    // access to delete laboratory
                                  },
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                )
                              ],
                              title: NormalText(
                                text: "Are you sure to delete the laboratory ?",
                                fontWeight: FontWeight.w800,
                                sizeText: 20.0,
                              ),
                            ),
                          );
                        },
                        iconColor: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
