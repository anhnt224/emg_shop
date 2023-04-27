// ignore_for_file: public_member_api_docs, sort_constructors_first
// authenticated & unAuthenticated

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

@immutable
class AppState {
  final String? token;
  final User? user;

  const AppState({
    this.token,
    this.user,
  });
}

class AppStateAuthenticated extends AppState {
  const AppStateAuthenticated({required String token, required User user})
      : super(token: token, user: user);
}

class UnAuthenticated extends AppState {
  const UnAuthenticated() : super();
}
