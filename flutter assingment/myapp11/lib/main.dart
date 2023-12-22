import 'package:flutter/material.dart';

import 'auth_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login and Registration',
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc()),
        ],
        child: AuthScreen(),
      ),
    );
  }
}
