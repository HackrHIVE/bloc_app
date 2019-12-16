import 'package:bloc_app/src/bloc/authorization_bloc.dart';

class HomeBloc {
  logoutUser() {
    authBloc.closeSession();
  }
}
