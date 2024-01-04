import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum CreateUserDeviceDtoOs {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('IOS')
  ios('IOS'),
  @JsonValue('ANDROID')
  android('ANDROID');

  final String? value;

  const CreateUserDeviceDtoOs(this.value);
}

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

enum UserDeviceEntityOs {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('IOS')
  ios('IOS'),
  @JsonValue('ANDROID')
  android('ANDROID');

  final String? value;

  const UserDeviceEntityOs(this.value);
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

enum UpdateUserDeviceDtoOs {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('IOS')
  ios('IOS'),
  @JsonValue('ANDROID')
  android('ANDROID');

  final String? value;

  const UpdateUserDeviceDtoOs(this.value);
}

enum CreateNotificationChannelDTOUserRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3);

  final int? value;

  const CreateNotificationChannelDTOUserRole(this.value);
}

enum UpdateNotificationChannelDTOUserRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3);

  final int? value;

  const UpdateNotificationChannelDTOUserRole(this.value);
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

enum UserDeviceGetOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const UserDeviceGetOrder(this.value);
}

enum NotificationChannelGetOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const NotificationChannelGetOrder(this.value);
}
