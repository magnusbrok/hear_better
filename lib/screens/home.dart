import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(
              'assets/images/test_prep_images/checking_surrounding.png',
            ),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter),
      ),
      child: Align(
        child: Column(children: [
          Container(
            child: Image.asset('assets/images/general_images/logo.png'),
            margin: EdgeInsets.fromLTRB(30, 50, 0, 250),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {},
              padding: const EdgeInsets.all(20),
              child: Text(
                "Test your hearing",
                style: TextStyle(fontSize: 28),
              ),
              color: Color.fromRGBO(85, 233, 191, 1),
              textColor: Colors.white,
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          ),
        ]),
      ),
    );
  }
}
