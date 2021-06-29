
import 'package:gsg_my_product_app/models/product.dart';

class MockData{
  List <Product> products = [
    Product(productName:'camera',productImage: 'assets/images/product1.jfif',productPrice: 100, isFavourite: false),
    Product(productName:'tablet',productImage: 'assets/images/product2.jfif',productPrice: 200, isFavourite: false),
    Product(productName:'headphone',productImage: 'assets/images/product3.jfif',productPrice: 10, isFavourite: false)
  ];
  //singlton
  MockData._();
  static final MockData mockData = MockData._();//single instance
  List <Product> getProducts(){
    return products;
  } 
  
}