abstract class AppStates {}

class InitState extends AppStates {}

class ChangeThemModeState extends AppStates {}

class LoginLoadingState extends AppStates {}

class LoginSuccessState extends AppStates {}

class LoginErrorState extends AppStates {
  final String error;

  LoginErrorState(this.error);
}
