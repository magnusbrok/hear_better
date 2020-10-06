import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestHearing extends StatelessWidget {
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
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                child: TestProgressIndicator(),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                alignment: Alignment.center,
                child: SizedBox.expand(
                  child: FlatButton(
                    onLongPress: () {
                      HapticFeedback.mediumImpact();
                      // TODO add secondary feed back if vibration not enabled or inform user enable vibration when boarding the app
                    },
                    child: Icon(Icons.hearing, size: 150.0,), // TODO animation or better icon
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

class TestProgressIndicator extends StatefulWidget {
  @override
  _TestProgressIndicatorState createState() => _TestProgressIndicatorState();
}

class _TestProgressIndicatorState extends State<TestProgressIndicator> {

  double progress = 0;

  // TODO make timer functionality external?
  void startTimer() {
    new Timer.periodic(
      Duration(seconds: 1),
          (Timer timer) => setState(
            () {
          if (progress == 1) {
            timer.cancel();
            // TODO navigate to results here?
          } else {
            progress += 0.001;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    startTimer();
    return LinearProgressIndicator(
      value: progress,
    );
  }
}
