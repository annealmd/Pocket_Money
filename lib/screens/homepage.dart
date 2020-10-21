import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import '../widget/tool_bar.dart';
import '../widget/menu_itens.dart';
import '../model/menu_option.dart';
import '../providers/menu_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<MenuOption> _options = List();
  AnimationController _controller;
  Animation<double> _animatedAngle;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animatedAngle =
        Tween<double>(begin: -math.pi, end: 0).animate(_controller);
    _animatedAngle.addListener(() {
      setState(() {});
    });
    _options = MenuList.menuList();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeUsed = MediaQuery.of(context).size.width * 0.80;
    final sizeDecorator = sizeUsed + 120;

    final itensCount = _options.length;
    final step = math.pi / itensCount;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
            child: Column(
          children: [
            ToolBar(), // first
            Expanded(
              child: Stack(
                //third
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: -sizeUsed - 5,
                    child: Transform.rotate(
                      angle: _animatedAngle.value,
                      child: SvgPicture.asset(
                        'assets/images/faith_mandala.svg',
                        height: sizeUsed,
                      ),
                    ),
                  ),
                  Positioned(
                    right: -sizeDecorator / 2,
                    child: Transform.rotate(
                      angle: _animatedAngle.value,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: sizeDecorator,
                            height: sizeDecorator,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Color(0xffff006e),
                              ),
                            ),
                          ),
                          ...List.generate(itensCount, (index) {
                            var angle =
                                (math.pi / 2 + index * step) + (step / 2);
                            return MenuItens(
                              Offset(sizeDecorator / 2 * math.cos(angle),
                                  sizeDecorator / 2 * math.sin(angle)),
                              Offset(-75, 10.0 - (30 * (index / itensCount))),
                              _options[index],
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              //second
              height: 50,
              color: Color(0xfff0f0f0),
            ),
          ],
        )),
      ),
    );
  }
}
