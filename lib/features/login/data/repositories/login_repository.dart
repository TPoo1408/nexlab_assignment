import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';

@lazySingleton
class LoginRepository {
  Future<List<UsersModel>> getAllUserInfo() async {
    try {
      final response = await rootBundle.loadString('assets/json/fake_data.json');
      List<UsersModel> data;
      data = (json.decode(response) as List)
          .map((e) => UsersModel.fromJson(e))
          .toList(); 
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
