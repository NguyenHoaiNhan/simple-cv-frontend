import 'package:equatable/equatable.dart';

class PersonalDetailsState extends Equatable {
  final String? photo;
  final String? givenName;
  final String? familyName;
  final String? email;
  final String? headline;
  final String? phonenum;
  final String? address;
  final String? postCode;
  final String? city;
  final String? birthday;
  final String? placeOfBirth;
  final String? driverLicense;
  final int? gender;
  final String? nationality;
  final int? civilStatus;
  final String? website;
  final String? linkedIn;
  List<dynamic>? listCustomerField;

  PersonalDetailsState({
    this.photo =
        'https://pbs.twimg.com/profile_images/378800000672688190/11b83214d31bbb05e7e8e19a3ea4aa6a_400x400.jpeg',
    this.givenName = '',
    this.familyName = '',
    this.email = '',
    this.headline = '',
    this.phonenum = '',
    this.address = '',
    this.postCode = '',
    this.city = '',
    this.birthday = '',
    this.placeOfBirth = '',
    this.driverLicense = '',
    this.gender = 0,
    this.nationality = '',
    this.civilStatus = 0,
    this.website = '',
    this.linkedIn = '',
    this.listCustomerField = const [],
  });

  PersonalDetailsState copyWith({
    final String? photo,
    final String? givenName,
    final String? familyName,
    final String? email,
    final String? headline,
    final String? phonenum,
    final String? address,
    final String? postCode,
    final String? city,
    final String? birthday,
    final String? placeOfBirth,
    final String? driverLicense,
    final int? gender,
    final String? nationality,
    final int? civilStatus,
    final String? website,
    final String? linkedIn,
    List<dynamic>? listCustomerField,
  }) {
    return PersonalDetailsState(
      address: address ?? this.address,
      birthday: birthday ?? this.birthday,
      city: city ?? this.city,
      civilStatus: civilStatus ?? this.civilStatus,
      driverLicense: driverLicense ?? this.driverLicense,
      email: email ?? this.email,
      familyName: familyName ?? this.familyName,
      gender: gender ?? this.gender,
      givenName: givenName ?? this.givenName,
      headline: headline ?? this.headline,
      linkedIn: linkedIn ?? this.linkedIn,
      listCustomerField: listCustomerField ?? this.listCustomerField,
      nationality: nationality ?? this.nationality,
      phonenum: phonenum ?? this.phonenum,
      photo: photo ?? this.photo,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      postCode: postCode ?? this.postCode,
      website: website ?? this.website,
    );
  }

  @override
  List<Object?> get props => [
        photo,
        givenName,
        familyName,
        email,
        headline,
        phonenum,
        address,
        postCode,
        city,
        birthday,
        placeOfBirth,
        driverLicense,
        gender,
        nationality,
        civilStatus,
        website,
        linkedIn,
        listCustomerField,
      ];
}
