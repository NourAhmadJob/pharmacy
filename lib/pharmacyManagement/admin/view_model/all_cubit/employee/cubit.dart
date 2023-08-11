import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/employee/all_employee.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/employee/all_employee.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/employee/states.dart';
import 'package:pharmacy_system/utils/core/constance/api_constance.dart';
import 'package:pharmacy_system/utils/core/constance/token.dart';
import 'package:pharmacy_system/utils/core/server/dio_server.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/fucntion/toast.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

import '../../../model/employee/update_employee.dart';

class EmployeeCubit extends Cubit<EmployeeStates> {
  EmployeeCubit() : super(EmployeeInitialState());

  static EmployeeCubit get(context) => BlocProvider.of(context);
  List<AllEmployeeModel> allEmployeeList = [];

  void getAllEmployee() async {
    allEmployeeList = [];
    emit(EmployeeLoadingState());
    final Response response = await DioServer.getData(
        url: ApiConstance.allEemployee, token: tokenData);
    response.data['employees'].forEach((element) {
      allEmployeeList.add(AllEmployeeModel.fromJson(element));
      emit(EmployeeSuccessState());
    });
  }

  void addEmployee({
    required String name,
    required String email,
    required String password,
    required String c_password,
    required String phone,
    required gender,
    required String address,
    required int role,
    context,
  }) async {
    try {
      emit(AddEmployeeLoadingState());
      final Response response = await DioServer.postData(
        url: ApiConstance.addEmployee,
        data: {
          "name": name,
          "email": email,
          "password": password,
          "confirmPassword": c_password,
          "address": address,
          "gender": gender,
          "role": role,
          "phone_number": phone
        },
        token: tokenData,
      );

      messageSnackBar(
          context: context,
          text: "Added Successfully",
          state: ToastState.Success);
      navigateAndFinish(context: context, screen: AllEmployee());
      emit(AddEmployeeSuccessState());
    } on DioException catch (e) {
      if (e.response!.statusCode == 401) {
        messageSnackBar(
            context: context,
            text: e.response!.data['message'],
            state: ToastState.Error);
      }
    }
  }

  void deleteEmployee({
    required int id,
    required context,
  }) async {
    try {
      final Response response = await DioServer.postData(
        url: "",
        data: {
          "id": id,
        },
      );
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: NormalText(text: "")));
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {}
    }
  }

  UpdateEmployeeModelMain? model;

  void updateEmployee(
      {required String name,
      required String email,
      required String password,
      required String c_password,
      required int id,
      required String address,
      required String phone,
      required String gender,
      required String salary,
      required bool employeeMonth,
      context}) async {
    emit(EmployeeUpdateLoadingState());
    try {
      final Response response = await DioServer.putData(
        url: ApiConstance.updateEmployee,
        token: tokenData,
        data: {
          "email": email,
          "name": name,
          "password": password,
          "confirmPassword": c_password,
          "phone_number": phone,
          "updateEmployeeId": id,
          "address": address,
          "gender": gender,
          "employeeOfTheMonth": employeeMonth,
          "salary": salary,
        },
      );
      model = UpdateEmployeeModelMain.fromJson(response.data);
      messageSnackBar(
          context: context,
          text: "Update Details Employee Successfully",
          state: ToastState.Success);
      emit(EmployeeUpdateSuccessState(model: model!));
      navigateBack(context: context);
    } on DioException catch (e) {
      if (e.response!.statusCode == 401) {
        messageSnackBar(
          context: context,
          text: e.response!.data['message'],
          state: ToastState.Error,
        );
      }
    }
  }

  void searchEmployee({
    required String text
})async {
    try{
     Response response = await DioServer.postData(
        url: ApiConstance.searchEmployee,
        token: tokenData,
        data: {"name": text},
      );
    } on DioException catch(e){}
  }
}
