/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoesmart/pages/product_page.dart';
import 'package:shoesmart/services/product_service.dart';

class ProductProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<QuerySnapshot>(
            future: ProductsService().getProduct(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: snapshot.data.docs
                      .map((e) => ProductPage({
                            e.data()['name'],
                            e.data()['merk'],
                            e.data()['category'],
                            e.data()['price'],
                            e.data()['image'],
                          }))
                      .toList(),
                );
              } else {
                return Text('Loading');
              }
            }),
      ],
    );
  }
}*/
