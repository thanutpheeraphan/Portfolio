import 'package:flutter/material.dart';
import 'package:portfolio/Model/Record.dart';

class School {
  final String name;
  final List<Record> records;

  School({@required this.name, @required this.records});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      name: json['name'],
      records: List.from(json['records'])
          .map((record) => Record.fromJson(record))
          .toList(),
    );
  }
}
