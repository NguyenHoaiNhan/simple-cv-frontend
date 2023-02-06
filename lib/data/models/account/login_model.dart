class LoginModel {
  const LoginModel({
    this.accountName,
    this.accountPwd,
    this.token,
  });

  final String? accountName;
  final String? accountPwd;
  final String? token;

  Map<String, dynamic> toJson() {
    return {
      'accountName': accountName,
      'accountPwd': accountPwd,
      'token': token,
    };
  }
}
