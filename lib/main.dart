import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/employee/all_employee.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/auth/add_admain/cubit.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/auth/login/cubit.dart';
import 'package:pharmacy_system/utils/core/save/shared_pref.dart';

import 'pharmacyManagement/admin/view_model/all_cubit/company/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  await SharedPref.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit(),),
        BlocProvider(create: (context) => AddAdminCubit(), ),
        BlocProvider(create: (context) => CompanyCubit(),),
      ],
      child: MaterialApp(
        title: 'Pharmacy System Management',
        theme: ThemeData(),
        home:  const AllEmployee(),
      ),
    );
  }
}
