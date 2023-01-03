import 'package:flutter/material.dart';

import '../model/menu_option.dart';

class MenuList {
  static List<MenuOption> menuList() {
    List<MenuOption> options = [];

    options.add(MenuOption(
      'Compartilhe',
      '/share',
      Color(0xFF676d8a),
      Icons.share,
    ));
    options.add(MenuOption(
      'Gráficos',
      '/charts',
      Color(0xFFdd608b),
      Icons.show_chart,
    ));

    options.add(MenuOption(
      'Financeiro',
      '/finance',
      Color(0xFF9eb395),
      Icons.monetization_on,
    ));
    options.add(MenuOption(
      'Controle',
      '/control',
      Color(0xFF8c3d7d),
      Icons.location_on,
    ));

    options.add(MenuOption(
      'Compras',
      '/shop_list',
      Color(0xfff9c993),
      Icons.shopping_cart_rounded,
    ));
    options.add(MenuOption(
      'Receitas',
      '/recipes',
      Color(0xFFe88a96),
      Icons.book,
    ));
    options.add(MenuOption(
      'Produtos',
      '/products',
      Color(0xFF429d97),
      Icons.cake,
    ));
    return options;
  }
}
