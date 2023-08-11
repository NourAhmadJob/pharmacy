import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/auth/login/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/employee/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/home/cubit.dart';
import 'package:pharmacy_system/utils/core/save/shared_pref.dart';
import 'pharmacyManagement/admin/view/screen/auth/login/login_screen.dart';
import 'pharmacyManagement/admin/view_model/all_cubit/company/cubit.dart';
import 'pharmacyManagement/admin/view_model/all_cubit/laboratory/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();
  // String token = SharedPref.getData(key: "token");
  // // ignore: unnecessary_null_comparison
  // if(token != null){
  //   widget = const BottomScreen();
  // }
  // else{
  //   widget = LoginScreen();
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key,});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => CompanyCubit()..getAllCompany()..getAllMedicineInCompany(),
        ),
        BlocProvider(
          create: (context) => EmployeeCubit()..getAllEmployee(),
        ), BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => LaboratoryCubit()..getAllLaboratory(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        title: 'Pharmacy System Management',
        theme: ThemeData(),
        home:  LoginScreen(),
      ),
    );
  }
}
