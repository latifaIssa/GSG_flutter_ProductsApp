import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_my_product_app/widgets/favouritePage.dart';
import 'HomePage.dart';

class ProductApp extends StatefulWidget {
  @override
  _ProductAppState createState() => _ProductAppState();
}

class _ProductAppState extends State<ProductApp> with SingleTickerProviderStateMixin{
  int index = 0;
  TabController tabController;
  initTabController(){
    tabController = TabController(length: 3, vsync: this );
  }
  @override
  void initState(){
    super.initState();
    initTabController();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Products App'),
          bottom: TabBar(

            controller: tabController,
            onTap: (tapedIndex){
            this.index = tapedIndex;
            tabController.animateTo(tapedIndex);
            setState((){});
          },
            tabs: [
            Tab(
              icon: Icon(Icons.home),
               text:'home',
              ),
               Tab(
              icon: Icon(Icons.favorite),
               text:'favorite',
              ),
               Tab(
              icon: Icon(Icons.perm_identity),
               text:'Profile',
              ),
            
          ],),
        ),
        body: TabBarView(
          controller: tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
          Center(child: HomePage(),),
          Center(child: FavouritePage(),),
          Center(child: Text('profile'),)
        ]),
        bottomNavigationBar: BottomNavigationBar(
          
          onTap: (tapedIndex){
            this.index = tapedIndex;
            tabController.animateTo(tapedIndex);
            setState((){});
          },
          currentIndex: index,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: 'Home',
             ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
             label: 'favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
             label: 'Profile'),
          ],
        ),
    );
  }
}
