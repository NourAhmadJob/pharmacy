import 'package:pharmacy_system/pharmacyManagement/admin/model/company/profile_company.dart';

abstract class CompanyStates {}

class CompanyInitialState extends CompanyStates {}

// _______________________________________ get All Company
class CompanyLoadingState extends CompanyStates {}

class CompanySuccessState extends CompanyStates {}

class CompanyErrorState extends CompanyStates {
  final String error;

  CompanyErrorState({required this.error});
}

//....................................... profile company
class ProfileCompanyLoadingState extends CompanyStates {}

class ProfileCompanySuccessState extends CompanyStates {
  final ProfileCompanyModel profileCompanyModel;

  ProfileCompanySuccessState({
    required this.profileCompanyModel,
  });
}

class ProfileCompanyErrorState extends CompanyStates {
  final String error;

  ProfileCompanyErrorState({required this.error});
}
//______________________________________ deleteCompany

class CompanyDeleteLoadingState extends CompanyStates {}

class CompanyDeleteSuccessState extends CompanyStates {}

class CompanyDeleteErrorState extends CompanyStates {
  final String error;

  CompanyDeleteErrorState({required this.error});
}

// ______________________________________updateCompany

class CompanyUpdateLoadingState extends CompanyStates {}

class CompanyUpdateSuccessState extends CompanyStates {}

class CompanyUpdateErrorState extends CompanyStates {
  final String error;

  CompanyUpdateErrorState({required this.error});
}
