import 'package:flutter/material.dart';
import 'package:pharmacy_system/pharmacyMangement/admain/presentation/screen/auth/home.dart';
import 'package:pharmacy_system/utils/widget/text_form_field.dart';

class Admin_Register extends StatefulWidget {
  @override
  State<Admin_Register> createState() => _Admin_RegisterState();
}

class _Admin_RegisterState extends State<Admin_Register> {
  int _index = 0;

  List<Step> listStep() => [
        Step(
          title: const Text("Account"),
          content: Step1Widget(),
          isActive: _index > 0 ? true : false,
        ),
        Step(
          title: const Text("Address"),
          content: AdressScreen(),
          isActive: _index > 1 ? true : false,
        ),
        Step(
            title: const Text("Register"),
            content: FinishRegisterScreen(),
            state: StepState.complete),
      ];
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: Stepper(
                  elevation: 0.0,
                  physics: const BouncingScrollPhysics(),
                  // margin: const EdgeInsets.all(5.0),
                  currentStep: _index,
                  onStepCancel: () {
                    if (_index == 0) {
                      return;
                    }
                    setState(() {
                      _index -= 1;
                    });
                  },
                  onStepTapped: (int index) {
                    setState(() {
                      _index = index;
                    });
                  },
                  onStepContinue: () {
                    if (_index == 2) {
                      print("hello 1");
                      // call api register
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                      return;
                    }
                    setState(() {
                      _index += 1;
                    });
                    ;
                  },
                  type: StepperType.vertical,
                  steps: listStep(),
                ),
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

class Step1Widget extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultFormField(
              hint: "Name",
              controller: nameController,
              type: TextInputType.text,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return "Enter Your Name";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 39.0,
            ),
            DefaultFormField(
              hint: "Email",
              controller: emailController,
              prefixIcon: Icons.email,
              type: TextInputType.emailAddress,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return "Enter Your Email";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 39.0,
            ),
            DefaultFormField(
              hint: "Password",
              controller: passwordController,
              obscure: true,
              prefixIcon: Icons.lock,
              type: TextInputType.visiblePassword,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return "Enter Your Password";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AdressScreen extends StatelessWidget {
  TextEditingController namePharmacyController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultFormField(
              hint: "Name Pharmacy",
              controller: namePharmacyController,
              type: TextInputType.text,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return "Enter Your Name Pharmayc";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 39.0,
            ),
            DefaultFormField(
              hint: "Address",
              controller: addressController,
              prefixIcon: Icons.location_on_sharp,
              type: TextInputType.text,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return "Enter Your Location";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 39.0,
            ),
            DefaultFormField(
              hint: "Phone Number",
              controller: phoneController,
              prefixIcon: Icons.phone,
              type: TextInputType.phone,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return "Enter Your Phone";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FinishRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children:  [
          const CircleAvatar(
            radius: 180.0,
            backgroundColor: Colors.blue,
          ),
          Positioned(
            top: 280.0,
            left: 200.0,
            bottom: 30.0,
            child: IconButton (
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_rounded,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
