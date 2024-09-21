// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContactUserModel _$ContactUserModelFromJson(Map<String, dynamic> json) {
  return _ContactUserModel.fromJson(json);
}

/// @nodoc
mixin _$ContactUserModel {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactUserModelCopyWith<ContactUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUserModelCopyWith<$Res> {
  factory $ContactUserModelCopyWith(
          ContactUserModel value, $Res Function(ContactUserModel) then) =
      _$ContactUserModelCopyWithImpl<$Res, ContactUserModel>;
  @useResult
  $Res call({String? phoneNumber, String? name});
}

/// @nodoc
class _$ContactUserModelCopyWithImpl<$Res, $Val extends ContactUserModel>
    implements $ContactUserModelCopyWith<$Res> {
  _$ContactUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactUserModelImplCopyWith<$Res>
    implements $ContactUserModelCopyWith<$Res> {
  factory _$$ContactUserModelImplCopyWith(_$ContactUserModelImpl value,
          $Res Function(_$ContactUserModelImpl) then) =
      __$$ContactUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phoneNumber, String? name});
}

/// @nodoc
class __$$ContactUserModelImplCopyWithImpl<$Res>
    extends _$ContactUserModelCopyWithImpl<$Res, _$ContactUserModelImpl>
    implements _$$ContactUserModelImplCopyWith<$Res> {
  __$$ContactUserModelImplCopyWithImpl(_$ContactUserModelImpl _value,
      $Res Function(_$ContactUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ContactUserModelImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactUserModelImpl implements _ContactUserModel {
  const _$ContactUserModelImpl({this.phoneNumber, this.name});

  factory _$ContactUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactUserModelImplFromJson(json);

  @override
  final String? phoneNumber;
  @override
  final String? name;

  @override
  String toString() {
    return 'ContactUserModel(phoneNumber: $phoneNumber, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUserModelImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUserModelImplCopyWith<_$ContactUserModelImpl> get copyWith =>
      __$$ContactUserModelImplCopyWithImpl<_$ContactUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactUserModelImplToJson(
      this,
    );
  }
}

abstract class _ContactUserModel implements ContactUserModel {
  const factory _ContactUserModel(
      {final String? phoneNumber, final String? name}) = _$ContactUserModelImpl;

  factory _ContactUserModel.fromJson(Map<String, dynamic> json) =
      _$ContactUserModelImpl.fromJson;

  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ContactUserModelImplCopyWith<_$ContactUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
