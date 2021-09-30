import 'gallery_model.dart';

class ProductModel {
  String name;
  String merk;
  String category;
  int price;
  //List<Galery> galleries;

  ProductModel(
    this.name,
    this.merk,
    this.category,
    this.price,
    //this.galleries,
  );

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    merk = json['merk'];
    category = json['category'];
    price = json['price'];
    //galleries =
    //json['galleries'].map((gallery) => Galery.fromJson(gallery)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'merk': merk,
      'category': category,
      'price': price,
      //'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
    };
  }
}

//class uninitializedProductModel extends ProductModel {}
