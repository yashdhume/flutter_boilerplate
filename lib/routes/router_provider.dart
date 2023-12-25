import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/routes/router_config.dart';

final routerProvider = Provider((ref) => AppRouterConfig());
