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
    throw Exception('Failed to load data');
  }
}

Future<String> requestPdf(School data) async {
  // var body = jsonEncode(data.toJson());
  var body = jsonEncode(User(name: "Mon", job: "Gamer").toJson());
  print("Body :::::::: ");
  print(body);
  final response = await http.post(Uri.https('reqres.in', 'api/users'),
      headers: null, body: body);

  if (response.statusCode == 201) {
    print(response.body);
    return "";
  } else {
    throw Exception(response.body);
  }
}
