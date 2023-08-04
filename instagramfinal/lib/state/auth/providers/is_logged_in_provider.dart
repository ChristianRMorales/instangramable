import 'package:instagramfinal/state/auth/models/auth_result.dart';
import 'package:instagramfinal/state/auth/providers/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_logged_in_provider.g.dart';

@riverpod
bool isLoggedIn(IsLoggedInRef ref) {
  final authProvider = ref.watch(authStateProvider);
  // ignore: unrelated_type_equality_checks
  return authProvider.result == AuthResult.success;
}
