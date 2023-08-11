import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/company/all_company.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/company/all_midicine.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/model/company/profile_company.dart';
import 'package:pharmacy_system/pharmacyManagement/admin/view_model/all_cubit/company/states.dart';
import 'package:pharmacy_system/utils/core/constance/api_constance.dart';
import 'package:pharmacy_system/utils/core/constance/token.dart';
import 'package:pharmacy_system/utils/core/server/dio_server.dart';
import 'package:pharmacy_system/utils/fucntion/toast.dart';

class CompanyCubit extends Cubit<CompanyStates> {
  CompanyCubit() : super(CompanyInitialState());

  static CompanyCubit get(context) => BlocProvider.of(context);

  List<AllCompanyModel> allCompany = [];

  void getAllCompany() {
    emit(CompanyLoadingState());
    DioServer.getData(url: ApiConstance.allCompany , token: tokenData)
        .then(
          (value) {
            allCompany = [];
            value.data['companies'].forEach((element){
              allCompany.add(AllCompanyModel.fromJson(element));
              emit(CompanySuccessState());
            });
          },
        )
        .catchError(
          (error) {
            emit(CompanyErrorState(error: error));
          },
        );
  }


   List <AllMedicineCompanyModel> allMedicineCompany = [];


  void getAllMedicineInCompany(){
    emit(CompanyLoadingState());
    DioServer.getData(url: ApiConstance.allMedicineCompany , token: tokenData)
        .then(
          (value) {
        value.data['products'].forEach((element){
          allMedicineCompany.add(AllMedicineCompanyModel.fromJson(element));
          emit(CompanySuccessState());
        });
      },
    )
        .catchError(
          (error) {
        print(error.toString());
        emit(CompanyErrorState(error: error));
      },
    );
  }

  void deleteCompany({
    required int id,
    context
  }) async {
    emit(CompanyDeleteLoadingState());
    final Response response = await DioServer.deleteData(
      url: ApiConstance.deleteCompany,
      token: tokenData,
      data: {
        "companyId": id,
      },
    );
    if(response.statusCode == 200){
      messageSnackBar(context: context, text: response.data['message'], state: ToastState.Success);
      emit(CompanyDeleteSuccessState());
    }
  }


  void updateCompany({
    required String name,
    required String email,
    required String phone,
    required String type,
    required String address,
    required String updateCompanyId ,
  }) async {
    emit(CompanyUpdateLoadingState());
    final response = await DioServer.putData(
      url: ApiConstance.updateCompany,
      token: tokenData,
      data: {
        "name": name,
        "email": email,
        "phone_number": phone,
        "location": address,
        "updateCompanyId": updateCompanyId ,
        "type": type
      },
    );
    print(response.data);
    emit(CompanyUpdateSuccessState());
  }


  void searchCompany({
    required String text
  })async {
    try{
      Response response = await DioServer.postData(
        url: ApiConstance.searchCompany,
        token: tokenData,
        data: {"name": text},
      );
    } on DioException catch(e){}
  }

}
