// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/Product.dart';
import 'package:flutter_shop_app/screens/details/details_screen.dart';

import 'item-card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //SizedBox(height: 20,),
        Expanded(
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]))),
            ),
          ),
        ),
      ],
    );
  }
}
