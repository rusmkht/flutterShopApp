// ignore_for_file: file_names

import 'package:flutter/material.dart';

//товар

class Product {
  final String? image, title, description, company, material, color;
  final int? price, id;
  int inBasket = 0;
  Product({
    this.id,
    this.image,
    this.title,
    this.material,
    this.price,
    this.description,
    this.color,
    this.company
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Iphone 8 Pro",
      price: 519990,
      company: "Apple",
      material: "Alumnii",
      description: dummyText,
      image: "https://techno-shop.kz/upload/iblock/fae/faed65d8c1ed457dbccb95202142c847.jpeg",
      color: "Beige"),
  Product(
      id: 2,
      title: "Iphone 10 Pro",
      price: 519990,
      company: "Apple",
      material: "Alumnii",
      description: dummyText,
      image: "https://techno-shop.kz/upload/iblock/fae/faed65d8c1ed457dbccb95202142c847.jpeg",
      color: "Beige"),
  Product(
      id: 3,
      title: "Iphone 11 Pro",
      price: 519990,
      company: "Apple",
      material: "Alumnii",
      description: dummyText,
      image: "https://techno-shop.kz/upload/iblock/fae/faed65d8c1ed457dbccb95202142c847.jpeg",
      color: "Beige"),
  Product(
      id: 4,
      title: "Iphone 12 Pro",
      price: 519990,
      company: "Apple",
      material: "Alumnii",
      description: dummyText,
      image: "https://techno-shop.kz/upload/iblock/fae/faed65d8c1ed457dbccb95202142c847.jpeg",
      color: "Beige"),
  Product(
      id: 5,
      title: "Iphone 13 Pro",
      price: 519990,
      company: "Apple",
      material: "Alumnii",
      description: dummyText,
      image: "https://techno-shop.kz/upload/iblock/fae/faed65d8c1ed457dbccb95202142c847.jpeg",
      color: "Beige"),
  ];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
