import 'package:flutter/material.dart';
import 'package:shoesmart/theme.dart';
import 'package:shoesmart/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: secondaryColor,
        centerTitle: true,
        title: Text(
          'Your Cart',
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return ListView(
        children: [
          CartCard(),
        ],
      );
    }

    return Scaffold(
      appBar: header(),
      body: content(),
    );
  }
}
