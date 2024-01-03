import 'package:frontend/common/enums/vibration.dart';

class NotificationChannel {
  String id;
  String name;
  String description;
  Vibration vibration;

  NotificationChannel({
    required this.id,
    required this.name,
    required this.description,
    this.vibration = Vibration.regular,
  });
  @override
  String toString() {
    return 'NotificationChannel(id: $id, name: $name, '
        'description: $description, vibrationType: $vibration)';
  }
}
