import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:nexlab_assignment/features/login/data/model/users_model.dart';

@lazySingleton
class LoginRepository {

  // Get All User Info from Fake Data JSON
  Future<List<UsersModel>> getAllUserInfo() async {
    try {

      // Load Fake Data JSON
      final response = await rootBundle.loadString('assets/json/fake_data.json');
      List<UsersModel> data;

      // Decode JSON to List<UsersModel>
      data = (json.decode(response) as List)
          .map((e) => UsersModel.fromJson(e))
          .toList(); 
      
      return data;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

}
