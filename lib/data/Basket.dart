// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/Product.dart';
import 'package:provider/provider.dart';


//Наш провайдер

class Basket extends ChangeNotifier{

  List<Product> productsBasket = [];

  addItem(Product p){

    for(var i in productsBasket){
      if(i.id == p.id){
        p.inBasket+=1;

      }
    }

    notifyListeners();

  }

  removeItem(Product p){



    var toRemove = [];

    for(var i in productsBasket){
      if(i.id == p.id){
        if(p.inBasket==1){//если товар 1, полностью удаляем его
          p.inBasket -= 1;
          toRemove.add(i.id);
        }else {
          p.inBasket -= 1;
        }
      }
    }

      productsBasket.removeWhere((element) => toRemove.contains(element.id));

    toRemove.clear();

    notifyListeners();


  }

  addItems(Product p, int numberOfItems){


    bool found = false;//проверяем есть ли товар в корзине, если нет добавляем
    for(var i in productsBasket){
      if(i.id == p.id){
        p.inBasket+=numberOfItems;
        found = true;
      }
    }
    if(found==false){
      p.inBasket+=numberOfItems;
      productsBasket.add(p);
    }


    notifyListeners();

  }

  List<Product> get getproductBasket => productsBasket;

}