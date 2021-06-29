import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_my_product_app/data/product_data.dart';
import 'package:gsg_my_product_app/models/product.dart';
import 'package:gsg_my_product_app/widgets/ProductList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isFavourite = false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top:20),
            child:  Column(
                  children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: MockData.mockData.getProducts().map((e){
                        _isFavourite = e.isFavourite;
                        return Center(
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(horizontal:10),
                                  child: Image.asset(e.productImage),                                        
                                ),
                                Container(
                                   alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal:10, vertical: 10),
                                    child: Center(child: Text(e.productName,
                                    style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0
                                          ),
                                        ),
                                      ),
                                    ), 
                              ],
                          ),
                        );
                      }).toList(),
                    ),
                )
                ),
                Container(
                  child: Text(
                    'Products',
                    style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                  ),
                    // mainAxisA
                  ),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left:10,top: 20,bottom: 10),
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                       children: MockData.mockData.getProducts().map((e){
                       return  ProductList(e);
                    }).toList(),
                    
                    ),
                  )
                  )
              ],
              ),
              ),
        ),
    );
  }
}