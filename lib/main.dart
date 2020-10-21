import 'package:flutter/material.dart';

import 'theme_data.dart';
import 'screens/sign.dart';
import 'screens/products.dart';
import 'screens/recipes.dart';
import 'screens/shop_list.dart';
import 'screens/control.dart';
import 'screens/finance.dart';
import 'screens/charts.dart';
import 'screens/share.dart';
import 'screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: myTheme,
        //home: HomePage(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          Products.routeName: (context) => Products(),
          Recipes.routeName: (context) => Recipes(),
          ShopList.routeName: (context) => ShopList(),
          Finance.routeName: (context) => Finance(),
          Charts.routeName: (context) => Charts(),
          Share.routeName: (context) => Share(),
          Control.routeName: (context) => Control(),
          //One.routeName: (ctx) => One(),
          //Bike.routeName: (ctx) => Bike(),
        });
  }
}
