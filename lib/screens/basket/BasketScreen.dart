// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/screens/basket/components/Body.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("Basket", style: TextStyle(color: cTextColor),),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        color: cTextColor,
      ),
    );
  }
}
