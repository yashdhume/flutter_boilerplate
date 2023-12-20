// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'api.enums.swagger.dart' as enums;
export 'api.enums.swagger.dart';

part 'api.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class ValidationException {
  const ValidationException();

  factory ValidationException.fromJson(Map<String, dynamic> json) =>
      _$ValidationExceptionFromJson(json);

  static const toJsonFactory = _$ValidationExceptionToJson;
  Map<String, dynamic> toJson() => _$ValidationExceptionToJson(this);

  static const fromJsonFactory = _$ValidationExceptionFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class TypeOrmExceptionFilter {
  const TypeOrmExceptionFilter();

  factory TypeOrmExceptionFilter.fromJson(Map<String, dynamic> json) =>
      _$TypeOrmExceptionFilterFromJson(json);

  static const toJsonFactory = _$TypeOrmExceptionFilterToJson;
  Map<String, dynamic> toJson() => _$TypeOrmExceptionFilterToJson(this);

  static const fromJsonFactory = _$TypeOrmExceptionFilterFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class CreateAddressDTO {
  const CreateAddressDTO({
    required this.street,
    this.houseNumber,
    required this.city,
    this.district,
    required this.province,
    required this.country,
    this.postalCode,
  });

  factory CreateAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressDTOFromJson(json);

  static const toJsonFactory = _$CreateAddressDTOToJson;
  Map<String, dynamic> toJson() => _$CreateAddressDTOToJson(this);

  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'houseNumber')
  final String? houseNumber;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'province')
  final String province;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  static const fromJsonFactory = _$CreateAddressDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateAddressDTO &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.houseNumber, houseNumber)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(postalCode) ^
      runtimeType.hashCode;
}

extension $CreateAddressDTOExtension on CreateAddressDTO {
  CreateAddressDTO copyWith(
      {String? street,
      String? houseNumber,
      String? city,
      String? district,
      String? province,
      String? country,
      String? postalCode}) {
    return CreateAddressDTO(
        street: street ?? this.street,
        houseNumber: houseNumber ?? this.houseNumber,
        city: city ?? this.city,
        district: district ?? this.district,
        province: province ?? this.province,
        country: country ?? this.country,
        postalCode: postalCode ?? this.postalCode);
  }

  CreateAddressDTO copyWithWrapped(
      {Wrapped<String>? street,
      Wrapped<String?>? houseNumber,
      Wrapped<String>? city,
      Wrapped<String?>? district,
      Wrapped<String>? province,
      Wrapped<String>? country,
      Wrapped<String?>? postalCode}) {
    return CreateAddressDTO(
        street: (street != null ? street.value : this.street),
        houseNumber:
            (houseNumber != null ? houseNumber.value : this.houseNumber),
        city: (city != null ? city.value : this.city),
        district: (district != null ? district.value : this.district),
        province: (province != null ? province.value : this.province),
        country: (country != null ? country.value : this.country),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateUserDto {
  const CreateUserDto({
    required this.firebaseUID,
    required this.name,
    required this.email,
    required this.dateOfBirth,
    required this.gender,
    required this.address,
  });

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  static const toJsonFactory = _$CreateUserDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserDtoToJson(this);

  @JsonKey(name: 'firebaseUID')
  final String firebaseUID;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'dateOfBirth')
  final DateTime dateOfBirth;
  @JsonKey(
    name: 'gender',
    toJson: createUserDtoGenderToJson,
    fromJson: createUserDtoGenderFromJson,
  )
  final enums.CreateUserDtoGender gender;
  @JsonKey(name: 'address', defaultValue: <CreateAddressDTO>[])
  final List<CreateAddressDTO> address;
  static const fromJsonFactory = _$CreateUserDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUserDto &&
            (identical(other.firebaseUID, firebaseUID) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUID, firebaseUID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firebaseUID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(address) ^
      runtimeType.hashCode;
}

extension $CreateUserDtoExtension on CreateUserDto {
  CreateUserDto copyWith(
      {String? firebaseUID,
      String? name,
      String? email,
      DateTime? dateOfBirth,
      enums.CreateUserDtoGender? gender,
      List<CreateAddressDTO>? address}) {
    return CreateUserDto(
        firebaseUID: firebaseUID ?? this.firebaseUID,
        name: name ?? this.name,
        email: email ?? this.email,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        address: address ?? this.address);
  }

  CreateUserDto copyWithWrapped(
      {Wrapped<String>? firebaseUID,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<DateTime>? dateOfBirth,
      Wrapped<enums.CreateUserDtoGender>? gender,
      Wrapped<List<CreateAddressDTO>>? address}) {
    return CreateUserDto(
        firebaseUID:
            (firebaseUID != null ? firebaseUID.value : this.firebaseUID),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        gender: (gender != null ? gender.value : this.gender),
        address: (address != null ? address.value : this.address));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressEntity {
  const AddressEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.city,
    this.district,
    required this.province,
    required this.country,
    this.postalCode,
    required this.version,
    this.deletedAt,
  });

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);

  static const toJsonFactory = _$AddressEntityToJson;
  Map<String, dynamic> toJson() => _$AddressEntityToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'province')
  final String province;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'version')
  final double version;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$AddressEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $AddressEntityExtension on AddressEntity {
  AddressEntity copyWith(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? city,
      String? district,
      String? province,
      String? country,
      String? postalCode,
      double? version,
      DateTime? deletedAt}) {
    return AddressEntity(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        city: city ?? this.city,
        district: district ?? this.district,
        province: province ?? this.province,
        country: country ?? this.country,
        postalCode: postalCode ?? this.postalCode,
        version: version ?? this.version,
        deletedAt: deletedAt ?? this.deletedAt);
  }

  AddressEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt,
      Wrapped<String>? city,
      Wrapped<String?>? district,
      Wrapped<String>? province,
      Wrapped<String>? country,
      Wrapped<String?>? postalCode,
      Wrapped<double>? version,
      Wrapped<DateTime?>? deletedAt}) {
    return AddressEntity(
        id: (id != null ? id.value : this.id),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        city: (city != null ? city.value : this.city),
        district: (district != null ? district.value : this.district),
        province: (province != null ? province.value : this.province),
        country: (country != null ? country.value : this.country),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        version: (version != null ? version.value : this.version),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UserEntity {
  const UserEntity({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.firebaseUID,
    required this.name,
    required this.email,
    required this.role,
    required this.dateOfBirth,
    required this.gender,
    required this.address,
    required this.version,
    this.deletedAt,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  static const toJsonFactory = _$UserEntityToJson;
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime updatedAt;
  @JsonKey(name: 'firebaseUID')
  final String firebaseUID;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'role')
  final double role;
  @JsonKey(name: 'dateOfBirth')
  final DateTime dateOfBirth;
  @JsonKey(
    name: 'gender',
    toJson: userEntityGenderToJson,
    fromJson: userEntityGenderFromJson,
  )
  final enums.UserEntityGender gender;
  @JsonKey(name: 'address', defaultValue: <AddressEntity>[])
  final List<AddressEntity> address;
  @JsonKey(name: 'version')
  final double version;
  @JsonKey(name: 'deletedAt')
  final DateTime? deletedAt;
  static const fromJsonFactory = _$UserEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.firebaseUID, firebaseUID) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseUID, firebaseUID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(firebaseUID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      runtimeType.hashCode;
}

extension $UserEntityExtension on UserEntity {
  UserEntity copyWith(
      {String? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? firebaseUID,
      String? name,
      String? email,
      double? role,
      DateTime? dateOfBirth,
      enums.UserEntityGender? gender,
      List<AddressEntity>? address,
      double? version,
      DateTime? deletedAt}) {
    return UserEntity(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        firebaseUID: firebaseUID ?? this.firebaseUID,
        name: name ?? this.name,
        email: email ?? this.email,
        role: role ?? this.role,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        address: address ?? this.address,
        version: version ?? this.version,
        deletedAt: deletedAt ?? this.deletedAt);
  }

  UserEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? createdAt,
      Wrapped<DateTime>? updatedAt,
      Wrapped<String>? firebaseUID,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<double>? role,
      Wrapped<DateTime>? dateOfBirth,
      Wrapped<enums.UserEntityGender>? gender,
      Wrapped<List<AddressEntity>>? address,
      Wrapped<double>? version,
      Wrapped<DateTime?>? deletedAt}) {
    return UserEntity(
        id: (id != null ? id.value : this.id),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        firebaseUID:
            (firebaseUID != null ? firebaseUID.value : this.firebaseUID),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        role: (role != null ? role.value : this.role),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        gender: (gender != null ? gender.value : this.gender),
        address: (address != null ? address.value : this.address),
        version: (version != null ? version.value : this.version),
        deletedAt: (deletedAt != null ? deletedAt.value : this.deletedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class UserNotFoundException {
  const UserNotFoundException();

  factory UserNotFoundException.fromJson(Map<String, dynamic> json) =>
      _$UserNotFoundExceptionFromJson(json);

  static const toJsonFactory = _$UserNotFoundExceptionToJson;
  Map<String, dynamic> toJson() => _$UserNotFoundExceptionToJson(this);

  static const fromJsonFactory = _$UserNotFoundExceptionFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class UpdateAddressDTO {
  const UpdateAddressDTO({
    required this.street,
    this.houseNumber,
    this.city,
    this.district,
    this.province,
    this.country,
    this.postalCode,
  });

  factory UpdateAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$UpdateAddressDTOFromJson(json);

  static const toJsonFactory = _$UpdateAddressDTOToJson;
  Map<String, dynamic> toJson() => _$UpdateAddressDTOToJson(this);

  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'houseNumber')
  final String? houseNumber;
  @JsonKey(name: 'city')
  final String? city;
  @JsonKey(name: 'district')
  final String? district;
  @JsonKey(name: 'province')
  final String? province;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  static const fromJsonFactory = _$UpdateAddressDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAddressDTO &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.houseNumber, houseNumber)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(houseNumber) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(postalCode) ^
      runtimeType.hashCode;
}

extension $UpdateAddressDTOExtension on UpdateAddressDTO {
  UpdateAddressDTO copyWith(
      {String? street,
      String? houseNumber,
      String? city,
      String? district,
      String? province,
      String? country,
      String? postalCode}) {
    return UpdateAddressDTO(
        street: street ?? this.street,
        houseNumber: houseNumber ?? this.houseNumber,
        city: city ?? this.city,
        district: district ?? this.district,
        province: province ?? this.province,
        country: country ?? this.country,
        postalCode: postalCode ?? this.postalCode);
  }

  UpdateAddressDTO copyWithWrapped(
      {Wrapped<String>? street,
      Wrapped<String?>? houseNumber,
      Wrapped<String?>? city,
      Wrapped<String?>? district,
      Wrapped<String?>? province,
      Wrapped<String?>? country,
      Wrapped<String?>? postalCode}) {
    return UpdateAddressDTO(
        street: (street != null ? street.value : this.street),
        houseNumber:
            (houseNumber != null ? houseNumber.value : this.houseNumber),
        city: (city != null ? city.value : this.city),
        district: (district != null ? district.value : this.district),
        province: (province != null ? province.value : this.province),
        country: (country != null ? country.value : this.country),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

String? createUserDtoGenderNullableToJson(
    enums.CreateUserDtoGender? createUserDtoGender) {
  return createUserDtoGender?.value;
}

String? createUserDtoGenderToJson(
    enums.CreateUserDtoGender createUserDtoGender) {
  return createUserDtoGender.value;
}

enums.CreateUserDtoGender createUserDtoGenderFromJson(
  Object? createUserDtoGender, [
  enums.CreateUserDtoGender? defaultValue,
]) {
  return enums.CreateUserDtoGender.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          createUserDtoGender?.toString().toLowerCase()) ??
      defaultValue ??
      enums.CreateUserDtoGender.swaggerGeneratedUnknown;
}

enums.CreateUserDtoGender? createUserDtoGenderNullableFromJson(
  Object? createUserDtoGender, [
  enums.CreateUserDtoGender? defaultValue,
]) {
  if (createUserDtoGender == null) {
    return null;
  }
  return enums.CreateUserDtoGender.values
          .firstWhereOrNull((e) => e.value == createUserDtoGender) ??
      defaultValue;
}

String createUserDtoGenderExplodedListToJson(
    List<enums.CreateUserDtoGender>? createUserDtoGender) {
  return createUserDtoGender?.map((e) => e.value!).join(',') ?? '';
}

List<String> createUserDtoGenderListToJson(
    List<enums.CreateUserDtoGender>? createUserDtoGender) {
  if (createUserDtoGender == null) {
    return [];
  }

  return createUserDtoGender.map((e) => e.value!).toList();
}

List<enums.CreateUserDtoGender> createUserDtoGenderListFromJson(
  List? createUserDtoGender, [
  List<enums.CreateUserDtoGender>? defaultValue,
]) {
  if (createUserDtoGender == null) {
    return defaultValue ?? [];
  }

  return createUserDtoGender
      .map((e) => createUserDtoGenderFromJson(e.toString()))
      .toList();
}

List<enums.CreateUserDtoGender>? createUserDtoGenderNullableListFromJson(
  List? createUserDtoGender, [
  List<enums.CreateUserDtoGender>? defaultValue,
]) {
  if (createUserDtoGender == null) {
    return defaultValue;
  }

  return createUserDtoGender
      .map((e) => createUserDtoGenderFromJson(e.toString()))
      .toList();
}

String? userEntityGenderNullableToJson(
    enums.UserEntityGender? userEntityGender) {
  return userEntityGender?.value;
}

String? userEntityGenderToJson(enums.UserEntityGender userEntityGender) {
  return userEntityGender.value;
}

enums.UserEntityGender userEntityGenderFromJson(
  Object? userEntityGender, [
  enums.UserEntityGender? defaultValue,
]) {
  return enums.UserEntityGender.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          userEntityGender?.toString().toLowerCase()) ??
      defaultValue ??
      enums.UserEntityGender.swaggerGeneratedUnknown;
}

enums.UserEntityGender? userEntityGenderNullableFromJson(
  Object? userEntityGender, [
  enums.UserEntityGender? defaultValue,
]) {
  if (userEntityGender == null) {
    return null;
  }
  return enums.UserEntityGender.values
          .firstWhereOrNull((e) => e.value == userEntityGender) ??
      defaultValue;
}

String userEntityGenderExplodedListToJson(
    List<enums.UserEntityGender>? userEntityGender) {
  return userEntityGender?.map((e) => e.value!).join(',') ?? '';
}

List<String> userEntityGenderListToJson(
    List<enums.UserEntityGender>? userEntityGender) {
  if (userEntityGender == null) {
    return [];
  }

  return userEntityGender.map((e) => e.value!).toList();
}

List<enums.UserEntityGender> userEntityGenderListFromJson(
  List? userEntityGender, [
  List<enums.UserEntityGender>? defaultValue,
]) {
  if (userEntityGender == null) {
    return defaultValue ?? [];
  }

  return userEntityGender
      .map((e) => userEntityGenderFromJson(e.toString()))
      .toList();
}

List<enums.UserEntityGender>? userEntityGenderNullableListFromJson(
  List? userEntityGender, [
  List<enums.UserEntityGender>? defaultValue,
]) {
  if (userEntityGender == null) {
    return defaultValue;
  }

  return userEntityGender
      .map((e) => userEntityGenderFromJson(e.toString()))
      .toList();
}

String? userGetOrderNullableToJson(enums.UserGetOrder? userGetOrder) {
  return userGetOrder?.value;
}

String? userGetOrderToJson(enums.UserGetOrder userGetOrder) {
  return userGetOrder.value;
}

enums.UserGetOrder userGetOrderFromJson(
  Object? userGetOrder, [
  enums.UserGetOrder? defaultValue,
]) {
  return enums.UserGetOrder.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          userGetOrder?.toString().toLowerCase()) ??
      defaultValue ??
      enums.UserGetOrder.swaggerGeneratedUnknown;
}

enums.UserGetOrder? userGetOrderNullableFromJson(
  Object? userGetOrder, [
  enums.UserGetOrder? defaultValue,
]) {
  if (userGetOrder == null) {
    return null;
  }
  return enums.UserGetOrder.values
          .firstWhereOrNull((e) => e.value == userGetOrder) ??
      defaultValue;
}

String userGetOrderExplodedListToJson(List<enums.UserGetOrder>? userGetOrder) {
  return userGetOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> userGetOrderListToJson(List<enums.UserGetOrder>? userGetOrder) {
  if (userGetOrder == null) {
    return [];
  }

  return userGetOrder.map((e) => e.value!).toList();
}

List<enums.UserGetOrder> userGetOrderListFromJson(
  List? userGetOrder, [
  List<enums.UserGetOrder>? defaultValue,
]) {
  if (userGetOrder == null) {
    return defaultValue ?? [];
  }

  return userGetOrder.map((e) => userGetOrderFromJson(e.toString())).toList();
}

List<enums.UserGetOrder>? userGetOrderNullableListFromJson(
  List? userGetOrder, [
  List<enums.UserGetOrder>? defaultValue,
]) {
  if (userGetOrder == null) {
    return defaultValue;
  }

  return userGetOrder.map((e) => userGetOrderFromJson(e.toString())).toList();
}

String? addressGetOrderNullableToJson(enums.AddressGetOrder? addressGetOrder) {
  return addressGetOrder?.value;
}

String? addressGetOrderToJson(enums.AddressGetOrder addressGetOrder) {
  return addressGetOrder.value;
}

enums.AddressGetOrder addressGetOrderFromJson(
  Object? addressGetOrder, [
  enums.AddressGetOrder? defaultValue,
]) {
  return enums.AddressGetOrder.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          addressGetOrder?.toString().toLowerCase()) ??
      defaultValue ??
      enums.AddressGetOrder.swaggerGeneratedUnknown;
}

enums.AddressGetOrder? addressGetOrderNullableFromJson(
  Object? addressGetOrder, [
  enums.AddressGetOrder? defaultValue,
]) {
  if (addressGetOrder == null) {
    return null;
  }
  return enums.AddressGetOrder.values
          .firstWhereOrNull((e) => e.value == addressGetOrder) ??
      defaultValue;
}

String addressGetOrderExplodedListToJson(
    List<enums.AddressGetOrder>? addressGetOrder) {
  return addressGetOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> addressGetOrderListToJson(
    List<enums.AddressGetOrder>? addressGetOrder) {
  if (addressGetOrder == null) {
    return [];
  }

  return addressGetOrder.map((e) => e.value!).toList();
}

List<enums.AddressGetOrder> addressGetOrderListFromJson(
  List? addressGetOrder, [
  List<enums.AddressGetOrder>? defaultValue,
]) {
  if (addressGetOrder == null) {
    return defaultValue ?? [];
  }

  return addressGetOrder
      .map((e) => addressGetOrderFromJson(e.toString()))
      .toList();
}

List<enums.AddressGetOrder>? addressGetOrderNullableListFromJson(
  List? addressGetOrder, [
  List<enums.AddressGetOrder>? defaultValue,
]) {
  if (addressGetOrder == null) {
    return defaultValue;
  }

  return addressGetOrder
      .map((e) => addressGetOrderFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
