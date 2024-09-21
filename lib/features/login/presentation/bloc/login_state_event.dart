import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';

part 'login_state_event.freezed.dart';

@Freezed(equal: true)
class LoginState with _$LoginState {

  const factory LoginState.initial() = LoginInitialState;

  const factory LoginState.loading() = LoginLoadingState;

  const factory LoginState.error(String message) = LoginErrorState;

  const factory LoginState.success(UsersModel user) = LoginSuccessState;

}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.init() = InitEvent;

  const factory LoginEvent.login(String phoneNumber) = OnLoginEvent;
}