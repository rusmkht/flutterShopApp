// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/Product.dart';

import '../../../constants.dart';


class ItemCard extends StatelessWidget {
  Product? product;
  Function()? press;

  ItemCard({Key? key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(2),
              height: 120,
              width: 160,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: Image.network(
                "${product!.image}",
                scale: 2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4,bottom: 4,right: 4),
            child: Text(
              "${product!.title}",
              style: TextStyle(color: cTextLightColor, fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Text(
              " ${product!.price} тг",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: cTextColor, fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
