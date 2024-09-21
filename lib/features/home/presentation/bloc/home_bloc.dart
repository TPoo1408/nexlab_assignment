import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';
import 'package:nexlab_assignment/utils/validate/validator_util.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    on<InitEvent>(_onInitEvent);
    on<DeleteContactEvent>(_onDeleteContactEvent);
    on<UpdateContactEvent>(_onUpdateContactEvent);
    on<AddContactEvent>(_onAddContactEvent);
    on<LogoutEvent>(_onLogoutEvent);
  }

  Future<void> _onInitEvent(InitEvent event, Emitter<HomeState> emit) async {
    emit(const HomeLoadingState());
    await Future.delayed(const Duration(milliseconds: 500));
    emit(HomeLoadedState(event.user));
  }

  Future<void> _onDeleteContactEvent(
      DeleteContactEvent event, Emitter<HomeState> emit) async {
    if (state is HomeLoadedState) {
      final curState = state as HomeLoadedState;
      final user = curState.user;
      final List<ContactUserModel> newListContact =
          List.from(user.contactUsers!)..remove(event.contact);
      NavigatorUtil.pop();
      emit(curState.copyWith(
          user: user.copyWith(contactUsers: newListContact), message: null));
    }
  }

  Future<void> _onAddContactEvent(
      AddContactEvent event, Emitter<HomeState> emit) async {
    if (state is HomeLoadedState) {
      final curState = state as HomeLoadedState;
      final user = curState.user;
      final message = checkContactValid(event.contact, user.contactUsers!);
      List<ContactUserModel> newListContact = List.from(user.contactUsers!);

      if (message == null) {
        newListContact.add(event.contact);
        NavigatorUtil.pop();
      }

      emit(
        curState.copyWith(
          user: user.copyWith(contactUsers: newListContact),
          message: message,
        ),
      );
    }
  }

  Future<void> _onUpdateContactEvent(
      UpdateContactEvent event, Emitter<HomeState> emit) async {
    if (state is HomeLoadedState) {
      final curState = state as HomeLoadedState;
      final user = curState.user;
      final message = checkContactValid(event.newContact, user.contactUsers!);
      List<ContactUserModel> newListContact = List.from(user.contactUsers!);

      if (message == null) {
        final contactIndex = user.contactUsers!.indexWhere(
            (element) => element.phoneNumber == event.oldContact.phoneNumber);

        if (contactIndex != -1) {
          newListContact[contactIndex] = event.newContact;
        }
        NavigatorUtil.pop();
      }

      emit(
        curState.copyWith(
            user: user.copyWith(contactUsers: newListContact),
            message: message),
      );
    }
  }

  Future<void> _onLogoutEvent(
      LogoutEvent event, Emitter<HomeState> emit) async {
    NavigatorUtil.pushNamedAndRemoveUntil(route: AppRoute.loginScreen);
  }

  String? checkContactValid(
      ContactUserModel newContact, List<ContactUserModel> listContacts) {
    if (!(newContact.name != null && newContact.name!.isNotEmpty)) {
      return "Please fill name";
    } else if (!ValidatorUtil.isValidPhoneNumber(newContact.phoneNumber)) {
      return "Please fill valid phone number";
    } else if (listContacts.any((element) => element == newContact)) {
      return "This phone number is already in your contact list";
    } else {
      return null;
    }
  }
}
