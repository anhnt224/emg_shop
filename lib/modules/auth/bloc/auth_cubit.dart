import 'package:bloc/bloc.dart';
import 'package:emg_shop/modules/auth/bloc/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/auth_error.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void login(String username, String password) async {
    // loading
    emit(AuthStateInProgress());

    // xử lí, lấy dữ liệu
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: username, password: password);
      emit(AuthStateLoginSuccess(user: credential.user!));
    } on FirebaseAuthException catch (e) {
      emit(AuthStateFailure(error: AuthError.from(e)));
    }
  }
}
