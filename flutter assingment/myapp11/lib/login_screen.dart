import 'package:flutter/material.dart';
import 'package:myapp11/auth_bloc.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trigger the login event
                BlocProvider.of<AuthBloc>(context).add(LoginEvent(
                  username: _usernameController.text,
                  password: _passwordController.text,
                ));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
