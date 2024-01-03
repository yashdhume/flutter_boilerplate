import 'package:frontend/api/generated/api.swagger.dart';

enum OS { ios, android }

extension OSExt on OS {
  CreateUserDeviceDtoOs get toCreateUserDeviceDto {
    switch (this) {
      case OS.ios:
        return CreateUserDeviceDtoOs.ios;
      case OS.android:
        return CreateUserDeviceDtoOs.android;
    }
  }

  UpdateUserDeviceDtoOs get toUpdateUserDeviceDto {
    switch (this) {
      case OS.ios:
        return UpdateUserDeviceDtoOs.ios;
      case OS.android:
        return UpdateUserDeviceDtoOs.android;
    }
  }

  UserDeviceEntityOs get toUserDeviceEntityDto {
    switch (this) {
      case OS.ios:
        return UserDeviceEntityOs.ios;
      case OS.android:
        return UserDeviceEntityOs.android;
    }
  }
}
