class Account {
  const Account({
    required this.accountId,
    required this.accountPwd,
    required this.accountName,
    required this.phoneNumber,
    required this.email,
  });

  final int accountId;
  final String accountPwd;
  final String accountName;
  final String phoneNumber;
  final String email;

  Account copyWith({
    int? id,
    String? pwd,
    String? name,
    String? phone,
    String? mail,
  }) {
    return Account(
      accountId: id ?? accountId,
      accountPwd: pwd ?? accountPwd,
      accountName: name ?? accountName,
      phoneNumber: phone ?? phoneNumber,
      email: mail ?? email,
    );
  }
}
