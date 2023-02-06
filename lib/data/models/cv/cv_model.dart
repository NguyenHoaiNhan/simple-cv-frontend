class CVModel {
  const CVModel({
    this.cvId,
    this.createDate,
    this.accountId,
    this.cvUrl,
  });

  final String? cvId;
  final DateTime? createDate;
  final String? cvUrl;
  final String? accountId;

  factory CVModel.fromJson(Map<String, dynamic> data) {
    return CVModel(
      accountId: data['accountId'],
      createDate: data['createDate'],
      cvId: data['cvId'],
      cvUrl: data['cvUrl'],
    );
  }

  CVModel copyWith({
    String? id,
    DateTime? creDate,
    String? url,
    String? accId,
  }) {
    return CVModel(
      cvId: id ?? cvId,
      accountId: accId ?? accountId,
      createDate: creDate ?? createDate,
      cvUrl: url ?? cvUrl,
    );
  }
}
