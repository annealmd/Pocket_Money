import 'package:flutter/material.dart';
import '../model/menu_option.dart';

class MenuItens extends StatelessWidget {
  final Offset offSet;
  final Offset textOffSet;
  final MenuOption option;
  MenuItens(this.offSet, this.textOffSet, this.option);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offSet,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: textOffSet,
            child: Text(
              option.label,
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: option.iconColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey[100],
                  offset: Offset(3.0, 5.0),
                  blurRadius: 10.0,
                )
              ],
              border: Border.all(
                width: 2,
                color: Colors.blueGrey[100],
              ),
            ),
            padding: EdgeInsets.all(2),
            child: IconButton(
              padding: EdgeInsets.all(0), //to center the icon
              icon: Icon(option.icon, size: 30, color: Color(0xE6FFFFFF)),
              onPressed: () {
                print(option.route);
                Navigator.pushNamed(context, option.route);
              },
            ),
          ),
        ],
      ),
    );
  }
}
