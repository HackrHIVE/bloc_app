import 'package:bloc_app/src/resources/auth_provider.dart';

class Repository {
  final AuthProvider authProvider = AuthProvider();
  Future<String> login(String email, String password) =>
      authProvider.login(email: email, password: password);
}
