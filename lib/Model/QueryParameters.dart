import 'package:portfolio/Model/Record.dart';
import 'package:portfolio/Model/School.dart';

class QueryParameters {
  int index;
  School school;
  Record record;
  String report;

  QueryParameters(this.index, this.school, this.record, this.report);
}
