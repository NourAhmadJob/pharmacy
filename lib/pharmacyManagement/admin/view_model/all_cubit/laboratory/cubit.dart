import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/laboratory/states.dart';
import 'package:pharmacy_system/utils/core/constance/api_constance.dart';
import 'package:pharmacy_system/utils/core/constance/token.dart';
import 'package:pharmacy_system/utils/core/server/dio_server.dart';
import 'package:pharmacy_system/utils/fucntion/toast.dart';

class LaboratoryCubit extends Cubit<LaboratoryStates> {
  LaboratoryCubit() : super(LaboratoryInitialState());

  void getAllLaboratory() async {
    emit(LaboratoryAllLoadingState());
    try {
      final Response response = await DioServer.getData(
          url: ApiConstance.allLaboratory, token: tokenDataBearer);
      emit(LaboratoryAllSuccessState());
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
      } else if (e.response!.statusCode == 401) {}
    }
  }

  void addLaboratory({
    required String name,
    required String email,
    required String phone,
  }) async {
    emit(LaboratoryAddLoadingState());
    try {
      final Response response = await DioServer.postData(
        url: ApiConstance.addLaboratory,
        token: tokenDataBearer,
        data: {"name": name, "email": email, "phone_number": phone},
      );
      emit(LaboratoryAddSuccessState());
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
      } else if (e.response!.statusCode == 401) {}
    }
  }

  void updateLaboratory({
    required String name,
    required String email,
    required String phone,
    required int id,
    required int runOutLimit,
    required expirationDate,
  }) async {
    emit(LaboratoryEditLoadingState());
    try {
      final Response response = await DioServer.putData(
        url: ApiConstance.updateLaboratory,
        token: tokenDataBearer,
        data: {
          "name": name,
          "email": email,
          "phone_number": phone,
          "laboratoryId": id,
          "runOutLimit": runOutLimit,
          "expirationDate": expirationDate,
        },
      );
      emit(LaboratoryEditSuccessState());
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
      } else if (e.response!.statusCode == 401) {}
    }
  }

  void deleteLaboratory({required int id}) async {
    try {
      emit(LaboratoryDeleteLoadingState());
      final Response response = await DioServer.deleteData(
        url: ApiConstance.deleteLaboratory,
        data: {
          "laboratoryId": id,
        },
        token: tokenDataBearer,
      );
      showToast(message: "Delete Success", state: ToastState.Success);
      emit(LaboratoryDeleteSuccessState());
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
      } else if (e.response!.statusCode == 401) {}
    }
  }
}
