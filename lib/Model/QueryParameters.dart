class QueryParameters {
  String _school;
  String _record;
  String _report;

  QueryParameters(this._school, this._record, this._report);

  String getSchool() {
    return this._school;
  }

  String getRecord() {
    return this._record;
  }

  String getReport() {
    return this._report;
  }
}
