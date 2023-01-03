import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Inspire, \n   Encante!",
            style: TextStyle(
              letterSpacing: 1.5,
              fontFamily: 'Calorie_Demo',
              height: 0.7,
              fontSize: 60,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfff0f0f0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFA0B48C),
                  offset: Offset(3.0, 5.0),
                  blurRadius: 10.0,
                )
              ],
              border: Border.all(
                width: 2,
                color: Color(0xFF8AA886),
              ),
            ),
            padding: EdgeInsets.all(2),
            child: IconButton(
              padding: EdgeInsets.all(0), //to center the icon
              icon: Icon(Icons.face, size: 40, color: Color(0xffb09e99)),
              tooltip: 'Olha eu',
              onPressed: () {
                print('Foto da pessoa');
              },
            ),
          ),
        ],
      ),
    );
  }
}
