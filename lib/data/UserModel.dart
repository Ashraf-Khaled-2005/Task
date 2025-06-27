class UserModel {
  final String name;
  final String email;
  final String genger;
  String image;
  final String date;
  final int id;
  final String phone;

  UserModel(
      {required this.name,
      required this.email,
      required this.genger,
      required this.image,
      required this.date,
      required this.id,
      required this.phone});

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      name: data['Name'] ?? '',
      email: data['email'] ?? '',
      genger: data['gender'] ?? '',
      image: data['image'] ?? '',
      date: (data['date']),
      id: data['id'] ?? 0,
      phone: data['mobile'] ?? '',
    );
  }
}
