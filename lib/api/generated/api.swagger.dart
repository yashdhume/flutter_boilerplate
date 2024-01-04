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

  @JsonKey(name: 'street', includeIfNull: false)
  final String street;
  @JsonKey(name: 'houseNumber', includeIfNull: false)
  final String? houseNumber;
  @JsonKey(name: 'city', includeIfNull: false)
  final String city;
  @JsonKey(name: 'district', includeIfNull: false)
  final String? district;
  @JsonKey(name: 'province', includeIfNull: false)
  final String province;
  @JsonKey(name: 'country', includeIfNull: false)
  final String country;
  @JsonKey(name: 'postalCode', includeIfNull: false)
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
class CreateUserDeviceDto {
  const CreateUserDeviceDto({
    required this.os,
    required this.model,
    required this.deviceId,
    required this.fcmToken,
  });

  factory CreateUserDeviceDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDeviceDtoFromJson(json);

  static const toJsonFactory = _$CreateUserDeviceDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserDeviceDtoToJson(this);

  @JsonKey(
    name: 'os',
    includeIfNull: false,
    toJson: createUserDeviceDtoOsToJson,
    fromJson: createUserDeviceDtoOsFromJson,
  )
  final enums.CreateUserDeviceDtoOs os;
  @JsonKey(name: 'model', includeIfNull: false)
  final String model;
  @JsonKey(name: 'deviceId', includeIfNull: false)
  final String deviceId;
  @JsonKey(name: 'fcmToken', includeIfNull: false)
  final String fcmToken;
  static const fromJsonFactory = _$CreateUserDeviceDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUserDeviceDto &&
            (identical(other.os, os) ||
                const DeepCollectionEquality().equals(other.os, os)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.fcmToken, fcmToken) ||
                const DeepCollectionEquality()
                    .equals(other.fcmToken, fcmToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(os) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      runtimeType.hashCode;
}

extension $CreateUserDeviceDtoExtension on CreateUserDeviceDto {
  CreateUserDeviceDto copyWith(
      {enums.CreateUserDeviceDtoOs? os,
      String? model,
      String? deviceId,
      String? fcmToken}) {
    return CreateUserDeviceDto(
        os: os ?? this.os,
        model: model ?? this.model,
        deviceId: deviceId ?? this.deviceId,
        fcmToken: fcmToken ?? this.fcmToken);
  }

  CreateUserDeviceDto copyWithWrapped(
      {Wrapped<enums.CreateUserDeviceDtoOs>? os,
      Wrapped<String>? model,
      Wrapped<String>? deviceId,
      Wrapped<String>? fcmToken}) {
    return CreateUserDeviceDto(
        os: (os != null ? os.value : this.os),
        model: (model != null ? model.value : this.model),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
        fcmToken: (fcmToken != null ? fcmToken.value : this.fcmToken));
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
    required this.notificationTokens,
  });

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);

  static const toJsonFactory = _$CreateUserDtoToJson;
  Map<String, dynamic> toJson() => _$CreateUserDtoToJson(this);

  @JsonKey(name: 'firebaseUID', includeIfNull: false)
  final String firebaseUID;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'email', includeIfNull: false)
  final String email;
  @JsonKey(name: 'dateOfBirth', includeIfNull: false)
  final DateTime dateOfBirth;
  @JsonKey(
    name: 'gender',
    includeIfNull: false,
    toJson: createUserDtoGenderToJson,
    fromJson: createUserDtoGenderFromJson,
  )
  final enums.CreateUserDtoGender gender;
  @JsonKey(
      name: 'address', includeIfNull: false, defaultValue: <CreateAddressDTO>[])
  final List<CreateAddressDTO> address;
  @JsonKey(
      name: 'notificationTokens',
      includeIfNull: false,
      defaultValue: <CreateUserDeviceDto>[])
  final List<CreateUserDeviceDto> notificationTokens;
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
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.notificationTokens, notificationTokens) ||
                const DeepCollectionEquality()
                    .equals(other.notificationTokens, notificationTokens)));
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
      const DeepCollectionEquality().hash(notificationTokens) ^
      runtimeType.hashCode;
}

extension $CreateUserDtoExtension on CreateUserDto {
  CreateUserDto copyWith(
      {String? firebaseUID,
      String? name,
      String? email,
      DateTime? dateOfBirth,
      enums.CreateUserDtoGender? gender,
      List<CreateAddressDTO>? address,
      List<CreateUserDeviceDto>? notificationTokens}) {
    return CreateUserDto(
        firebaseUID: firebaseUID ?? this.firebaseUID,
        name: name ?? this.name,
        email: email ?? this.email,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        address: address ?? this.address,
        notificationTokens: notificationTokens ?? this.notificationTokens);
  }

  CreateUserDto copyWithWrapped(
      {Wrapped<String>? firebaseUID,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<DateTime>? dateOfBirth,
      Wrapped<enums.CreateUserDtoGender>? gender,
      Wrapped<List<CreateAddressDTO>>? address,
      Wrapped<List<CreateUserDeviceDto>>? notificationTokens}) {
    return CreateUserDto(
        firebaseUID:
            (firebaseUID != null ? firebaseUID.value : this.firebaseUID),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        gender: (gender != null ? gender.value : this.gender),
        address: (address != null ? address.value : this.address),
        notificationTokens: (notificationTokens != null
            ? notificationTokens.value
            : this.notificationTokens));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressEntity {
  const AddressEntity({
    required this.id,
    required this.city,
    this.district,
    required this.province,
    required this.country,
    this.postalCode,
  });

  factory AddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressEntityFromJson(json);

  static const toJsonFactory = _$AddressEntityToJson;
  Map<String, dynamic> toJson() => _$AddressEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'city', includeIfNull: false)
  final String city;
  @JsonKey(name: 'district', includeIfNull: false)
  final String? district;
  @JsonKey(name: 'province', includeIfNull: false)
  final String province;
  @JsonKey(name: 'country', includeIfNull: false)
  final String country;
  @JsonKey(name: 'postalCode', includeIfNull: false)
  final String? postalCode;
  static const fromJsonFactory = _$AddressEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(postalCode) ^
      runtimeType.hashCode;
}

extension $AddressEntityExtension on AddressEntity {
  AddressEntity copyWith(
      {String? id,
      String? city,
      String? district,
      String? province,
      String? country,
      String? postalCode}) {
    return AddressEntity(
        id: id ?? this.id,
        city: city ?? this.city,
        district: district ?? this.district,
        province: province ?? this.province,
        country: country ?? this.country,
        postalCode: postalCode ?? this.postalCode);
  }

  AddressEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? city,
      Wrapped<String?>? district,
      Wrapped<String>? province,
      Wrapped<String>? country,
      Wrapped<String?>? postalCode}) {
    return AddressEntity(
        id: (id != null ? id.value : this.id),
        city: (city != null ? city.value : this.city),
        district: (district != null ? district.value : this.district),
        province: (province != null ? province.value : this.province),
        country: (country != null ? country.value : this.country),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDeviceEntity {
  const UserDeviceEntity({
    required this.id,
    required this.os,
    required this.model,
    required this.deviceId,
    required this.fcmToken,
  });

  factory UserDeviceEntity.fromJson(Map<String, dynamic> json) =>
      _$UserDeviceEntityFromJson(json);

  static const toJsonFactory = _$UserDeviceEntityToJson;
  Map<String, dynamic> toJson() => _$UserDeviceEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(
    name: 'os',
    includeIfNull: false,
    toJson: userDeviceEntityOsToJson,
    fromJson: userDeviceEntityOsFromJson,
  )
  final enums.UserDeviceEntityOs os;
  @JsonKey(name: 'model', includeIfNull: false)
  final String model;
  @JsonKey(name: 'deviceId', includeIfNull: false)
  final String deviceId;
  @JsonKey(name: 'fcmToken', includeIfNull: false)
  final String fcmToken;
  static const fromJsonFactory = _$UserDeviceEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDeviceEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.os, os) ||
                const DeepCollectionEquality().equals(other.os, os)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.fcmToken, fcmToken) ||
                const DeepCollectionEquality()
                    .equals(other.fcmToken, fcmToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(os) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      runtimeType.hashCode;
}

extension $UserDeviceEntityExtension on UserDeviceEntity {
  UserDeviceEntity copyWith(
      {String? id,
      enums.UserDeviceEntityOs? os,
      String? model,
      String? deviceId,
      String? fcmToken}) {
    return UserDeviceEntity(
        id: id ?? this.id,
        os: os ?? this.os,
        model: model ?? this.model,
        deviceId: deviceId ?? this.deviceId,
        fcmToken: fcmToken ?? this.fcmToken);
  }

  UserDeviceEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<enums.UserDeviceEntityOs>? os,
      Wrapped<String>? model,
      Wrapped<String>? deviceId,
      Wrapped<String>? fcmToken}) {
    return UserDeviceEntity(
        id: (id != null ? id.value : this.id),
        os: (os != null ? os.value : this.os),
        model: (model != null ? model.value : this.model),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
        fcmToken: (fcmToken != null ? fcmToken.value : this.fcmToken));
  }
}

@JsonSerializable(explicitToJson: true)
class UserEntity {
  const UserEntity({
    required this.id,
    required this.firebaseUID,
    required this.name,
    required this.email,
    required this.role,
    required this.dateOfBirth,
    required this.gender,
    required this.address,
    required this.userDevices,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  static const toJsonFactory = _$UserEntityToJson;
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'firebaseUID', includeIfNull: false)
  final String firebaseUID;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'email', includeIfNull: false)
  final String email;
  @JsonKey(name: 'role', includeIfNull: false)
  final double role;
  @JsonKey(name: 'dateOfBirth', includeIfNull: false)
  final DateTime dateOfBirth;
  @JsonKey(
    name: 'gender',
    includeIfNull: false,
    toJson: userEntityGenderToJson,
    fromJson: userEntityGenderFromJson,
  )
  final enums.UserEntityGender gender;
  @JsonKey(
      name: 'address', includeIfNull: false, defaultValue: <AddressEntity>[])
  final List<AddressEntity> address;
  @JsonKey(
      name: 'userDevices',
      includeIfNull: false,
      defaultValue: <UserDeviceEntity>[])
  final List<UserDeviceEntity> userDevices;
  static const fromJsonFactory = _$UserEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.userDevices, userDevices) ||
                const DeepCollectionEquality()
                    .equals(other.userDevices, userDevices)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firebaseUID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(userDevices) ^
      runtimeType.hashCode;
}

extension $UserEntityExtension on UserEntity {
  UserEntity copyWith(
      {String? id,
      String? firebaseUID,
      String? name,
      String? email,
      double? role,
      DateTime? dateOfBirth,
      enums.UserEntityGender? gender,
      List<AddressEntity>? address,
      List<UserDeviceEntity>? userDevices}) {
    return UserEntity(
        id: id ?? this.id,
        firebaseUID: firebaseUID ?? this.firebaseUID,
        name: name ?? this.name,
        email: email ?? this.email,
        role: role ?? this.role,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        address: address ?? this.address,
        userDevices: userDevices ?? this.userDevices);
  }

  UserEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? firebaseUID,
      Wrapped<String>? name,
      Wrapped<String>? email,
      Wrapped<double>? role,
      Wrapped<DateTime>? dateOfBirth,
      Wrapped<enums.UserEntityGender>? gender,
      Wrapped<List<AddressEntity>>? address,
      Wrapped<List<UserDeviceEntity>>? userDevices}) {
    return UserEntity(
        id: (id != null ? id.value : this.id),
        firebaseUID:
            (firebaseUID != null ? firebaseUID.value : this.firebaseUID),
        name: (name != null ? name.value : this.name),
        email: (email != null ? email.value : this.email),
        role: (role != null ? role.value : this.role),
        dateOfBirth:
            (dateOfBirth != null ? dateOfBirth.value : this.dateOfBirth),
        gender: (gender != null ? gender.value : this.gender),
        address: (address != null ? address.value : this.address),
        userDevices:
            (userDevices != null ? userDevices.value : this.userDevices));
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

  @JsonKey(name: 'street', includeIfNull: false)
  final String street;
  @JsonKey(name: 'houseNumber', includeIfNull: false)
  final String? houseNumber;
  @JsonKey(name: 'city', includeIfNull: false)
  final String? city;
  @JsonKey(name: 'district', includeIfNull: false)
  final String? district;
  @JsonKey(name: 'province', includeIfNull: false)
  final String? province;
  @JsonKey(name: 'country', includeIfNull: false)
  final String? country;
  @JsonKey(name: 'postalCode', includeIfNull: false)
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

@JsonSerializable(explicitToJson: true)
class UpdateUserDeviceDto {
  const UpdateUserDeviceDto({
    this.id,
    this.deviceId,
    this.os,
    this.model,
    this.fcmToken,
  });

  factory UpdateUserDeviceDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDeviceDtoFromJson(json);

  static const toJsonFactory = _$UpdateUserDeviceDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateUserDeviceDtoToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'deviceId', includeIfNull: false)
  final String? deviceId;
  @JsonKey(
    name: 'os',
    includeIfNull: false,
    toJson: updateUserDeviceDtoOsNullableToJson,
    fromJson: updateUserDeviceDtoOsNullableFromJson,
  )
  final enums.UpdateUserDeviceDtoOs? os;
  @JsonKey(name: 'model', includeIfNull: false)
  final String? model;
  @JsonKey(name: 'fcmToken', includeIfNull: false)
  final String? fcmToken;
  static const fromJsonFactory = _$UpdateUserDeviceDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserDeviceDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.os, os) ||
                const DeepCollectionEquality().equals(other.os, os)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.fcmToken, fcmToken) ||
                const DeepCollectionEquality()
                    .equals(other.fcmToken, fcmToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(os) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      runtimeType.hashCode;
}

extension $UpdateUserDeviceDtoExtension on UpdateUserDeviceDto {
  UpdateUserDeviceDto copyWith(
      {String? id,
      String? deviceId,
      enums.UpdateUserDeviceDtoOs? os,
      String? model,
      String? fcmToken}) {
    return UpdateUserDeviceDto(
        id: id ?? this.id,
        deviceId: deviceId ?? this.deviceId,
        os: os ?? this.os,
        model: model ?? this.model,
        fcmToken: fcmToken ?? this.fcmToken);
  }

  UpdateUserDeviceDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? deviceId,
      Wrapped<enums.UpdateUserDeviceDtoOs?>? os,
      Wrapped<String?>? model,
      Wrapped<String?>? fcmToken}) {
    return UpdateUserDeviceDto(
        id: (id != null ? id.value : this.id),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
        os: (os != null ? os.value : this.os),
        model: (model != null ? model.value : this.model),
        fcmToken: (fcmToken != null ? fcmToken.value : this.fcmToken));
  }
}

@JsonSerializable(explicitToJson: true)
class SuccessResponse {
  const SuccessResponse();

  factory SuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseFromJson(json);

  static const toJsonFactory = _$SuccessResponseToJson;
  Map<String, dynamic> toJson() => _$SuccessResponseToJson(this);

  static const fromJsonFactory = _$SuccessResponseFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class NotificationChannelEntity {
  const NotificationChannelEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.userRole,
  });

  factory NotificationChannelEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationChannelEntityFromJson(json);

  static const toJsonFactory = _$NotificationChannelEntityToJson;
  Map<String, dynamic> toJson() => _$NotificationChannelEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'userRole', includeIfNull: false)
  final double userRole;
  static const fromJsonFactory = _$NotificationChannelEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationChannelEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.userRole, userRole) ||
                const DeepCollectionEquality()
                    .equals(other.userRole, userRole)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(userRole) ^
      runtimeType.hashCode;
}

extension $NotificationChannelEntityExtension on NotificationChannelEntity {
  NotificationChannelEntity copyWith(
      {String? id, String? name, String? description, double? userRole}) {
    return NotificationChannelEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        userRole: userRole ?? this.userRole);
  }

  NotificationChannelEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<double>? userRole}) {
    return NotificationChannelEntity(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        userRole: (userRole != null ? userRole.value : this.userRole));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateNotificationChannelDTO {
  const CreateNotificationChannelDTO({
    required this.name,
    required this.description,
    required this.userRole,
  });

  factory CreateNotificationChannelDTO.fromJson(Map<String, dynamic> json) =>
      _$CreateNotificationChannelDTOFromJson(json);

  static const toJsonFactory = _$CreateNotificationChannelDTOToJson;
  Map<String, dynamic> toJson() => _$CreateNotificationChannelDTOToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String description;
  @JsonKey(name: 'userRole', includeIfNull: false)
  final double userRole;
  static const fromJsonFactory = _$CreateNotificationChannelDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateNotificationChannelDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.userRole, userRole) ||
                const DeepCollectionEquality()
                    .equals(other.userRole, userRole)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(userRole) ^
      runtimeType.hashCode;
}

extension $CreateNotificationChannelDTOExtension
    on CreateNotificationChannelDTO {
  CreateNotificationChannelDTO copyWith(
      {String? name, String? description, double? userRole}) {
    return CreateNotificationChannelDTO(
        name: name ?? this.name,
        description: description ?? this.description,
        userRole: userRole ?? this.userRole);
  }

  CreateNotificationChannelDTO copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<double>? userRole}) {
    return CreateNotificationChannelDTO(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        userRole: (userRole != null ? userRole.value : this.userRole));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateNotificationChannelDTO {
  const UpdateNotificationChannelDTO({
    this.name,
    this.description,
    this.userRole,
  });

  factory UpdateNotificationChannelDTO.fromJson(Map<String, dynamic> json) =>
      _$UpdateNotificationChannelDTOFromJson(json);

  static const toJsonFactory = _$UpdateNotificationChannelDTOToJson;
  Map<String, dynamic> toJson() => _$UpdateNotificationChannelDTOToJson(this);

  @JsonKey(name: 'name', includeIfNull: false)
  final String? name;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'userRole', includeIfNull: false)
  final double? userRole;
  static const fromJsonFactory = _$UpdateNotificationChannelDTOFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateNotificationChannelDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.userRole, userRole) ||
                const DeepCollectionEquality()
                    .equals(other.userRole, userRole)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(userRole) ^
      runtimeType.hashCode;
}

extension $UpdateNotificationChannelDTOExtension
    on UpdateNotificationChannelDTO {
  UpdateNotificationChannelDTO copyWith(
      {String? name, String? description, double? userRole}) {
    return UpdateNotificationChannelDTO(
        name: name ?? this.name,
        description: description ?? this.description,
        userRole: userRole ?? this.userRole);
  }

  UpdateNotificationChannelDTO copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<double?>? userRole}) {
    return UpdateNotificationChannelDTO(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        userRole: (userRole != null ? userRole.value : this.userRole));
  }
}

String? createUserDeviceDtoOsNullableToJson(
    enums.CreateUserDeviceDtoOs? createUserDeviceDtoOs) {
  return createUserDeviceDtoOs?.value;
}

String? createUserDeviceDtoOsToJson(
    enums.CreateUserDeviceDtoOs createUserDeviceDtoOs) {
  return createUserDeviceDtoOs.value;
}

enums.CreateUserDeviceDtoOs createUserDeviceDtoOsFromJson(
  Object? createUserDeviceDtoOs, [
  enums.CreateUserDeviceDtoOs? defaultValue,
]) {
  return enums.CreateUserDeviceDtoOs.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          createUserDeviceDtoOs?.toString().toLowerCase()) ??
      defaultValue ??
      enums.CreateUserDeviceDtoOs.swaggerGeneratedUnknown;
}

enums.CreateUserDeviceDtoOs? createUserDeviceDtoOsNullableFromJson(
  Object? createUserDeviceDtoOs, [
  enums.CreateUserDeviceDtoOs? defaultValue,
]) {
  if (createUserDeviceDtoOs == null) {
    return null;
  }
  return enums.CreateUserDeviceDtoOs.values
          .firstWhereOrNull((e) => e.value == createUserDeviceDtoOs) ??
      defaultValue;
}

String createUserDeviceDtoOsExplodedListToJson(
    List<enums.CreateUserDeviceDtoOs>? createUserDeviceDtoOs) {
  return createUserDeviceDtoOs?.map((e) => e.value!).join(',') ?? '';
}

List<String> createUserDeviceDtoOsListToJson(
    List<enums.CreateUserDeviceDtoOs>? createUserDeviceDtoOs) {
  if (createUserDeviceDtoOs == null) {
    return [];
  }

  return createUserDeviceDtoOs.map((e) => e.value!).toList();
}

List<enums.CreateUserDeviceDtoOs> createUserDeviceDtoOsListFromJson(
  List? createUserDeviceDtoOs, [
  List<enums.CreateUserDeviceDtoOs>? defaultValue,
]) {
  if (createUserDeviceDtoOs == null) {
    return defaultValue ?? [];
  }

  return createUserDeviceDtoOs
      .map((e) => createUserDeviceDtoOsFromJson(e.toString()))
      .toList();
}

List<enums.CreateUserDeviceDtoOs>? createUserDeviceDtoOsNullableListFromJson(
  List? createUserDeviceDtoOs, [
  List<enums.CreateUserDeviceDtoOs>? defaultValue,
]) {
  if (createUserDeviceDtoOs == null) {
    return defaultValue;
  }

  return createUserDeviceDtoOs
      .map((e) => createUserDeviceDtoOsFromJson(e.toString()))
      .toList();
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

String? userDeviceEntityOsNullableToJson(
    enums.UserDeviceEntityOs? userDeviceEntityOs) {
  return userDeviceEntityOs?.value;
}

String? userDeviceEntityOsToJson(enums.UserDeviceEntityOs userDeviceEntityOs) {
  return userDeviceEntityOs.value;
}

enums.UserDeviceEntityOs userDeviceEntityOsFromJson(
  Object? userDeviceEntityOs, [
  enums.UserDeviceEntityOs? defaultValue,
]) {
  return enums.UserDeviceEntityOs.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          userDeviceEntityOs?.toString().toLowerCase()) ??
      defaultValue ??
      enums.UserDeviceEntityOs.swaggerGeneratedUnknown;
}

enums.UserDeviceEntityOs? userDeviceEntityOsNullableFromJson(
  Object? userDeviceEntityOs, [
  enums.UserDeviceEntityOs? defaultValue,
]) {
  if (userDeviceEntityOs == null) {
    return null;
  }
  return enums.UserDeviceEntityOs.values
          .firstWhereOrNull((e) => e.value == userDeviceEntityOs) ??
      defaultValue;
}

String userDeviceEntityOsExplodedListToJson(
    List<enums.UserDeviceEntityOs>? userDeviceEntityOs) {
  return userDeviceEntityOs?.map((e) => e.value!).join(',') ?? '';
}

List<String> userDeviceEntityOsListToJson(
    List<enums.UserDeviceEntityOs>? userDeviceEntityOs) {
  if (userDeviceEntityOs == null) {
    return [];
  }

  return userDeviceEntityOs.map((e) => e.value!).toList();
}

List<enums.UserDeviceEntityOs> userDeviceEntityOsListFromJson(
  List? userDeviceEntityOs, [
  List<enums.UserDeviceEntityOs>? defaultValue,
]) {
  if (userDeviceEntityOs == null) {
    return defaultValue ?? [];
  }

  return userDeviceEntityOs
      .map((e) => userDeviceEntityOsFromJson(e.toString()))
      .toList();
}

List<enums.UserDeviceEntityOs>? userDeviceEntityOsNullableListFromJson(
  List? userDeviceEntityOs, [
  List<enums.UserDeviceEntityOs>? defaultValue,
]) {
  if (userDeviceEntityOs == null) {
    return defaultValue;
  }

  return userDeviceEntityOs
      .map((e) => userDeviceEntityOsFromJson(e.toString()))
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

String? updateUserDeviceDtoOsNullableToJson(
    enums.UpdateUserDeviceDtoOs? updateUserDeviceDtoOs) {
  return updateUserDeviceDtoOs?.value;
}

String? updateUserDeviceDtoOsToJson(
    enums.UpdateUserDeviceDtoOs updateUserDeviceDtoOs) {
  return updateUserDeviceDtoOs.value;
}

enums.UpdateUserDeviceDtoOs updateUserDeviceDtoOsFromJson(
  Object? updateUserDeviceDtoOs, [
  enums.UpdateUserDeviceDtoOs? defaultValue,
]) {
  return enums.UpdateUserDeviceDtoOs.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          updateUserDeviceDtoOs?.toString().toLowerCase()) ??
      defaultValue ??
      enums.UpdateUserDeviceDtoOs.swaggerGeneratedUnknown;
}

enums.UpdateUserDeviceDtoOs? updateUserDeviceDtoOsNullableFromJson(
  Object? updateUserDeviceDtoOs, [
  enums.UpdateUserDeviceDtoOs? defaultValue,
]) {
  if (updateUserDeviceDtoOs == null) {
    return null;
  }
  return enums.UpdateUserDeviceDtoOs.values
          .firstWhereOrNull((e) => e.value == updateUserDeviceDtoOs) ??
      defaultValue;
}

String updateUserDeviceDtoOsExplodedListToJson(
    List<enums.UpdateUserDeviceDtoOs>? updateUserDeviceDtoOs) {
  return updateUserDeviceDtoOs?.map((e) => e.value!).join(',') ?? '';
}

List<String> updateUserDeviceDtoOsListToJson(
    List<enums.UpdateUserDeviceDtoOs>? updateUserDeviceDtoOs) {
  if (updateUserDeviceDtoOs == null) {
    return [];
  }

  return updateUserDeviceDtoOs.map((e) => e.value!).toList();
}

List<enums.UpdateUserDeviceDtoOs> updateUserDeviceDtoOsListFromJson(
  List? updateUserDeviceDtoOs, [
  List<enums.UpdateUserDeviceDtoOs>? defaultValue,
]) {
  if (updateUserDeviceDtoOs == null) {
    return defaultValue ?? [];
  }

  return updateUserDeviceDtoOs
      .map((e) => updateUserDeviceDtoOsFromJson(e.toString()))
      .toList();
}

List<enums.UpdateUserDeviceDtoOs>? updateUserDeviceDtoOsNullableListFromJson(
  List? updateUserDeviceDtoOs, [
  List<enums.UpdateUserDeviceDtoOs>? defaultValue,
]) {
  if (updateUserDeviceDtoOs == null) {
    return defaultValue;
  }

  return updateUserDeviceDtoOs
      .map((e) => updateUserDeviceDtoOsFromJson(e.toString()))
      .toList();
}

int? createNotificationChannelDTOUserRoleNullableToJson(
    enums.CreateNotificationChannelDTOUserRole?
        createNotificationChannelDTOUserRole) {
  return createNotificationChannelDTOUserRole?.value;
}

int? createNotificationChannelDTOUserRoleToJson(
    enums.CreateNotificationChannelDTOUserRole
        createNotificationChannelDTOUserRole) {
  return createNotificationChannelDTOUserRole.value;
}

enums.CreateNotificationChannelDTOUserRole
    createNotificationChannelDTOUserRoleFromJson(
  Object? createNotificationChannelDTOUserRole, [
  enums.CreateNotificationChannelDTOUserRole? defaultValue,
]) {
  return enums.CreateNotificationChannelDTOUserRole.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              createNotificationChannelDTOUserRole?.toString().toLowerCase()) ??
      defaultValue ??
      enums.CreateNotificationChannelDTOUserRole.swaggerGeneratedUnknown;
}

enums.CreateNotificationChannelDTOUserRole?
    createNotificationChannelDTOUserRoleNullableFromJson(
  Object? createNotificationChannelDTOUserRole, [
  enums.CreateNotificationChannelDTOUserRole? defaultValue,
]) {
  if (createNotificationChannelDTOUserRole == null) {
    return null;
  }
  return enums.CreateNotificationChannelDTOUserRole.values.firstWhereOrNull(
          (e) => e.value == createNotificationChannelDTOUserRole) ??
      defaultValue;
}

String createNotificationChannelDTOUserRoleExplodedListToJson(
    List<enums.CreateNotificationChannelDTOUserRole>?
        createNotificationChannelDTOUserRole) {
  return createNotificationChannelDTOUserRole?.map((e) => e.value!).join(',') ??
      '';
}

List<int> createNotificationChannelDTOUserRoleListToJson(
    List<enums.CreateNotificationChannelDTOUserRole>?
        createNotificationChannelDTOUserRole) {
  if (createNotificationChannelDTOUserRole == null) {
    return [];
  }

  return createNotificationChannelDTOUserRole.map((e) => e.value!).toList();
}

List<enums.CreateNotificationChannelDTOUserRole>
    createNotificationChannelDTOUserRoleListFromJson(
  List? createNotificationChannelDTOUserRole, [
  List<enums.CreateNotificationChannelDTOUserRole>? defaultValue,
]) {
  if (createNotificationChannelDTOUserRole == null) {
    return defaultValue ?? [];
  }

  return createNotificationChannelDTOUserRole
      .map((e) => createNotificationChannelDTOUserRoleFromJson(e.toString()))
      .toList();
}

List<enums.CreateNotificationChannelDTOUserRole>?
    createNotificationChannelDTOUserRoleNullableListFromJson(
  List? createNotificationChannelDTOUserRole, [
  List<enums.CreateNotificationChannelDTOUserRole>? defaultValue,
]) {
  if (createNotificationChannelDTOUserRole == null) {
    return defaultValue;
  }

  return createNotificationChannelDTOUserRole
      .map((e) => createNotificationChannelDTOUserRoleFromJson(e.toString()))
      .toList();
}

int? updateNotificationChannelDTOUserRoleNullableToJson(
    enums.UpdateNotificationChannelDTOUserRole?
        updateNotificationChannelDTOUserRole) {
  return updateNotificationChannelDTOUserRole?.value;
}

int? updateNotificationChannelDTOUserRoleToJson(
    enums.UpdateNotificationChannelDTOUserRole
        updateNotificationChannelDTOUserRole) {
  return updateNotificationChannelDTOUserRole.value;
}

enums.UpdateNotificationChannelDTOUserRole
    updateNotificationChannelDTOUserRoleFromJson(
  Object? updateNotificationChannelDTOUserRole, [
  enums.UpdateNotificationChannelDTOUserRole? defaultValue,
]) {
  return enums.UpdateNotificationChannelDTOUserRole.values.firstWhereOrNull(
          (e) =>
              e.value.toString().toLowerCase() ==
              updateNotificationChannelDTOUserRole?.toString().toLowerCase()) ??
      defaultValue ??
      enums.UpdateNotificationChannelDTOUserRole.swaggerGeneratedUnknown;
}

enums.UpdateNotificationChannelDTOUserRole?
    updateNotificationChannelDTOUserRoleNullableFromJson(
  Object? updateNotificationChannelDTOUserRole, [
  enums.UpdateNotificationChannelDTOUserRole? defaultValue,
]) {
  if (updateNotificationChannelDTOUserRole == null) {
    return null;
  }
  return enums.UpdateNotificationChannelDTOUserRole.values.firstWhereOrNull(
          (e) => e.value == updateNotificationChannelDTOUserRole) ??
      defaultValue;
}

String updateNotificationChannelDTOUserRoleExplodedListToJson(
    List<enums.UpdateNotificationChannelDTOUserRole>?
        updateNotificationChannelDTOUserRole) {
  return updateNotificationChannelDTOUserRole?.map((e) => e.value!).join(',') ??
      '';
}

List<int> updateNotificationChannelDTOUserRoleListToJson(
    List<enums.UpdateNotificationChannelDTOUserRole>?
        updateNotificationChannelDTOUserRole) {
  if (updateNotificationChannelDTOUserRole == null) {
    return [];
  }

  return updateNotificationChannelDTOUserRole.map((e) => e.value!).toList();
}

List<enums.UpdateNotificationChannelDTOUserRole>
    updateNotificationChannelDTOUserRoleListFromJson(
  List? updateNotificationChannelDTOUserRole, [
  List<enums.UpdateNotificationChannelDTOUserRole>? defaultValue,
]) {
  if (updateNotificationChannelDTOUserRole == null) {
    return defaultValue ?? [];
  }

  return updateNotificationChannelDTOUserRole
      .map((e) => updateNotificationChannelDTOUserRoleFromJson(e.toString()))
      .toList();
}

List<enums.UpdateNotificationChannelDTOUserRole>?
    updateNotificationChannelDTOUserRoleNullableListFromJson(
  List? updateNotificationChannelDTOUserRole, [
  List<enums.UpdateNotificationChannelDTOUserRole>? defaultValue,
]) {
  if (updateNotificationChannelDTOUserRole == null) {
    return defaultValue;
  }

  return updateNotificationChannelDTOUserRole
      .map((e) => updateNotificationChannelDTOUserRoleFromJson(e.toString()))
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

String? userDeviceGetOrderNullableToJson(
    enums.UserDeviceGetOrder? userDeviceGetOrder) {
  return userDeviceGetOrder?.value;
}

String? userDeviceGetOrderToJson(enums.UserDeviceGetOrder userDeviceGetOrder) {
  return userDeviceGetOrder.value;
}

enums.UserDeviceGetOrder userDeviceGetOrderFromJson(
  Object? userDeviceGetOrder, [
  enums.UserDeviceGetOrder? defaultValue,
]) {
  return enums.UserDeviceGetOrder.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          userDeviceGetOrder?.toString().toLowerCase()) ??
      defaultValue ??
      enums.UserDeviceGetOrder.swaggerGeneratedUnknown;
}

enums.UserDeviceGetOrder? userDeviceGetOrderNullableFromJson(
  Object? userDeviceGetOrder, [
  enums.UserDeviceGetOrder? defaultValue,
]) {
  if (userDeviceGetOrder == null) {
    return null;
  }
  return enums.UserDeviceGetOrder.values
          .firstWhereOrNull((e) => e.value == userDeviceGetOrder) ??
      defaultValue;
}

String userDeviceGetOrderExplodedListToJson(
    List<enums.UserDeviceGetOrder>? userDeviceGetOrder) {
  return userDeviceGetOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> userDeviceGetOrderListToJson(
    List<enums.UserDeviceGetOrder>? userDeviceGetOrder) {
  if (userDeviceGetOrder == null) {
    return [];
  }

  return userDeviceGetOrder.map((e) => e.value!).toList();
}

List<enums.UserDeviceGetOrder> userDeviceGetOrderListFromJson(
  List? userDeviceGetOrder, [
  List<enums.UserDeviceGetOrder>? defaultValue,
]) {
  if (userDeviceGetOrder == null) {
    return defaultValue ?? [];
  }

  return userDeviceGetOrder
      .map((e) => userDeviceGetOrderFromJson(e.toString()))
      .toList();
}

List<enums.UserDeviceGetOrder>? userDeviceGetOrderNullableListFromJson(
  List? userDeviceGetOrder, [
  List<enums.UserDeviceGetOrder>? defaultValue,
]) {
  if (userDeviceGetOrder == null) {
    return defaultValue;
  }

  return userDeviceGetOrder
      .map((e) => userDeviceGetOrderFromJson(e.toString()))
      .toList();
}

String? notificationChannelGetOrderNullableToJson(
    enums.NotificationChannelGetOrder? notificationChannelGetOrder) {
  return notificationChannelGetOrder?.value;
}

String? notificationChannelGetOrderToJson(
    enums.NotificationChannelGetOrder notificationChannelGetOrder) {
  return notificationChannelGetOrder.value;
}

enums.NotificationChannelGetOrder notificationChannelGetOrderFromJson(
  Object? notificationChannelGetOrder, [
  enums.NotificationChannelGetOrder? defaultValue,
]) {
  return enums.NotificationChannelGetOrder.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          notificationChannelGetOrder?.toString().toLowerCase()) ??
      defaultValue ??
      enums.NotificationChannelGetOrder.swaggerGeneratedUnknown;
}

enums.NotificationChannelGetOrder? notificationChannelGetOrderNullableFromJson(
  Object? notificationChannelGetOrder, [
  enums.NotificationChannelGetOrder? defaultValue,
]) {
  if (notificationChannelGetOrder == null) {
    return null;
  }
  return enums.NotificationChannelGetOrder.values
          .firstWhereOrNull((e) => e.value == notificationChannelGetOrder) ??
      defaultValue;
}

String notificationChannelGetOrderExplodedListToJson(
    List<enums.NotificationChannelGetOrder>? notificationChannelGetOrder) {
  return notificationChannelGetOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> notificationChannelGetOrderListToJson(
    List<enums.NotificationChannelGetOrder>? notificationChannelGetOrder) {
  if (notificationChannelGetOrder == null) {
    return [];
  }

  return notificationChannelGetOrder.map((e) => e.value!).toList();
}

List<enums.NotificationChannelGetOrder> notificationChannelGetOrderListFromJson(
  List? notificationChannelGetOrder, [
  List<enums.NotificationChannelGetOrder>? defaultValue,
]) {
  if (notificationChannelGetOrder == null) {
    return defaultValue ?? [];
  }

  return notificationChannelGetOrder
      .map((e) => notificationChannelGetOrderFromJson(e.toString()))
      .toList();
}

List<enums.NotificationChannelGetOrder>?
    notificationChannelGetOrderNullableListFromJson(
  List? notificationChannelGetOrder, [
  List<enums.NotificationChannelGetOrder>? defaultValue,
]) {
  if (notificationChannelGetOrder == null) {
    return defaultValue;
  }

  return notificationChannelGetOrder
      .map((e) => notificationChannelGetOrderFromJson(e.toString()))
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
