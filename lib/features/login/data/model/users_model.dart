import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';

part 'users_model.freezed.dart';

part 'users_model.g.dart';

@Freezed(fromJson: true)
class UsersModel with _$UsersModel {

  const factory UsersModel({
    String? phoneNumber,
    List<ContactUserModel>? contactUsers,
  }) = _UsersModel;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
      
}
