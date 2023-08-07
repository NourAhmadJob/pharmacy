import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/auth/login.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/auth/verify/verify_screen.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view/screen/home/bottom_screen.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/auth/login/state.dart';
import 'package:pharmacy_system/utils/core/constance/api_constance.dart';
import 'package:pharmacy_system/utils/core/constance/token.dart';
import 'package:pharmacy_system/utils/core/save/shared_pref.dart';
import 'package:pharmacy_system/utils/core/server/dio_server.dart';
import 'package:pharmacy_system/utils/fucntion/circle_center.dart';
import 'package:pharmacy_system/utils/fucntion/navigate.dart';
import 'package:pharmacy_system/utils/fucntion/toast.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void loginAdmin({
    required String email,
    required String password,
    context,
  }) async {
    try {
      final Response response = await DioServer.postData(
        url: ApiConstance.loginUrl,
        data: {
          "email": email,
          "password": password,
        },
      );
      loadingCenter(context: context);
      showToast(
        message: "Login Success",
        state: ToastState.Success,
      );
      navigateTo(context: context, screen: VerifyScreen());
    } on DioException catch (e) {
      if (e.response!.statusCode == 500) {
        showToast(message: "Server Error", state: ToastState.Error);
      } else if (e.response!.statusCode == 401) {
        showToast(
            message: e.response!.data['message'], state: ToastState.Error);
      }
    }
  }

  LoginModel? loginModel;

  void verifyCode({required code, context}) {
    DioServer.postData(
      url: ApiConstance.verifyUrl,
      data: {
        "code": code,
      },
    ).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      SharedPref.saveData(key: "token", value: loginModel!.token).then((value) {
        tokenData = SharedPref.getData(key: "token");
        showToast(message: "Success", state: ToastState.Success);
        navigateAndFinish(context: context, screen: const BottomScreen());
      });
    });
  }

  void forgetEmailOne({required String email, context}) async {
    print("hello 1");
    try {
      Response response = await DioServer.postData(
        url: ApiConstance.resetPasswordUrl,
        data: {
          "email": email,
        },
      );
      showToast(message: response.data['message'], state: ToastState.Success);
      navigateAndFinish(context: context, screen: VerifyScreen());
    } on DioException catch (e) {
      if (e.response!.statusCode == 401) {
        showToast(
            message: e.response!.data['message'], state: ToastState.Error);
      }
    }
  }
}
