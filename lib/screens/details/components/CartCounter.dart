// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/Data/Basket.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/Product.dart';
import 'package:provider/provider.dart';

class CartCounter extends StatefulWidget {

  late Product p;

  @override
  _CartCounterState createState() => _CartCounterState(p: p);

  CartCounter.name(this.p);
}

class _CartCounterState extends State<CartCounter> {

  late int productId;

  late Product p;

  _CartCounterState({required this.p });

  int numOfItems = 1;
  Icon added = Icon(Icons.add_shopping_cart);
  bool addedCheck = false;

  @override
  Widget build(BuildContext context) {
    var basket = Provider.of<Basket>(context);
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: cDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
        IconButton(
          onPressed: () {
            if (addedCheck == false) {
              basket.addItems(p, numOfItems);
            }
            setState(() {
              added = Icon(Icons.shopping_cart);
              addedCheck = true;
            });

          },
          icon: added,
          iconSize: 32,
        )
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, Function()? press}) {
    return SizedBox(
      width: 32,
      height: 30,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }


}
