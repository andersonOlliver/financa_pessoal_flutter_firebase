class UserModel {
  final String? username;
  final String email;
  final String? userId;

  UserModel({this.username, required this.email, this.userId});

  factory UserModel.create({
    required String userId,
    required String email,
    String? username,
  }) =>
      UserModel(
        username: username,
        email: email,
        userId: userId,
      );

  bool get isEmpty => email.isEmpty;
  bool get isNotEmpty => !isEmpty;

  toJson() => {'username': username, 'email': email, 'userId': userId};

  static UserModel empty() => UserModel(email: '', username: '');
}
