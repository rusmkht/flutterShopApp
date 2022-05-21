import 'package:flutter/material.dart';
import 'package:flutter_shop_app/Data/Basket.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/screens/basket/BasketScreen.dart';
import 'package:flutter_shop_app/screens/home/components/Body.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    //BuildContext context;
    var basket = Provider.of<Basket>(context);
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
        color: cTextColor,
      ),
      title: Image.asset(
        "assets/images/logo.png",
        scale: 1.5,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: cTextColor,
        ),
        Stack(
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
