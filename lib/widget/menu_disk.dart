import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

class MenuDisk extends StatelessWidget {
  final List<Map<String, Object>> menuDisk;
  MenuDisk(this.menuDisk);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...menuDisk.map(
          (e) {
            return Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              transform: Matrix4Transform()
                  .translate(
                      x: MediaQuery.of(context).size.width * e['x'],
                      y: MediaQuery.of(context).size.height * e['y'])
                  .matrix4,
              child: CircleAvatar(
                backgroundColor: e['colour'],
                radius: 30,
                child: IconButton(
                  padding: EdgeInsets.all(10),
                  //alignment: Alignment.center,
                  icon: Icon(
                    e['icon'],
                    size: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.white70,
                  ),
                  onPressed: () => Navigator.pushNamed(context, e['page']),
                ),
              ),
            );
          },
        ).toList(),
      ],
    );
  }
}
