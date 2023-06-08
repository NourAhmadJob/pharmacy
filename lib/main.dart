import 'package:flutter/material.dart';

import 'pharmacyManagement/admin/presentation/screen/add/add_employee.dart';
import 'pharmacyManagement/admin/presentation/screen/verify/verify_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy System Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   VerifyScreen(),
    );
  }
}