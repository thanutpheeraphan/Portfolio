import 'package:flutter/material.dart';
import 'package:portfolio/add.dart';

class FormRecord extends StatefulWidget {
  @override
  _FormRecordState createState() => _FormRecordState();
}

class _FormRecordState extends State<FormRecord> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Color(0xfffFFC784),
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                        thickness: 2,
                      ),
                  shrinkWrap: true,
                  itemCount: count,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
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
                        AddRecord(this.count.toString()),
              //            Container(
              //   child: MaterialButton(
              //     onPressed: () {
              //       setState(() {
              //         count -= 1;
              //       });
              //     },
              //     color: Colors.red,
              //     textColor: Colors.white,
              //     child: Icon(
              //       Icons.remove,
              //       size: 20,
              //     ),
              //     shape: CircleBorder(),
              //   ),
              // ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
