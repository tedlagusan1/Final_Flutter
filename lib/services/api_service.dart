import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/author_model.dart';

class ApiService {
  static Future<List<Author>> fetchAuthors() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Author.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load authors');
    }
  }
}
