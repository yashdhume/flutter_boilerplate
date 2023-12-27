// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidationException _$ValidationExceptionFromJson(Map<String, dynamic> json) =>
    ValidationException();

Map<String, dynamic> _$ValidationExceptionToJson(
        ValidationException instance) =>
    <String, dynamic>{};

TypeOrmExceptionFilter _$TypeOrmExceptionFilterFromJson(
        Map<String, dynamic> json) =>
    TypeOrmExceptionFilter();

Map<String, dynamic> _$TypeOrmExceptionFilterToJson(
        TypeOrmExceptionFilter instance) =>
    <String, dynamic>{};

CreateAddressDTO _$CreateAddressDTOFromJson(Map<String, dynamic> json) =>
    CreateAddressDTO(
      street: json['street'] as String,
      houseNumber: json['houseNumber'] as String?,
      city: json['city'] as String,
      district: json['district'] as String?,
      province: json['province'] as String,
      country: json['country'] as String,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$CreateAddressDTOToJson(CreateAddressDTO instance) {
  final val = <String, dynamic>{
    'street': instance.street,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('houseNumber', instance.houseNumber);
  val['city'] = instance.city;
  writeNotNull('district', instance.district);
  val['province'] = instance.province;
  val['country'] = instance.country;
  writeNotNull('postalCode', instance.postalCode);
  return val;
}

CreateNotificationTokenDto _$CreateNotificationTokenDtoFromJson(
        Map<String, dynamic> json) =>
    CreateNotificationTokenDto(
      deviceId: json['deviceId'] as String,
      fcmToken: json['fcmToken'] as String,
    );

Map<String, dynamic> _$CreateNotificationTokenDtoToJson(
        CreateNotificationTokenDto instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'fcmToken': instance.fcmToken,
    };

CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    CreateUserDto(
      firebaseUID: json['firebaseUID'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      gender: createUserDtoGenderFromJson(json['gender']),
      address: (json['address'] as List<dynamic>?)
              ?.map((e) => CreateAddressDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notificationTokens: (json['notificationTokens'] as List<dynamic>?)
              ?.map((e) => CreateNotificationTokenDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateUserDtoToJson(CreateUserDto instance) {
  final val = <String, dynamic>{
    'firebaseUID': instance.firebaseUID,
    'name': instance.name,
    'email': instance.email,
    'dateOfBirth': instance.dateOfBirth.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gender', createUserDtoGenderToJson(instance.gender));
  val['address'] = instance.address.map((e) => e.toJson()).toList();
  val['notificationTokens'] =
      instance.notificationTokens.map((e) => e.toJson()).toList();
  return val;
}

AddressEntity _$AddressEntityFromJson(Map<String, dynamic> json) =>
    AddressEntity(
      id: json['id'] as String,
      city: json['city'] as String,
      district: json['district'] as String?,
      province: json['province'] as String,
      country: json['country'] as String,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$AddressEntityToJson(AddressEntity instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'city': instance.city,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('district', instance.district);
  val['province'] = instance.province;
  val['country'] = instance.country;
  writeNotNull('postalCode', instance.postalCode);
  return val;
}

NotificationTokenEntity _$NotificationTokenEntityFromJson(
        Map<String, dynamic> json) =>
    NotificationTokenEntity(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      fcmToken: json['fcmToken'] as String,
    );

Map<String, dynamic> _$NotificationTokenEntityToJson(
        NotificationTokenEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'fcmToken': instance.fcmToken,
    };

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as String,
      firebaseUID: json['firebaseUID'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: (json['role'] as num).toDouble(),
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      gender: userEntityGenderFromJson(json['gender']),
      address: (json['address'] as List<dynamic>?)
              ?.map((e) => AddressEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      notificationTokens: (json['notificationTokens'] as List<dynamic>?)
              ?.map((e) =>
                  NotificationTokenEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'firebaseUID': instance.firebaseUID,
    'name': instance.name,
    'email': instance.email,
    'role': instance.role,
    'dateOfBirth': instance.dateOfBirth.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gender', userEntityGenderToJson(instance.gender));
  val['address'] = instance.address.map((e) => e.toJson()).toList();
  val['notificationTokens'] =
      instance.notificationTokens.map((e) => e.toJson()).toList();
  return val;
}

UserNotFoundException _$UserNotFoundExceptionFromJson(
        Map<String, dynamic> json) =>
    UserNotFoundException();

Map<String, dynamic> _$UserNotFoundExceptionToJson(
        UserNotFoundException instance) =>
    <String, dynamic>{};

UpdateAddressDTO _$UpdateAddressDTOFromJson(Map<String, dynamic> json) =>
    UpdateAddressDTO(
      street: json['street'] as String,
      houseNumber: json['houseNumber'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      province: json['province'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$UpdateAddressDTOToJson(UpdateAddressDTO instance) {
  final val = <String, dynamic>{
    'street': instance.street,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('houseNumber', instance.houseNumber);
  writeNotNull('city', instance.city);
  writeNotNull('district', instance.district);
  writeNotNull('province', instance.province);
  writeNotNull('country', instance.country);
  writeNotNull('postalCode', instance.postalCode);
  return val;
}

UpdateNotificationTokenDto _$UpdateNotificationTokenDtoFromJson(
        Map<String, dynamic> json) =>
    UpdateNotificationTokenDto(
      id: json['id'] as String?,
      deviceId: json['deviceId'] as String?,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$UpdateNotificationTokenDtoToJson(
    UpdateNotificationTokenDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('deviceId', instance.deviceId);
  writeNotNull('fcmToken', instance.fcmToken);
  return val;
}

SuccessResponse _$SuccessResponseFromJson(Map<String, dynamic> json) =>
    SuccessResponse();

Map<String, dynamic> _$SuccessResponseToJson(SuccessResponse instance) =>
    <String, dynamic>{};
