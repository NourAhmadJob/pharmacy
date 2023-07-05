import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/icon_button.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
// ignore: must_be_immutable
class EditProfileEmployee extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  EditProfileEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    emailController.text = "noorahmad@gmail.com";
    nameController.text = "Noor Ahmad";
    phoneController.text = "0998318250";
    addressController.text = "Damascus";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 50.0),
                      height: 250,
                      width: 360,
                      color: AllColors.appColor,
                      child: DefaultIconButton(
                        iconData: Icons.arrow_back,
                        onPressed: () {
                          navigateBack(context: context);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 62, left: 60),
                      child: NormalText(
                        text: "Edit Profile",
                        sizeText: 20.0,
                        fontWeight: FontWeight.w500,
                        colorText: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 200, left: 125),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 80,
                        backgroundImage: AssetImage("assets/images/open.png"),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
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
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Enter Email',
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
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      width: 335,
                      height: 52,
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Enter Mobile Number',
                        ),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Enter Address',
                        ),
                      ),
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
          ],
        ),
      ),
    );
  }
}
