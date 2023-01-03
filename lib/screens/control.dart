import 'package:flutter/material.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Control extends StatelessWidget {
  static const routeName = '/control';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.20,
              color: Color(0xffb09e99),
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Controle',
                    style: TextStyle(
                      fontFamily: 'Calorie_Demo',
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: WaveClipperTwo(reverse: true, flip: true),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Color(0xffb09e99),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
