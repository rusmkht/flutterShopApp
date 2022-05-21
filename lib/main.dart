import 'package:flutter/material.dart';
import 'package:flutter_shop_app/Data/Basket.dart';
import 'package:flutter_shop_app/constants.dart';
import 'package:flutter_shop_app/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){return Basket();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: cTextColor),
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen()
      ),
    );
  }
}

