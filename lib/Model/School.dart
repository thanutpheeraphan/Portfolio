import 'package:flutter/material.dart';
import 'package:portfolio/Model/Record.dart';

class School {
  String name;
  List<Record> records;

  School({@required this.name, @required this.records});

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      name: json['name'],
      records: List.from(json['records'])
          .map((record) => Record.fromJson(record))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'records': records.map((record) => record.toJson()).toList(),
      };
}

class User {
  String name;
  String job;

  User({@required this.name, @required this.job});

  Map<String, dynamic> toJson() => {
        'name': name,
        'job': job,
      };
}
