import 'package:flutter/material.dart';
import 'package:gsg_my_product_app/data/product_data.dart';
import 'package:gsg_my_product_app/widgets/ProductList.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
                child: Container(
            child: SingleChildScrollView(
                child: Column(
                  children: MockData.mockData.getProducts().map((e){
                    return e.isFavourite?ProductList(e):Text('');
                  }).toList(),
                ),
              )
            ,),
        )
      );
  }
}