import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/app/user/logic/service/user_service.dart';
import 'package:frontend/app/user/logic/state/user_state.dart';
import 'package:frontend/common/extensions/object.dart';

final userProvider = StateNotifierProvider<UserNotifierProvider, UserState>(
  (ref) => UserNotifierProvider(ref)..fetch(),
);

class UserNotifierProvider extends StateNotifier<UserState> {
  final Ref ref;
  final UserService userService;
  UserNotifierProvider(this.ref)
      : userService = UserService(ref),
        super(const UserState.loading('init'));

  Future<void> fetch() async {
    final response = await userService.getUser();
    if (!response.isSuccessful || response.body == null) {
      if (response.statusCode == 404) {
        final firebaseUser = FirebaseAuth.instance.currentUser;
        if (firebaseUser == null) {
          state = const UserState.error(null);
          return;
        }
        state = UserState.userNotRegistered(firebaseUser);
        return;
      }
      state = UserState.error(response.error.toApiError);
      return;
    }
    state = UserState.user(response.body!);
  }
}
