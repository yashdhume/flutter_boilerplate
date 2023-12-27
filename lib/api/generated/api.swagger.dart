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
class CreateNotificationTokenDto {
  const CreateNotificationTokenDto({
    required this.deviceId,
    required this.fcmToken,
  });

  factory CreateNotificationTokenDto.fromJson(Map<String, dynamic> json) =>
      _$CreateNotificationTokenDtoFromJson(json);

  static const toJsonFactory = _$CreateNotificationTokenDtoToJson;
  Map<String, dynamic> toJson() => _$CreateNotificationTokenDtoToJson(this);

  @JsonKey(name: 'deviceId', includeIfNull: false)
  final String deviceId;
  @JsonKey(name: 'fcmToken', includeIfNull: false)
  final String fcmToken;
  static const fromJsonFactory = _$CreateNotificationTokenDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateNotificationTokenDto &&
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
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      runtimeType.hashCode;
}

extension $CreateNotificationTokenDtoExtension on CreateNotificationTokenDto {
  CreateNotificationTokenDto copyWith({String? deviceId, String? fcmToken}) {
    return CreateNotificationTokenDto(
        deviceId: deviceId ?? this.deviceId,
        fcmToken: fcmToken ?? this.fcmToken);
  }

  CreateNotificationTokenDto copyWithWrapped(
      {Wrapped<String>? deviceId, Wrapped<String>? fcmToken}) {
    return CreateNotificationTokenDto(
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
      defaultValue: <CreateNotificationTokenDto>[])
  final List<CreateNotificationTokenDto> notificationTokens;
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
      List<CreateNotificationTokenDto>? notificationTokens}) {
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
      Wrapped<List<CreateNotificationTokenDto>>? notificationTokens}) {
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
class NotificationTokenEntity {
  const NotificationTokenEntity({
    required this.id,
    required this.deviceId,
    required this.fcmToken,
  });

  factory NotificationTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationTokenEntityFromJson(json);

  static const toJsonFactory = _$NotificationTokenEntityToJson;
  Map<String, dynamic> toJson() => _$NotificationTokenEntityToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @JsonKey(name: 'deviceId', includeIfNull: false)
  final String deviceId;
  @JsonKey(name: 'fcmToken', includeIfNull: false)
  final String fcmToken;
  static const fromJsonFactory = _$NotificationTokenEntityFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationTokenEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      runtimeType.hashCode;
}

extension $NotificationTokenEntityExtension on NotificationTokenEntity {
  NotificationTokenEntity copyWith(
      {String? id, String? deviceId, String? fcmToken}) {
    return NotificationTokenEntity(
        id: id ?? this.id,
        deviceId: deviceId ?? this.deviceId,
        fcmToken: fcmToken ?? this.fcmToken);
  }

  NotificationTokenEntity copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? deviceId,
      Wrapped<String>? fcmToken}) {
    return NotificationTokenEntity(
        id: (id != null ? id.value : this.id),
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
    required this.notificationTokens,
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
      name: 'notificationTokens',
      includeIfNull: false,
      defaultValue: <NotificationTokenEntity>[])
  final List<NotificationTokenEntity> notificationTokens;
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
            (identical(other.notificationTokens, notificationTokens) ||
                const DeepCollectionEquality()
                    .equals(other.notificationTokens, notificationTokens)));
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
      const DeepCollectionEquality().hash(notificationTokens) ^
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
      List<NotificationTokenEntity>? notificationTokens}) {
    return UserEntity(
        id: id ?? this.id,
        firebaseUID: firebaseUID ?? this.firebaseUID,
        name: name ?? this.name,
        email: email ?? this.email,
        role: role ?? this.role,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        address: address ?? this.address,
        notificationTokens: notificationTokens ?? this.notificationTokens);
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
      Wrapped<List<NotificationTokenEntity>>? notificationTokens}) {
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
        notificationTokens: (notificationTokens != null
            ? notificationTokens.value
            : this.notificationTokens));
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
class UpdateNotificationTokenDto {
  const UpdateNotificationTokenDto({
    this.id,
    this.deviceId,
    this.fcmToken,
  });

  factory UpdateNotificationTokenDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateNotificationTokenDtoFromJson(json);

  static const toJsonFactory = _$UpdateNotificationTokenDtoToJson;
  Map<String, dynamic> toJson() => _$UpdateNotificationTokenDtoToJson(this);

  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'deviceId', includeIfNull: false)
  final String? deviceId;
  @JsonKey(name: 'fcmToken', includeIfNull: false)
  final String? fcmToken;
  static const fromJsonFactory = _$UpdateNotificationTokenDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateNotificationTokenDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(fcmToken) ^
      runtimeType.hashCode;
}

extension $UpdateNotificationTokenDtoExtension on UpdateNotificationTokenDto {
  UpdateNotificationTokenDto copyWith(
      {String? id, String? deviceId, String? fcmToken}) {
    return UpdateNotificationTokenDto(
        id: id ?? this.id,
        deviceId: deviceId ?? this.deviceId,
        fcmToken: fcmToken ?? this.fcmToken);
  }

  UpdateNotificationTokenDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? deviceId,
      Wrapped<String?>? fcmToken}) {
    return UpdateNotificationTokenDto(
        id: (id != null ? id.value : this.id),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId),
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

String? notificationTokenGetOrderNullableToJson(
    enums.NotificationTokenGetOrder? notificationTokenGetOrder) {
  return notificationTokenGetOrder?.value;
}

String? notificationTokenGetOrderToJson(
    enums.NotificationTokenGetOrder notificationTokenGetOrder) {
  return notificationTokenGetOrder.value;
}

enums.NotificationTokenGetOrder notificationTokenGetOrderFromJson(
  Object? notificationTokenGetOrder, [
  enums.NotificationTokenGetOrder? defaultValue,
]) {
  return enums.NotificationTokenGetOrder.values.firstWhereOrNull((e) =>
          e.value.toString().toLowerCase() ==
          notificationTokenGetOrder?.toString().toLowerCase()) ??
      defaultValue ??
      enums.NotificationTokenGetOrder.swaggerGeneratedUnknown;
}

enums.NotificationTokenGetOrder? notificationTokenGetOrderNullableFromJson(
  Object? notificationTokenGetOrder, [
  enums.NotificationTokenGetOrder? defaultValue,
]) {
  if (notificationTokenGetOrder == null) {
    return null;
  }
  return enums.NotificationTokenGetOrder.values
          .firstWhereOrNull((e) => e.value == notificationTokenGetOrder) ??
      defaultValue;
}

String notificationTokenGetOrderExplodedListToJson(
    List<enums.NotificationTokenGetOrder>? notificationTokenGetOrder) {
  return notificationTokenGetOrder?.map((e) => e.value!).join(',') ?? '';
}

List<String> notificationTokenGetOrderListToJson(
    List<enums.NotificationTokenGetOrder>? notificationTokenGetOrder) {
  if (notificationTokenGetOrder == null) {
    return [];
  }

  return notificationTokenGetOrder.map((e) => e.value!).toList();
}

List<enums.NotificationTokenGetOrder> notificationTokenGetOrderListFromJson(
  List? notificationTokenGetOrder, [
  List<enums.NotificationTokenGetOrder>? defaultValue,
]) {
  if (notificationTokenGetOrder == null) {
    return defaultValue ?? [];
  }

  return notificationTokenGetOrder
      .map((e) => notificationTokenGetOrderFromJson(e.toString()))
      .toList();
}

List<enums.NotificationTokenGetOrder>?
    notificationTokenGetOrderNullableListFromJson(
  List? notificationTokenGetOrder, [
  List<enums.NotificationTokenGetOrder>? defaultValue,
]) {
  if (notificationTokenGetOrder == null) {
    return defaultValue;
  }

  return notificationTokenGetOrder
      .map((e) => notificationTokenGetOrderFromJson(e.toString()))
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
