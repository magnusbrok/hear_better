import 'package:flutter/material.dart';

class TestHearing extends StatefulWidget {
  @override
  _TestHearingState createState() => _TestHearingState();
}

class _TestHearingState extends State<TestHearing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.close, size: 30),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Text("Progress"),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              child: SizedBox.expand(
                child: FlatButton(
                  onLongPress: () {},
                  child: Icon(Icons.hearing, size: 150.0,),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
