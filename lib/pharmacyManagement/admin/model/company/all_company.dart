class AllCompanyModel {
  final String name;

  final String description;

  final int id;

  final String email;
  final String phone;

  AllCompanyModel({
    required this.name,
    required this.description,
    required this.id,
    required this.email,
    required this.phone,
  });

  factory AllCompanyModel.fromJson(Map<String, dynamic> json) {
    return AllCompanyModel(
      name: json['name'],
      description: json['des'],
      id: json['id'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}
