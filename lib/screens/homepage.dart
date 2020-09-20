import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:dotted_border/dotted_border.dart';

import '../widget/menu_disk.dart';

class HomePage extends StatelessWidget {
  final menuDisk = [
    {
      'icon': Icons.pets,
      'page': '/products',
      'colour': Colors.brown[400],
      'x': 0.0,
      'y': -0.05
    },
    {
      'icon': Icons.filter_vintage,
      'page': '/products',
      'colour': Colors.pink[200],
      'x': 0.13,
      'y': 0.32
    },
    {
      'icon': Icons.star,
      'page': '/products',
      'colour': Colors.amber[200],
      'x': 0.3,
      'y': 0.03
    },
    {
      'icon': Icons.favorite,
      'page': '/products',
      'colour': Colors.cyanAccent[200],
      'x': 0.32,
      'y': 0.20,
    },
    {
      'icon': Icons.card_giftcard,
      'page': '/products',
      'colour': Colors.purple[200],
      'x': -0.28,
      'y': 0.04
    },
    {
      'icon': Icons.face,
      'page': '/products',
      'colour': Colors.orange[200],
      'x': -0.20,
      'y': 0.31
    },
    {
      'icon': Icons.timeline,
      'page': '/products',
      'colour': Colors.green[200],
      'x': -0.3,
      'y': 0.18
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              color: Theme.of(context).primaryColorDark,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white, fontSize: 50),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'pocket',
                        style: TextStyle(fontFamily: 'Calorie_Demo'),
                      ),
                      TextSpan(
                        text: 'MONEY',
                        style:
                            TextStyle(fontFamily: 'MCF_Glowins', fontSize: 50),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // cicles
          //
          MenuDisk(menuDisk),
          //
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: WaveClipperTwo(reverse: true, flip: true),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Theme.of(context).primaryColor,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "@anne_london",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
