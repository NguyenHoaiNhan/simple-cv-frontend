class CV {
  const CV({
    required this.cvId,
    required this.createDate,
    required this.accountId,
    this.cvUrl,
  });

  final int cvId;
  final DateTime createDate;
  final String? cvUrl;
  final int accountId;

  CV copyWith({
    int? id,
    DateTime? creDate,
    String? url,
    int? accId,
  }) {
    return CV(
      cvId: id ?? cvId,
      accountId: accId ?? accountId,
      createDate: creDate ?? createDate,
      cvUrl: url ?? cvUrl,
    );
  }
}
