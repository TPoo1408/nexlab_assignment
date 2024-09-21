import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';

part 'home_state_event.freezed.dart';

@Freezed(equal: true)
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;

  const factory HomeState.loading() = HomeLoadingState;

  const factory HomeState.loaded(UsersModel user, {String? message}) = HomeLoadedState;

}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init(UsersModel user) = InitEvent;

  const factory HomeEvent.deleteContact(ContactUserModel contact) = DeleteContactEvent;

  const factory HomeEvent.updateContact(ContactUserModel oldContact, ContactUserModel newContact) = UpdateContactEvent;

  const factory HomeEvent.addContact(ContactUserModel contact) = AddContactEvent;

  const factory HomeEvent.logout() = LogoutEvent;

}