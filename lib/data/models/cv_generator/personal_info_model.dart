class PersonalInfoModel {
  PersonalInfoModel({
    this.cvId,
    this.sectionTitle = 'Personal Information',
    this.givenName,
    this.familyName,
    this.email,
    this.headLine,
    this.phoneNumber,
    this.address,
    this.postCode,
    this.city,
    this.dateOfBirth,
    this.placeOfBirth,
    this.driverLicense,
    this.gender,
    this.githubLink,
    this.linkedLink,
    this.avatar,
    this.civilStatus,
    this.country,
  });

  final int? cvId;
  final String? sectionTitle;
  final String? givenName;
  final String? familyName;
  final String? email;
  final String? headLine;
  final String? phoneNumber;
  final String? address;
  final String? postCode;
  final String? city;
  final DateTime? dateOfBirth;
  final String? placeOfBirth;
  final String? driverLicense;
  final int? gender;
  final String? githubLink;
  final String? linkedLink;
  final String? avatar;
  final String? civilStatus;
  final String? country;
}
