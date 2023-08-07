class AllMedicineCompanyModel {
  final int id;
  final int barcode;
  final String name;
  final String dosage;
  final String description;
  final String image;
  final CategoryOneProduct categoryOneProduct;
  final String manufactorerName;
  final TypeOneProduct typeOneProduct;

  final CompaniesOneProduct companiesOneProduct;
  //final CompanyProductItems2 companyProductItems;

  AllMedicineCompanyModel({
    required this.id,
    required this.barcode,
    required this.name,
    required this.dosage,
    required this.manufactorerName,
    required this.description,
    required this.image,
    required this.categoryOneProduct,
    required this.typeOneProduct,
    required this.companiesOneProduct,
    //required this.companyProductItems
  });

  factory AllMedicineCompanyModel.fromJson(Map<String, dynamic> json) {
    return AllMedicineCompanyModel(
      id: json['id'],
      barcode: json['barcode'],
      name: json['name'],
      dosage: json['dosage'],
      description: json['description'],
      image: json['image_url'],
      manufactorerName: json['manufactorer_name'],
      categoryOneProduct: CategoryOneProduct.fromJson(json['category']),
      typeOneProduct: TypeOneProduct.fromJson(json['type']),
      companiesOneProduct: CompaniesOneProduct.fromJson(json['scince']),
      // companyProductItems: CompanyProductItems.fromJson(
      //
      // ),
    );
  }
}

class CategoryOneProduct {
  final String name;

  CategoryOneProduct({required this.name});

  factory CategoryOneProduct.fromJson(Map<String, dynamic> json) {
    return CategoryOneProduct(name: json['name']);
  }
}

class TypeOneProduct {
  final String name;

  TypeOneProduct({required this.name});

  factory TypeOneProduct.fromJson(Map<String, dynamic> json) {
    return TypeOneProduct(name: json['name']);
  }
}

class CompaniesOneProduct {
  final String name;

  CompaniesOneProduct({required this.name});

  factory CompaniesOneProduct.fromJson(Map<String, dynamic> json) {
    return CompaniesOneProduct(name: json['name']);
  }
}
class CompanyProductItems2 {
  final List<CompanyProductItems> list = [];

   CompanyProductItems2.fromJson(Map<String , dynamic>json){
     json['companies'].forEach((element){
       list.add(CompanyProductItems.fromJson(element));
     });
   }
}
class CompanyProductItems {

  final int id;
  final int price;
  final String expirationDate;

  CompanyProductItems({
    required this.id,
    required this.price,
    required this.expirationDate,
  });

  factory CompanyProductItems.fromJson(Map<String, dynamic> json) {
    return CompanyProductItems(
      id: json['id'],
      price: json['price'],
      expirationDate: json['expiration_date'],
    );
  }
}
