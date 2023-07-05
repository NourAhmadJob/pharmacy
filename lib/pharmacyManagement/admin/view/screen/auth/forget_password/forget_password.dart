import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/auth/verify/verify_screen.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/auth/login/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/auth/login/state.dart';
import 'package:pharmacy_system/utils/core/constance/color_constance.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/widget/all_app/basic_bottom.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_form_field.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';
class ForgetPassword extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        centerTitle: true,
        title: NormalText(
          text: "Forget Password",
          colorText: Colors.white,
          sizeText: 20.0,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const Text("Email"),
                const SizedBox(
                  height: 15.0,
                ),
                DefaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "Enter Your Name Pharmayc";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                BlocProvider<LoginCubit>(
                  create:(context)=> LoginCubit(),
                  child: BlocConsumer<LoginCubit , LoginStates>(
                    listener: (context ,state){},
                    builder: (context ,state) =>  BasicBottom(
                      text: "Next Verify",
                      colorText: Colors.white,
                      onPressed: () {
                        LoginCubit.get(context).forgetEmailOne(
                          email: emailController.text,
                          context: context,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
