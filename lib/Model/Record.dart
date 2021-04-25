import 'package:flutter/material.dart';

class Record {
  final String name;
  final List<String> reports;

  Record({@required this.name, @required this.reports});

  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
      name: json['name'],
      reports: json['reports'].cast<String>(),
    );
  }
}
