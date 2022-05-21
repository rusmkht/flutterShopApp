// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/Data/Basket.dart';
import 'package:flutter_shop_app/models/Product.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var basket = Provider.of<Basket>(context);
    return ListView.builder(
      itemCount: basket.productsBasket.length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Row(
                  children: [
              Image.network(basket.getproductBasket[index].image.toString(),
              scale: 2,),
            SizedBox(width: 20,),
            Column(
                children: [
            Text(basket.getproductBasket[index].title.toString()),
        SizedBox(height: 20,),
        // CartCounterInBasket.name(basket.getproductBasket[index])
        Row(
        children: <Widget>[
        buildOutlineButton(
        icon: Icons.remove,
        press: () {setState(() {
        basket.removeItem(basket.getproductBasket[index]);
        });

        },
        ),
        Padding(
        padding: EdgeInsets.symmetric(horizontal: cDefaultPadding / 2),
        child: Text(
        basket.getproductBasket[index].inBasket.toString().padLeft(2, "0"),
        style: Theme.of(context).textTheme.headline6,
        ),
        ),
        buildOutlineButton(
        icon: Icons.add,
        press: () {setState(() {
        basket.addItem(basket.getproductBasket[index]);
        });


        }),
        ],
        )
        ],
        ),

        ]
        ,
        )
        ,
        )
        ,
        );
      },
    );
  }
}


class CartCounterInBasket extends StatefulWidget {

  late Product p;

  @override
  _CartCounterInBasketState createState() => _CartCounterInBasketState(p: p);

  CartCounterInBasket.name(this.p);
}

class _CartCounterInBasketState extends State<CartCounterInBasket> {

  late Product p;

  _CartCounterInBasketState({required this.p });


  @override
  Widget build(BuildContext context) {
    var basket = Provider.of<Basket>(context);
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            setState(() {
              basket.removeItem(p);
            });
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: cDefaultPadding / 2),
          child: Text(
            p.inBasket.toString().padLeft(2, "0"),
            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                basket.addItem(p);
              });
            }),
      ],
    );
  }


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
