import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

import '../../../../../utils/widget/all_app/basic_bottom.dart';
import '../../../../../utils/widget/all_app/text_form_field.dart';

class EditLaboratory extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();


  EditLaboratory({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    nameController.text = name;
    emailController.text = email;
    phoneController.text = phone;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: NormalText(
          text: "Edit name Laboratory",
          colorText: Colors.white,
          sizeText: 20.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultFormField(
              controller: nameController,
              type: TextInputType.text,
              label: "Name Laboratory",
              prefixIcon: Icons.drive_file_rename_outline,
              validate: (String? value) {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            DefaultFormField(
              label: "Email Laboratory",
              controller: emailController,
              type: TextInputType.text,
              prefixIcon: Icons.email_outlined,
              validate: (String? value) {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            DefaultFormField(
              label: "Phone Laboratory",
              controller: phoneController,
              prefixIcon: Icons.phone,
              type: TextInputType.text,
              validate: (String? value) {},
            ),
            const SizedBox(
              height: 25.0,
            ),
            BasicBottom(
              text: "Edit  Now",
              colorText: Colors.white,
              onPressed: () {
                // access to api add laboratory
              },
            ),
          ],
        ),
      ),
    );
  }
}
