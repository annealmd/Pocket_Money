import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  HomeMenu({Key key}) : super(key: key);

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  var _color = Colors.pink[300];
  var _left = 10.0;
  var _right = 0.0;
  var _top = 10.0;
  var _bottom = 0.0;

  void _animateContainer() {
    setState(() {
      _color = Colors.amber;
      _left = 50.0;
      _right = 0.0;
      _top = 50.0;
      _bottom = 0.0;
    });
  }

  @override
  void initState() {
    _animateContainer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          left: _left,
          top: _top,
          curve: Curves.easeInOut,
          duration: Duration(seconds: 1),
          child: ClipOval(
            child: Container(
              width: 80,
              height: 80,
              color: _color, // button color
              child: InkWell(
                  splashColor:
                      Theme.of(context).primaryColorLight, // inkwell color
                  child: IconButton(
                      icon: Icon(
                        Icons.cake,
                      ),
                      onPressed: null)),
            ),
          ),
        ),
      ],
    );
  }
}
