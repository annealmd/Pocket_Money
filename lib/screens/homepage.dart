import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:PoketMoney/widget/home_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                color: Theme.of(context).primaryColorDark,
                child: Center(
                  child: Text(
                    "Poket MONEY",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
            ),
            // cicles
            HomeMenu(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: WaveClipperTwo(reverse: true, flip: true),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height * 0.2,
                    color: Theme.of(context).primaryColor,
                    child: Center(child: Text("@anne_london")),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
