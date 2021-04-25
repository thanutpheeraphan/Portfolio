import 'package:flutter/material.dart';

class Record {
  String name;
  List<String> reports;

  Record({@required this.name, @required this.reports});

  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
      name: json['name'],
      reports: json['reports'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'reports': reports,
      };
}
