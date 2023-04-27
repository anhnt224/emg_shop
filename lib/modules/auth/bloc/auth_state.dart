// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emg_shop/modules/auth/models/auth_error.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthState {
  bool isLoading = false;
  AuthError? error;
  User? user;

  AuthState({
    required this.isLoading,
    this.error,
    this.user,
  });

  AuthState.initial() {
    isLoading = false;
  }
}

class AuthStateInProgress extends AuthState {
  AuthStateInProgress() : super(isLoading: true);
}

class AuthStateLoginSuccess extends AuthState {
  AuthStateLoginSuccess({required User user})
      : super(
          isLoading: false,
          user: user,
        );
}

class AuthStateFailure extends AuthState {
  AuthStateFailure({required AuthError error})
      : super(
          isLoading: false,
          error: error,
        );
}
