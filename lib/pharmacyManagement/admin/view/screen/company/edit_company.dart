import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

// ignore: must_be_immutable
class EditCompany extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController FaxNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController detailsCompanyController = TextEditingController();

  EditCompany({super.key});

  @override
  Widget build(BuildContext context) {
    emailController.text = "noorahmad@gmail.com";
    nameController.text = "Noor Ahmad";
    phoneController.text = "0998318250";
    FaxNumberController.text = "011 - 9884";
    addressController.text = "Damascus";
    detailsCompanyController.text = "Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company Company ";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: NormalText(
          text: "Edit Details Company",
          colorText: Colors.white,
          sizeText: 20.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NormalText(text: "Name"),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                width: 335,
                height: 52,
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AllColors.appColor, width: 1.0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AllColors.appColor, width: 1.0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Enter Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              NormalText(
                text: "Email",
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                width: 335,
                height: 52,
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AllColors.appColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color:  AllColors.appColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Enter Email Company',
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              NormalText(text: "Mobile Number"),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AllColors.appColor, width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AllColors.appColor, width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Enter Mobile Number',
                ),
              ),
              NormalText(text: "Fax Number"),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: FaxNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AllColors.appColor, width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: AllColors.appColor, width: 1.0),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Enter Mobile Number',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              NormalText(text: "Address"),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                width: 335,
                height: 52,
                child: TextField(
                  controller: addressController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AllColors.appColor, width: 1.0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: AllColors.appColor, width: 1.0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Enter Address',
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              NormalText(text: "Details Company"),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: detailsCompanyController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AllColors.appColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color:  AllColors.appColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: 'Enter Details Company',
                ),
                maxLines: 5,
              ),
              const SizedBox(
                height: 30,
              ),
              BasicBottom(
                text: "Edit Now",
                colorText: Colors.white,
                sizeText: 20.0,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
