import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/DropDownForm.dart';
import 'package:portfolio/Service/Service.dart';

import 'Model/QueryParameters.dart';
import 'Model/School.dart';

class FormRecord extends StatefulWidget {
  List<QueryParameters> paramList;
  FormRecord(this.paramList);
  @override
  _FormRecordState createState() => _FormRecordState(this.paramList);
}

class _FormRecordState extends State<FormRecord> {
  int count = 1;
  Future<List<School>> data;
  List<QueryParameters> paramList;

  @override
  void initState() {
    super.initState();
    data = fetchData();
  }

  _FormRecordState(this.paramList);

  void sendParam(int index, QueryParameters newParam) {
    var check = false;

    for (QueryParameters param in paramList) {
      if (param.index == index) {
        param = newParam;
        check = true;
      }
    }

    if (!check) {
      paramList.add(newParam);
    }

    print("inner ::");
    print(paramList.length);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<School>>(
      future: data,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            constraints: BoxConstraints(
                maxHeight: double.infinity, maxWidth: double.infinity),
            decoration: BoxDecoration(
              color: Color(0xfffFFC784),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        thickness: 2,
                      ),
                      shrinkWrap: true,
                      itemCount: count,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      count += 1;
                                    });
                                  },
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  shape: CircleBorder(),
                                ),
                              ),
                              DropDownForm(
                                index,
                                snapshot.data,
                                sendParam,
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
