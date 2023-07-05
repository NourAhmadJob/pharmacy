import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/employee/all_employee.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/employee/states.dart';
import 'package:pharmacy_system/utils/core/server/dio_server.dart';
import 'package:pharmacy_system/utils/widget/all_app/text_normal.dart';

class EmployeeCubit extends Cubit<EmployeeStates> {
  EmployeeCubit() : super(EmployeeInitialState());

  EmployeeCubit get(context) => BlocProvider.of(context);

  List<AllEmployeeModel> allEmployeeList = [];

  void getAllEmployee() async {
    emit(EmployeeLoadingState());
    final Response response = await DioServer.getData(url: "");
    response.data[''].forEach((element) {
      allEmployeeList.add(AllEmployeeModel.fromJson(element));
      emit(EmployeeSuccessState());
    });
  }

  void deleteEmployee({
    required int id ,
    required context ,
}) async {
    try {
      final Response response = await DioServer.postData(
        url: "",
        data: {
          "id" : id ,
        },
      );
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: NormalText(text: "")));
    } on DioException catch(e){
      if(e.response!.statusCode == 400){}
    }
  }

  void updateEmployee() {}
}
