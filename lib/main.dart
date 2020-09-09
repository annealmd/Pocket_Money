import 'package:flutter/material.dart';

import 'theme_data.dart';
import 'screens/homepage.dart';
import 'screens/sign.dart';
import 'screens/products.dart';
import 'screens/recipes.dart';
import 'screens/shop_list.dart';
import 'screens/control.dart';
import 'screens/finance.dart';
import 'screens/charts.dart';
import 'screens/share.dart';

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
          '/products': (context) => Products(),
          '/recipes': (context) => Recipes(),
          '/shop_list': (context) => ShopList(),
          '/finance': (context) => Finance(),
          '/charts': (context) => Charts(),
          '/share': (context) => Share(),
          //One.routeName: (ctx) => One(),
          //Bike.routeName: (ctx) => Bike(),
        });
  }
}
