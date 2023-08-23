import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_register_page.dart';

enum UserRegisterStateStus {
  initial,
  registerSuccess,
  error,
}

@riverpod
class UserRegisterVm extends _$UserRegisterVm {
  @override
  UserRegisterStateStus build() => UserRegisterStateStus.initial;
}
