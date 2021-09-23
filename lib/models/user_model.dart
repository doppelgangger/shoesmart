class UserModel {
  int id;
  String email;
  String username;
  String token;

  UserModel({
    this.id,
    this.email,
    this.username,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    token = json['retureSecureToken'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'retureSecureToken': token,
    };
  }
}
