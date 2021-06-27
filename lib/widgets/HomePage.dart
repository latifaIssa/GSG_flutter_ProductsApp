import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_my_product_app/data/product_data.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child:  Column(
                children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: MockData.mockData.getProducts().map((e){
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal:10),
                        child: Image.asset(e.productImage),
                      );
                    }).toList(),
                  ),
              )
              ),
              Container(
                child: Text(
                  'Products',
                  // mainAxisA
                ),
                // alignment: EdgeInsets.only(left: 0),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                     children: MockData.mockData.getProducts().map((e){
                     return  Container(
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
                        trailing: Icon(Icons.favorite),
                      ),
                      
                      
                  );
                  }).toList(),
                  
                  ),
                )
                )
            ],
            ),
            ),
    );
  }
}

class TestScreen extends StatefulWidget {
  // const TestScreen({ Key? key }) : super(key: key);

  @override
  // _TestScreenState createState() => _TestScreenState();
  State<StatefulWidget> createState(){
    return TestScreenState();
  }
}

// class TestScreenState extends State<StatefulWidget> {// maybe instead of statefulwidget ==> TestScreen
  class TestScreenState extends State<TestScreen> {// maybe instead of statefulwidget ==> TestScreen
  String title = 'stateful widget';
  bool _value = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefullwidget'),),
        // ignore: missing_required_param
        body: Center(
          // child: ElevatedButton(
          // onPressed: (){
          //   this.title = 'edited title';
          //   //make rebuild for nearist build methods to it (when we have widget inside widget)
          //   setState(() {
              
          //   });
          // },
          // child: Text('change app bar text'),),
          child:Column(
            children:[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(_value?'day':'night'),
                        Switch(
                      value: _value,
                      onChanged: (bool newValue) {
                        setState(() {
                          _value = newValue;
                        });
                      },

                  ),
                  ],
                  ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(isChecked?'accepted':'Rejected'),
                        Checkbox(
                        value: isChecked,
                        onChanged: (bool newValue) {
                          setState(() {
                            isChecked = newValue;
                          });
                      },

                  ),
                  ],
                )
            ] 
          )
    )
    
    );
  }
}