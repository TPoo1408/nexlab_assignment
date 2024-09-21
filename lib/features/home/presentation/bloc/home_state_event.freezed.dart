// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersModel user, String? message) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersModel user, String? message)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersModel user, String? message)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitialStateImplCopyWith<$Res> {
  factory _$$HomeInitialStateImplCopyWith(_$HomeInitialStateImpl value,
          $Res Function(_$HomeInitialStateImpl) then) =
      __$$HomeInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialStateImpl>
    implements _$$HomeInitialStateImplCopyWith<$Res> {
  __$$HomeInitialStateImplCopyWithImpl(_$HomeInitialStateImpl _value,
      $Res Function(_$HomeInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitialStateImpl implements HomeInitialState {
  const _$HomeInitialStateImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersModel user, String? message) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersModel user, String? message)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersModel user, String? message)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitialState implements HomeState {
  const factory HomeInitialState() = _$HomeInitialStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadingStateImplCopyWith<$Res> {
  factory _$$HomeLoadingStateImplCopyWith(_$HomeLoadingStateImpl value,
          $Res Function(_$HomeLoadingStateImpl) then) =
      __$$HomeLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingStateImpl>
    implements _$$HomeLoadingStateImplCopyWith<$Res> {
  __$$HomeLoadingStateImplCopyWithImpl(_$HomeLoadingStateImpl _value,
      $Res Function(_$HomeLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingStateImpl implements HomeLoadingState {
  const _$HomeLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersModel user, String? message) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersModel user, String? message)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersModel user, String? message)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingState implements HomeState {
  const factory HomeLoadingState() = _$HomeLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeLoadedStateImplCopyWith<$Res> {
  factory _$$HomeLoadedStateImplCopyWith(_$HomeLoadedStateImpl value,
          $Res Function(_$HomeLoadedStateImpl) then) =
      __$$HomeLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersModel user, String? message});

  $UsersModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$HomeLoadedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadedStateImpl>
    implements _$$HomeLoadedStateImplCopyWith<$Res> {
  __$$HomeLoadedStateImplCopyWithImpl(
      _$HomeLoadedStateImpl _value, $Res Function(_$HomeLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = freezed,
  }) {
    return _then(_$HomeLoadedStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UsersModel,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UsersModelCopyWith<$Res> get user {
    return $UsersModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$HomeLoadedStateImpl implements HomeLoadedState {
  const _$HomeLoadedStateImpl(this.user, {this.message});

  @override
  final UsersModel user;
  @override
  final String? message;

  @override
  String toString() {
    return 'HomeState.loaded(user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      __$$HomeLoadedStateImplCopyWithImpl<_$HomeLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UsersModel user, String? message) loaded,
  }) {
    return loaded(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UsersModel user, String? message)? loaded,
  }) {
    return loaded?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UsersModel user, String? message)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitialState value)? initial,
    TResult? Function(HomeLoadingState value)? loading,
    TResult? Function(HomeLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoadedState implements HomeState {
  const factory HomeLoadedState(final UsersModel user,
      {final String? message}) = _$HomeLoadedStateImpl;

  UsersModel get user;
  String? get message;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateImplCopyWith<_$HomeLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersModel user) init,
    required TResult Function(ContactUserModel contact) deleteContact,
    required TResult Function(
            ContactUserModel oldContact, ContactUserModel newContact)
        updateContact,
    required TResult Function(ContactUserModel contact) addContact,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersModel user)? init,
    TResult? Function(ContactUserModel contact)? deleteContact,
    TResult? Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult? Function(ContactUserModel contact)? addContact,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersModel user)? init,
    TResult Function(ContactUserModel contact)? deleteContact,
    TResult Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult Function(ContactUserModel contact)? addContact,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(DeleteContactEvent value) deleteContact,
    required TResult Function(UpdateContactEvent value) updateContact,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(DeleteContactEvent value)? deleteContact,
    TResult? Function(UpdateContactEvent value)? updateContact,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(DeleteContactEvent value)? deleteContact,
    TResult Function(UpdateContactEvent value)? updateContact,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitEventImplCopyWith<$Res> {
  factory _$$InitEventImplCopyWith(
          _$InitEventImpl value, $Res Function(_$InitEventImpl) then) =
      __$$InitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsersModel user});

  $UsersModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$InitEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitEventImpl>
    implements _$$InitEventImplCopyWith<$Res> {
  __$$InitEventImplCopyWithImpl(
      _$InitEventImpl _value, $Res Function(_$InitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$InitEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UsersModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UsersModelCopyWith<$Res> get user {
    return $UsersModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitEventImpl implements InitEvent {
  const _$InitEventImpl(this.user);

  @override
  final UsersModel user;

  @override
  String toString() {
    return 'HomeEvent.init(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEventImplCopyWith<_$InitEventImpl> get copyWith =>
      __$$InitEventImplCopyWithImpl<_$InitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersModel user) init,
    required TResult Function(ContactUserModel contact) deleteContact,
    required TResult Function(
            ContactUserModel oldContact, ContactUserModel newContact)
        updateContact,
    required TResult Function(ContactUserModel contact) addContact,
    required TResult Function() logout,
  }) {
    return init(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersModel user)? init,
    TResult? Function(ContactUserModel contact)? deleteContact,
    TResult? Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult? Function(ContactUserModel contact)? addContact,
    TResult? Function()? logout,
  }) {
    return init?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersModel user)? init,
    TResult Function(ContactUserModel contact)? deleteContact,
    TResult Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult Function(ContactUserModel contact)? addContact,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(DeleteContactEvent value) deleteContact,
    required TResult Function(UpdateContactEvent value) updateContact,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(DeleteContactEvent value)? deleteContact,
    TResult? Function(UpdateContactEvent value)? updateContact,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(DeleteContactEvent value)? deleteContact,
    TResult Function(UpdateContactEvent value)? updateContact,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements HomeEvent {
  const factory InitEvent(final UsersModel user) = _$InitEventImpl;

  UsersModel get user;
  @JsonKey(ignore: true)
  _$$InitEventImplCopyWith<_$InitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteContactEventImplCopyWith<$Res> {
  factory _$$DeleteContactEventImplCopyWith(_$DeleteContactEventImpl value,
          $Res Function(_$DeleteContactEventImpl) then) =
      __$$DeleteContactEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactUserModel contact});

  $ContactUserModelCopyWith<$Res> get contact;
}

/// @nodoc
class __$$DeleteContactEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteContactEventImpl>
    implements _$$DeleteContactEventImplCopyWith<$Res> {
  __$$DeleteContactEventImplCopyWithImpl(_$DeleteContactEventImpl _value,
      $Res Function(_$DeleteContactEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$DeleteContactEventImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactUserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactUserModelCopyWith<$Res> get contact {
    return $ContactUserModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$DeleteContactEventImpl implements DeleteContactEvent {
  const _$DeleteContactEventImpl(this.contact);

  @override
  final ContactUserModel contact;

  @override
  String toString() {
    return 'HomeEvent.deleteContact(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteContactEventImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteContactEventImplCopyWith<_$DeleteContactEventImpl> get copyWith =>
      __$$DeleteContactEventImplCopyWithImpl<_$DeleteContactEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersModel user) init,
    required TResult Function(ContactUserModel contact) deleteContact,
    required TResult Function(
            ContactUserModel oldContact, ContactUserModel newContact)
        updateContact,
    required TResult Function(ContactUserModel contact) addContact,
    required TResult Function() logout,
  }) {
    return deleteContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersModel user)? init,
    TResult? Function(ContactUserModel contact)? deleteContact,
    TResult? Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult? Function(ContactUserModel contact)? addContact,
    TResult? Function()? logout,
  }) {
    return deleteContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersModel user)? init,
    TResult Function(ContactUserModel contact)? deleteContact,
    TResult Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult Function(ContactUserModel contact)? addContact,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (deleteContact != null) {
      return deleteContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(DeleteContactEvent value) deleteContact,
    required TResult Function(UpdateContactEvent value) updateContact,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return deleteContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(DeleteContactEvent value)? deleteContact,
    TResult? Function(UpdateContactEvent value)? updateContact,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return deleteContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(DeleteContactEvent value)? deleteContact,
    TResult Function(UpdateContactEvent value)? updateContact,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (deleteContact != null) {
      return deleteContact(this);
    }
    return orElse();
  }
}

abstract class DeleteContactEvent implements HomeEvent {
  const factory DeleteContactEvent(final ContactUserModel contact) =
      _$DeleteContactEventImpl;

  ContactUserModel get contact;
  @JsonKey(ignore: true)
  _$$DeleteContactEventImplCopyWith<_$DeleteContactEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateContactEventImplCopyWith<$Res> {
  factory _$$UpdateContactEventImplCopyWith(_$UpdateContactEventImpl value,
          $Res Function(_$UpdateContactEventImpl) then) =
      __$$UpdateContactEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactUserModel oldContact, ContactUserModel newContact});

  $ContactUserModelCopyWith<$Res> get oldContact;
  $ContactUserModelCopyWith<$Res> get newContact;
}

/// @nodoc
class __$$UpdateContactEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateContactEventImpl>
    implements _$$UpdateContactEventImplCopyWith<$Res> {
  __$$UpdateContactEventImplCopyWithImpl(_$UpdateContactEventImpl _value,
      $Res Function(_$UpdateContactEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldContact = null,
    Object? newContact = null,
  }) {
    return _then(_$UpdateContactEventImpl(
      null == oldContact
          ? _value.oldContact
          : oldContact // ignore: cast_nullable_to_non_nullable
              as ContactUserModel,
      null == newContact
          ? _value.newContact
          : newContact // ignore: cast_nullable_to_non_nullable
              as ContactUserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactUserModelCopyWith<$Res> get oldContact {
    return $ContactUserModelCopyWith<$Res>(_value.oldContact, (value) {
      return _then(_value.copyWith(oldContact: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactUserModelCopyWith<$Res> get newContact {
    return $ContactUserModelCopyWith<$Res>(_value.newContact, (value) {
      return _then(_value.copyWith(newContact: value));
    });
  }
}

/// @nodoc

class _$UpdateContactEventImpl implements UpdateContactEvent {
  const _$UpdateContactEventImpl(this.oldContact, this.newContact);

  @override
  final ContactUserModel oldContact;
  @override
  final ContactUserModel newContact;

  @override
  String toString() {
    return 'HomeEvent.updateContact(oldContact: $oldContact, newContact: $newContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateContactEventImpl &&
            (identical(other.oldContact, oldContact) ||
                other.oldContact == oldContact) &&
            (identical(other.newContact, newContact) ||
                other.newContact == newContact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldContact, newContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateContactEventImplCopyWith<_$UpdateContactEventImpl> get copyWith =>
      __$$UpdateContactEventImplCopyWithImpl<_$UpdateContactEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersModel user) init,
    required TResult Function(ContactUserModel contact) deleteContact,
    required TResult Function(
            ContactUserModel oldContact, ContactUserModel newContact)
        updateContact,
    required TResult Function(ContactUserModel contact) addContact,
    required TResult Function() logout,
  }) {
    return updateContact(oldContact, newContact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersModel user)? init,
    TResult? Function(ContactUserModel contact)? deleteContact,
    TResult? Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult? Function(ContactUserModel contact)? addContact,
    TResult? Function()? logout,
  }) {
    return updateContact?.call(oldContact, newContact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersModel user)? init,
    TResult Function(ContactUserModel contact)? deleteContact,
    TResult Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult Function(ContactUserModel contact)? addContact,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (updateContact != null) {
      return updateContact(oldContact, newContact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(DeleteContactEvent value) deleteContact,
    required TResult Function(UpdateContactEvent value) updateContact,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return updateContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(DeleteContactEvent value)? deleteContact,
    TResult? Function(UpdateContactEvent value)? updateContact,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return updateContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(DeleteContactEvent value)? deleteContact,
    TResult Function(UpdateContactEvent value)? updateContact,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (updateContact != null) {
      return updateContact(this);
    }
    return orElse();
  }
}

abstract class UpdateContactEvent implements HomeEvent {
  const factory UpdateContactEvent(final ContactUserModel oldContact,
      final ContactUserModel newContact) = _$UpdateContactEventImpl;

  ContactUserModel get oldContact;
  ContactUserModel get newContact;
  @JsonKey(ignore: true)
  _$$UpdateContactEventImplCopyWith<_$UpdateContactEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddContactEventImplCopyWith<$Res> {
  factory _$$AddContactEventImplCopyWith(_$AddContactEventImpl value,
          $Res Function(_$AddContactEventImpl) then) =
      __$$AddContactEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContactUserModel contact});

  $ContactUserModelCopyWith<$Res> get contact;
}

/// @nodoc
class __$$AddContactEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddContactEventImpl>
    implements _$$AddContactEventImplCopyWith<$Res> {
  __$$AddContactEventImplCopyWithImpl(
      _$AddContactEventImpl _value, $Res Function(_$AddContactEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$AddContactEventImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as ContactUserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactUserModelCopyWith<$Res> get contact {
    return $ContactUserModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$AddContactEventImpl implements AddContactEvent {
  const _$AddContactEventImpl(this.contact);

  @override
  final ContactUserModel contact;

  @override
  String toString() {
    return 'HomeEvent.addContact(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContactEventImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContactEventImplCopyWith<_$AddContactEventImpl> get copyWith =>
      __$$AddContactEventImplCopyWithImpl<_$AddContactEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersModel user) init,
    required TResult Function(ContactUserModel contact) deleteContact,
    required TResult Function(
            ContactUserModel oldContact, ContactUserModel newContact)
        updateContact,
    required TResult Function(ContactUserModel contact) addContact,
    required TResult Function() logout,
  }) {
    return addContact(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersModel user)? init,
    TResult? Function(ContactUserModel contact)? deleteContact,
    TResult? Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult? Function(ContactUserModel contact)? addContact,
    TResult? Function()? logout,
  }) {
    return addContact?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersModel user)? init,
    TResult Function(ContactUserModel contact)? deleteContact,
    TResult Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult Function(ContactUserModel contact)? addContact,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(DeleteContactEvent value) deleteContact,
    required TResult Function(UpdateContactEvent value) updateContact,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(DeleteContactEvent value)? deleteContact,
    TResult? Function(UpdateContactEvent value)? updateContact,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return addContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(DeleteContactEvent value)? deleteContact,
    TResult Function(UpdateContactEvent value)? updateContact,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class AddContactEvent implements HomeEvent {
  const factory AddContactEvent(final ContactUserModel contact) =
      _$AddContactEventImpl;

  ContactUserModel get contact;
  @JsonKey(ignore: true)
  _$$AddContactEventImplCopyWith<_$AddContactEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'HomeEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsersModel user) init,
    required TResult Function(ContactUserModel contact) deleteContact,
    required TResult Function(
            ContactUserModel oldContact, ContactUserModel newContact)
        updateContact,
    required TResult Function(ContactUserModel contact) addContact,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsersModel user)? init,
    TResult? Function(ContactUserModel contact)? deleteContact,
    TResult? Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult? Function(ContactUserModel contact)? addContact,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsersModel user)? init,
    TResult Function(ContactUserModel contact)? deleteContact,
    TResult Function(ContactUserModel oldContact, ContactUserModel newContact)?
        updateContact,
    TResult Function(ContactUserModel contact)? addContact,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(DeleteContactEvent value) deleteContact,
    required TResult Function(UpdateContactEvent value) updateContact,
    required TResult Function(AddContactEvent value) addContact,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(DeleteContactEvent value)? deleteContact,
    TResult? Function(UpdateContactEvent value)? updateContact,
    TResult? Function(AddContactEvent value)? addContact,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(DeleteContactEvent value)? deleteContact,
    TResult Function(UpdateContactEvent value)? updateContact,
    TResult Function(AddContactEvent value)? addContact,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements HomeEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}
