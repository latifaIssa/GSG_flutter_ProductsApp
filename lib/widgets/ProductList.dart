import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_my_product_app/data/product_data.dart';
import 'package:gsg_my_product_app/models/product.dart';

class ProductList extends StatefulWidget {
  Product e;
  ProductList(this.e);
  @override
  _ProductListState createState() => _ProductListState(e);
}

class _ProductListState extends State<ProductList> {
  Product e;
  _ProductListState(this.e);
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.grey,
            ) ,
          ),
          child: ListTile(
              leading: Padding(
            padding:EdgeInsets.all(10),
            child: ClipRect(
            child: Image(
              image: AssetImage(e.productImage),
            ),
              ),
          ),
          title: Text(e.productName),
          subtitle: Text('Price: ${e.productPrice} \$'),
            trailing: Icon(
            e.isFavourite
                ? Icons.favorite
                : Icons.favorite_border,
            color: e.isFavourite ? Colors.red : null,
          ),
            onTap: () {
            setState(() {
            return  e.isFavourite = !e.isFavourite;
            });
        },
        ),
    );
  }
}