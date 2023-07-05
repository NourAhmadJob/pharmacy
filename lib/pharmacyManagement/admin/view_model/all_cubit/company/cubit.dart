import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/company/all_company.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/company/states.dart';
import 'package:pharmacy_system/utils/core/server/dio_server.dart';

class CompanyCubit extends Cubit<CompanyStates> {
  CompanyCubit() : super(CompanyInitialState());

  static CompanyCubit get(context) => BlocProvider.of(context);

  List<AllCompanyModel> allCompany = [];

  void getAllCompany() async {
    allCompany = [];
    emit(CompanyLoadingState());
    try {
      var response = await DioServer.getData(url: "");
      response.data[''].forEach((elements) {
        allCompany.add(AllCompanyModel.fromJson(elements));
        emit(CompanySuccessState());
      });
    } on DioException catch (e) {
      if (e.response!.statusCode == 400) {
      } else if (e.response!.statusCode == 401) {}
      emit(CompanyErrorState(error: e.response!.statusMessage.toString()));
    }
  }

  void deleteCompany({
    required int id ,
}) async {
    final Response response = await DioServer.postData(
      url: "",
      data: {
        "id" : id,
      },
    );
  }

  void updateCompany() {}
}
