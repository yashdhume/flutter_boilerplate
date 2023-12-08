import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum CreateUserDtoGender {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MALE')
  male('MALE'),
  @JsonValue('FEMALE')
  female('FEMALE'),
  @JsonValue('TRANSGENDER')
  transgender('TRANSGENDER'),
  @JsonValue('GENDER_NEUTRAL')
  genderNeutral('GENDER_NEUTRAL'),
  @JsonValue('NON_BINARY')
  nonBinary('NON_BINARY'),
  @JsonValue('NONE')
  none('NONE');

  final String? value;

  const CreateUserDtoGender(this.value);
}

enum UserEntityGender {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MALE')
  male('MALE'),
  @JsonValue('FEMALE')
  female('FEMALE'),
  @JsonValue('TRANSGENDER')
  transgender('TRANSGENDER'),
  @JsonValue('GENDER_NEUTRAL')
  genderNeutral('GENDER_NEUTRAL'),
  @JsonValue('NON_BINARY')
  nonBinary('NON_BINARY'),
  @JsonValue('NONE')
  none('NONE');

  final String? value;

  const UserEntityGender(this.value);
}

enum UserGetOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const UserGetOrder(this.value);
}

enum AddressGetOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const AddressGetOrder(this.value);
}
