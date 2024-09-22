import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/routes/app_route.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/utils/navigator/navigator_util.dart';
import 'package:nexlab_assignment/utils/validate/validator_util.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {

    // MAP EVENTS TO STATE
    on<InitEvent>(_onInitEvent);
    on<DeleteContactEvent>(_onDeleteContactEvent);
    on<UpdateContactEvent>(_onUpdateContactEvent);
    on<AddContactEvent>(_onAddContactEvent);
    on<LogoutEvent>(_onLogoutEvent);
  }

  Future<void> _onInitEvent(InitEvent event, Emitter<HomeState> emit) async {

    // Fake loading
    emit(const HomeLoadingState());
    await Future.delayed(const Duration(milliseconds: 500));
    emit(HomeLoadedState(event.user));

  }

  // Delete contact
  Future<void> _onDeleteContactEvent(
      DeleteContactEvent event, Emitter<HomeState> emit) async {

    if (state is HomeLoadedState) {

      final curState = state as HomeLoadedState;

      final user = curState.user;

      // Remove contact from list contacts
      final List<ContactUserModel> newListContact =
          List.from(user.contactUsers!)..remove(event.contact);

      // Close dialog and update state
      NavigatorUtil.pop();
      emit(
        curState.copyWith(
            user: user.copyWith(contactUsers: newListContact), message: null),
      );
    }
  }

  // Add contact
  Future<void> _onAddContactEvent(
      AddContactEvent event, Emitter<HomeState> emit) async {

    if (state is HomeLoadedState) {

      final curState = state as HomeLoadedState;

      final user = curState.user;

      // Check contact is valid
      final message = checkContactValid(event.contact, user.contactUsers!);
      List<ContactUserModel> newListContact = List.from(user.contactUsers!);

      // Contact valid then add to list
      if (message == null) {
        newListContact.add(event.contact);
      }

      // Close dialog and update state
      NavigatorUtil.pop();
      emit(
        curState.copyWith(
          user: user.copyWith(contactUsers: newListContact),
          message: null,
        ),
      );
      emit(
        curState.copyWith(
          user: user.copyWith(contactUsers: newListContact),
          message: message,
        ),
      );
    }
  }

  // Update contact
  Future<void> _onUpdateContactEvent(
      UpdateContactEvent event, Emitter<HomeState> emit) async {

    if (state is HomeLoadedState) {

      final curState = state as HomeLoadedState;

      final user = curState.user;

      // Check contact is valid
      final message = checkContactValid(event.newContact, user.contactUsers!);
      List<ContactUserModel> newListContact = List.from(user.contactUsers!);

      // Contact valid then update to list
      if (message == null) {
        final contactIndex = user.contactUsers!.indexWhere(
            (element) => element.phoneNumber == event.oldContact.phoneNumber);

        if (contactIndex != -1) {
          newListContact[contactIndex] = event.newContact;
        }
      }

      // Close dialog and update state
      NavigatorUtil.pop();
      emit(
        curState.copyWith(
          user: user.copyWith(contactUsers: newListContact),
          message: null,
        ),
      );
      emit(
        curState.copyWith(
            user: user.copyWith(contactUsers: newListContact),
            message: message),
      );
    }
  }

  // Logout
  Future<void> _onLogoutEvent(
      LogoutEvent event, Emitter<HomeState> emit) async {

    // Navigate to Login screen
    NavigatorUtil.pushNamedAndRemoveUntil(route: AppRoute.loginScreen);

  }

  String? checkContactValid(
      ContactUserModel newContact, List<ContactUserModel> listContacts) {
        
    // Check name contact is valid
    if (!(newContact.name != null && newContact.name!.isNotEmpty)) {
      return "Please fill name";
    }

    // Check phone number is valid
    else if (!ValidatorUtil.isValidPhoneNumber(newContact.phoneNumber)) {
      return "Please fill valid phone number";
    }

    // Check contact is already in list
    else if (listContacts.any((element) => element == newContact)) {
      return "This contact is already in your contact list";
    }

    // All valid
    else {
      return null;
    }
  }
}
