import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Login and Registration'),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthInitialState) {
            return InitialScreen();
          } else if (state is AuthenticatedState) {
            return AuthenticatedScreen(username: state.username);
          } else if (state is AuthenticationErrorState) {
            return ErrorScreen(error: state.error);
          } else {
            return Container(); // Placeholder for other states
          }
        },
      ),
    );
  }
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigate to the login screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('Login'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to the registration screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterScreen()),
              );
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}

class AuthenticatedScreen extends StatelessWidget {
  final String username;

  AuthenticatedScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome, $username!'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Logout and go back to the initial screen
              BlocProvider.of<AuthBloc>(context).add(AuthEvent());
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  final String error;

  ErrorScreen({required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $error'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Go back to the initial screen
              BlocProvider.of<AuthBloc>(context).add(AuthEvent());
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
