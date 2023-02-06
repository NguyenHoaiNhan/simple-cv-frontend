class AccountModel {
  const AccountModel({
    this.accountId,
    this.accountPwd,
    this.accountName,
    this.phoneNumber,
    this.email,
  });

  final String? accountId;
  final String? accountPwd;
  final String? accountName;
  final String? phoneNumber;
  final String? email;

  AccountModel copyWith({
    String? id,
    String? pwd,
    String? name,
    String? phone,
    String? mail,
  }) {
    return AccountModel(
      accountId: id ?? accountId,
      accountPwd: pwd ?? accountPwd,
      accountName: name ?? accountName,
      phoneNumber: phone ?? phoneNumber,
      email: mail ?? email,
    );
  }
}
