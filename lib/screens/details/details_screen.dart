import 'package:flutter/material.dart';
import 'package:flutter_shop_app/Data/Basket.dart';
import 'package:flutter_shop_app/models/Product.dart';
import 'package:flutter_shop_app/screens/basket/BasketScreen.dart';
import 'package:flutter_shop_app/screens/details/components/DetailsScreenBody.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';




class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailsScreenBody(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {

    var basket = Provider.of<Basket>(context);
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black87,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[Stack(
          children:[
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BasketScreen()));
              },
              icon: Icon(Icons.shopping_cart_outlined),
              color: cTextColor,
            ),
            Positioned(
              left: 5,
              top: 25,
              child: Text(
                "${basket.getproductBasket.length == 0 ? " " : "${basket.getproductBasket.length}"}",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ]
      )
      ],
    );
  }
}
