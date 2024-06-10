import 'dart:convert';
import 'package:app_soslost/models/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const String baseUrl = 'http://localhost:4000/user';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/getUser'));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<User> users = body.map((dynamic item) => User.fromJson(item)).toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}