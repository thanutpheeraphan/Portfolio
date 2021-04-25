import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:portfolio/Model/School.dart';

Future<List<School>> fetchData() async {
  final response = await http.get(Uri.http('127.0.0.1:5000', '/mock'));
  if (response.statusCode == 200) {
    List<School> data = (json.decode(response.body) as List)
        .map((i) => School.fromJson(i))
        .toList();
    return data;
  } else {
    throw Exception('Failed to load album');
  }
}
