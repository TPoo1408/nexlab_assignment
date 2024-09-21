import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nexlab_assignment/features/login/data/repositories/login_repository.dart';
import 'package:nexlab_assignment/features/login/presentation/bloc/login_state_event.dart';
import 'package:nexlab_assignment/utils/validate/validator_util.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository _loginRepository;
  // MAP EVENTS TO STATE
  LoginBloc(this._loginRepository) : super(const LoginInitialState()) {
    on<InitEvent>(_onInitEvent);
    on<OnLoginEvent>(_onLoginEvent);
  }

  Future<void> _onInitEvent(InitEvent event, Emitter<LoginState> emit) async {}

  Future<void> _onLoginEvent(
      OnLoginEvent event, Emitter<LoginState> emit) async {
    try {
      emit(const LoginLoadingState());
      await Future.delayed(const Duration(milliseconds: 500));
      if (!ValidatorUtil.isValidPhoneNumber(event.phoneNumber)){
        emit(const LoginErrorState("Please fill valid phone number"));
        return;
      }
      final data = await _loginRepository.getAllUserInfo();
      for (var user in data) {
        if (user.phoneNumber == event.phoneNumber) {
          emit(LoginSuccessState(user));
          return;
        }
      }
      emit(const LoginErrorState("User not found"));
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }
}
