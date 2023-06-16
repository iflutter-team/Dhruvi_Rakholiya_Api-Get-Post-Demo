import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(
      json.decode(str).map(
            (x) => User.fromJson(x),
          ),
    );

String userToJson(List<User> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class User {
  String? id;
  String? name;
  String? mobile;
  String? email;
  String? password;

  User({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.password,
  });

  factory User.fromJson(Map json) => User(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "email": email,
        "password": password,
      };
}
