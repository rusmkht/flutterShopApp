// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/models/Product.dart';
import 'package:flutter_shop_app/screens/details/components/CartCounter.dart';

class DetailsScreenBody extends StatelessWidget {
  final Product? product;

  const DetailsScreenBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var added = false;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Image.network("${product!.image}"),
        ),
        Expanded(
          child: Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                SizedBox(
                  height: 260,
                  width: 110,
                  child: Center(child: Text("Характеристика")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: CartCounter.name(product!),
                    ),
                    Container(
                      //padding: EdgeInsets.only(right: 40),
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "КУПИТЬ В 1 КЛИК",
                        style: TextStyle(
                            fontSize: 15,
                            color: cTextColor,
                            fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }



}
