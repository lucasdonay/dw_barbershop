import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_register_vm.g.dart';

enum UserRegisterStateStus {
  initial,
  success,
  error,
}

@riverpod
class UserRegisterVm extends _$UserRegisterVm {
  @override
  UserRegisterStateStus build() => UserRegisterStateStus.initial;

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) {
    final userRegisterService = ref.watch();
  }
}
