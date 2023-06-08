import 'package:flutter/material.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/widget/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/text_normal.dart';

class VerifyScreen extends StatelessWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AllColors.appColor,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 150.0,
              width: double.infinity,
              color: AllColors.appColor,
              child: TextNormal(
                text: "Verification",
                colorText: Colors.white,
                sizeText: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 80.0, left: 150.0),
                child: const Image(
                  image: AssetImage(
                    "assets/images/open-email.png",
                  ),
                  height: 100,
                  width: 80.0,
                )),
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(top: 200.0),
              child: Column(
                children: [
                  TextNormal(
                    text:
                        "We have sent you an access code via SMS for your email input verification",
                    sizeText: 18.0,
                    fontWeight: FontWeight.w400,
                    heightText: 2.0,
                    letterSpacing: 0.6,
                  ),
                  const SizedBox(height: 50.0,),
                  TextNormal(text: "Enter Code Here"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60.0,
                        width: 60.0,
                        child: TextField(
                          controller: controller1,
                          onChanged: (value) {
                            if (value.length == 1)
                              FocusScope.of(context).nextFocus();
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: 60.0,
                        child: TextField(
                          controller: controller2,
                          onChanged: (value) {
                            if (value.length == 1)
                              FocusScope.of(context).nextFocus();
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: 60.0,
                        child: TextField(
                          controller: controller3,
                          onChanged: (value) {
                            if (value.length == 1)
                              FocusScope.of(context).nextFocus();
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: 60.0,
                        child: TextField(
                          controller: controller4,
                          onChanged: (value) {
                            if (value.length == 1)
                              FocusScope.of(context).nextFocus();
                          },
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: const BorderSide(
                                    color: AllColors.appColor, width: 2.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // call api verify
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 400.0),
                child: const CircleAvatar(
                  backgroundColor: AllColors.appColor,
                  radius: 40.0,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    size: 40.0,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 600),
              child: TextNormal(
                text: "Resend code",
                colorText: AllColors.appColor,
                sizeText: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ));
  }
}
