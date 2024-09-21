// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersModelImpl _$$UsersModelImplFromJson(Map<String, dynamic> json) =>
    _$UsersModelImpl(
      phoneNumber: json['phoneNumber'] as String?,
      contactUsers: (json['contactUsers'] as List<dynamic>?)
          ?.map((e) => ContactUserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsersModelImplToJson(_$UsersModelImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'contactUsers': instance.contactUsers,
    };
