import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_user_model.freezed.dart';

part 'contact_user_model.g.dart';

@Freezed(fromJson: true)
class ContactUserModel with _$ContactUserModel {
  const factory ContactUserModel({
    String? phoneNumber,
    String? name,
  }) = _ContactUserModel;

  factory ContactUserModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUserModelFromJson(json);
  
}
