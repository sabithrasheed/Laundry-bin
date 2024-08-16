import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:major_project/models/login_model.dart';

class LoginProvider with ChangeNotifier {
  late LoginModel _user;

  LoginModel get user => _user;

  Future<void> loginUser(String email, String password) async {
    final url =
        Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/login');
    final body = json.encode({
      "email": email,
      "password": password,
    });

    final response = await http
        .post(url, body: body, headers: {'Content-Type': 'application/json'});

    final responseData = json.decode(response.body);
    print(response.body);

    if (response.statusCode == 200) {
      final data = responseData;
      if (data == null) {
        throw Exception('No data received');
      }
      _user = LoginModel.fromJson(data);
      notifyListeners();
    } else {
      throw Exception(responseData['message']);
    }
  }
}
