
import 'package:gsg_my_product_app/models/product.dart';

class MockData{
  //singlton
  MockData._();
  static final MockData mockData = MockData._();//single instance
  List <Product> getProducts(){
    return <Product>[
    Product(productName:'product1',productImage: 'assets/images/product1.jfif',productPrice: 100),
    Product(productName:'product1',productImage: 'assets/images/product1.jfif',productPrice: 100),
    Product(productName:'product1',productImage: 'assets/images/product1.jfif',productPrice: 100)
    ];
  } 
}