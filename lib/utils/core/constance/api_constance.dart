class ApiConstance {

 static  String baseUrl = "http://192.168.202.254:7000/api";
 // ____________________________________ Auth
 static  String loginUrl = '$baseUrl/auth/login';
 static  String verifyUrl = '$baseUrl/auth/verify-login';
 static  String registerUrl = "$baseUrl/auth/register";
 static  String resetPasswordUrl = "$baseUrl/auth/reset-password";

 // _____________________________________ Company

  static String allCompany = "$baseUrl/company/display-all";

  static String allMedicineCompany = "$baseUrl/company/products/display-all";

  static String profileCompany = "$baseUrl/profile";

  static String updateCompany = "$baseUrl/company/update-company";

  static String deleteCompany = "$baseUrl/company/delete-company";

 // _____________________________________ Employee

 static String allEemployee = "$baseUrl/employee/display-all";

 static String addEmployee = "$baseUrl/employee/add-employee";

 static String updateEmployee = "$baseUrl/employee/update-employee";

 // ______________________________________ Laboratory

 static String allLaboratory = "$baseUrl/laboratory/display-all";

 static String addLaboratory = "$baseUrl/laboratory/add-laboratory";

 static String updateLaboratory = "$baseUrl/laboratory/update-laboratory";

 static String deleteLaboratory = "$baseUrl/laboratory/delete-laboratory";
}
