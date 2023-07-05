import 'package:pharmacy_system/pharmacyManagement/admin/model/company/all_company.dart';

class AllEmployeeModel {
  final String name;
  final int id;
  final String email;
  final String age;
  final String gender;
  final String phone;
  final String image;

  AllEmployeeModel({
    required this.name,
    required this.id,
    required this.email,
    required this.age,
    required this.gender,
    required this.phone,
    required this.image,
  });

  factory AllEmployeeModel.fromJson(Map<String, dynamic> json) {
    return AllEmployeeModel(
      name: json['name'],
      id: json['id'],
      email: json['email'],
      age: json['age'],
      gender: json['gender'],
      phone: json['phone'],
      image: json['image'],
    );
  }
}
