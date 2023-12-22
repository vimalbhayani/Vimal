
// Authentication Events
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class LoginEvent extends AuthEvent {
  final String username;
  final String password;

  const LoginEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}

class RegisterEvent extends AuthEvent {
  final String username;
  final String password;

  const RegisterEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}

// Authentication States
abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitialState extends AuthState {}

class AuthenticatedState extends AuthState {
  final String username;

  const AuthenticatedState({required this.username});

  @override
  List<Object?> get props => [username];
}

class AuthenticationErrorState extends AuthState {
  final String error;

  const AuthenticationErrorState({required this.error});

  @override
  List<Object?> get props => [error];
}

// Authentication Bloc
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is LoginEvent) {
      // Add your authentication logic here
      // For simplicity, let's just check if the username and password are not empty
      if (event.username.isNotEmpty && event.password.isNotEmpty) {
        yield AuthenticatedState(username: event.username);
      } else {
        yield AuthenticationErrorState(error: 'Invalid username or password');
      }
    } else if (event is RegisterEvent) {
      // Add your registration logic here
      // For simplicity, let's just assume registration is successful
      yield AuthenticatedState(username: event.username);
    }
  }
}
