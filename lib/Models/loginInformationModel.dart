class loginInformationModel {
  final String username;
  final String password;

  loginInformationModel({required this.username, required this.password});
  factory loginInformationModel.fromjson(json) {
    return loginInformationModel(
        username: json['username'], password: json['password']);
  }
}
