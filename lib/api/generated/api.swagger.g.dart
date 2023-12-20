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

Map<String, dynamic> _$CreateAddressDTOToJson(CreateAddressDTO instance) =>
    <String, dynamic>{
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'city': instance.city,
      'district': instance.district,
      'province': instance.province,
      'country': instance.country,
      'postalCode': instance.postalCode,
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
    );

Map<String, dynamic> _$CreateUserDtoToJson(CreateUserDto instance) =>
    <String, dynamic>{
      'firebaseUID': instance.firebaseUID,
      'name': instance.name,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'gender': createUserDtoGenderToJson(instance.gender),
      'address': instance.address.map((e) => e.toJson()).toList(),
    };

AddressEntity _$AddressEntityFromJson(Map<String, dynamic> json) =>
    AddressEntity(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      city: json['city'] as String,
      district: json['district'] as String?,
      province: json['province'] as String,
      country: json['country'] as String,
      postalCode: json['postalCode'] as String?,
      version: (json['version'] as num).toDouble(),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$AddressEntityToJson(AddressEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'city': instance.city,
      'district': instance.district,
      'province': instance.province,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'version': instance.version,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
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
      version: (json['version'] as num).toDouble(),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'firebaseUID': instance.firebaseUID,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'gender': userEntityGenderToJson(instance.gender),
      'address': instance.address.map((e) => e.toJson()).toList(),
      'version': instance.version,
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

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

Map<String, dynamic> _$UpdateAddressDTOToJson(UpdateAddressDTO instance) =>
    <String, dynamic>{
      'street': instance.street,
      'houseNumber': instance.houseNumber,
      'city': instance.city,
      'district': instance.district,
      'province': instance.province,
      'country': instance.country,
      'postalCode': instance.postalCode,
    };
