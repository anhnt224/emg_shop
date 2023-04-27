import 'package:bloc/bloc.dart';
import 'package:emg_shop/bloc/app_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void authenticate(User user, String token) {
    emit(AppStateAuthenticated(token: token, user: user));
  }

  void logout() {
    emit(const UnAuthenticated());
  }
}
