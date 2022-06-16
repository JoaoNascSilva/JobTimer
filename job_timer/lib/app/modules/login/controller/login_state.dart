part of 'login_controller.dart';

enum LoginStatus { initial, loading, failure }

class LoginState extends Equatable {
  @override
  List<Object?> get props => [loginStatus, errorMessage];

  final LoginStatus loginStatus;
  final String? errorMessage;

  const LoginState._({
    required this.loginStatus,
    this.errorMessage,
  });

  const LoginState.initial() : this._(loginStatus: LoginStatus.initial);

  LoginState copyWith({
    LoginStatus? loginStatus,
    String? errorMessage,
  }) {
    return LoginState._(
      loginStatus: loginStatus ?? this.loginStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
