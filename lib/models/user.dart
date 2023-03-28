class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Mila Nurhayati",
      username: "Milae ",
      email: "2006044@itg.ac.id",
      profilePhoto:
          "https://i.postimg.cc/25tT4T2r/2023-0101-00281100.jpg",
      phoneNumber: "083827431959",
    );
  }
}