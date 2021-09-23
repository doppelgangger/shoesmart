import 'package:flutter/cupertino.dart';

class ProductModel {
  String id;
  String image;
  String category;
  String name;
  String price;

  ProductModel({
    @required this.id,
    @required this.image,
    @required this.category,
    @required this.name,
    @required this.price,
  });

  ProductModel.fromJson(Map json)
      : this(
          id: json['id'],
          image: json['image'],
          category: json['category'],
          name: json['name'],
          price: json['price'],
        );

  Map toJson() {
    return {
      'id': this.id,
      'image': this.image,
      'category': this.category,
      'name': this.name,
      'price': this.price,
    };
  }
}

//class uninitializedProductModel extends ProductModel {}
