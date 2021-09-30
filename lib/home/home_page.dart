import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoesmart/services/product_service.dart';
import 'package:shoesmart/theme.dart';
import 'package:shoesmart/widgets/product_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hallo',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Container(
                width: 200,
                height: 50,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 5,
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            Container(
              width: 35,
              height: 35,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: Image.asset('assets/icon_cart.png'),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: primaryColor),
                  color: secondaryColor,
                ),
                child: Text('All Shoes'),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: primaryColor,
                    ),
                    color: secondaryColor),
                child: Text('Running'),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: primaryColor,
                  ),
                  color: secondaryColor,
                ),
                child: Text('Training'),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: primaryColor,
                  ),
                  color: secondaryColor,
                ),
                child: Text(
                  'Basketball',
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: primaryColor,
                  ),
                  color: secondaryColor,
                ),
                child: Text('Hiking'),
              ),
            ],
          ),
        ),
      );
    }

    Widget listProducts() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: [
            FutureBuilder<QuerySnapshot>(
                future: ProductsService().getProduct(),
                builder: (_, snapshot) {
                  print(snapshot);
                  if (snapshot.hasData) {
                    return Column(
                      children: snapshot.data.docs
                          .map((e) => ProductTile(
                                e.data()['name'],
                                e.data()['merk'],
                                e.data()['category'],
                                e.data()['price'],
                                e.data()['image'],
                              ))
                          .toList(),
                    );
                  } else {
                    return Text('Loading');
                  }
                }),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        listProducts(),
      ],
    );
  }
}
