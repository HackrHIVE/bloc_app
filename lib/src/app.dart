import 'package:bloc_app/src/ui/homepage.dart';
import 'package:bloc_app/src/ui/login.dart';
import 'package:flutter/material.dart';

import 'bloc/authorization_bloc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    authBloc.restoreSession();

    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: createContent(),
    );
  }

  createContent() {
    return StreamBuilder<bool> (
        stream: authBloc.isSessionValid,
        builder: (context, AsyncSnapshot<bool> snapshot){
          if (snapshot.hasData && snapshot.data) {
            return HomeScreen();
          }
          return LoginScreen();
        });
  }
}
