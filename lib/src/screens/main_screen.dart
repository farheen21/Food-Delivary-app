import 'package:flutter/material.dart';
//Pages
import '../pages/home_page.dart';
import '../pages/order_page.dart' ;
import '../pages/favorite_page.dart';
import '../pages/profile_page.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState () => _MainScreenState();
}

class _MainScreenState  extends State<MainScreen> {

  int currentTabIndex =0;
  List<Widget> pages;
  Widget currentPage;


  HomePage homePage;
  OrderPage orderPage;
  FavoritePage favoritePage;
  ProfilePage   profilePage;
  @override
  void initState() {
    super.initState();
    homePage= HomePage();
    orderPage= OrderPage();
    profilePage = ProfilePage();
    pages= [homePage, orderPage , favoritePage , profilePage];

    currentPage = homePage;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    
  bottomNavigationBar:BottomNavigationBar(
    selectedItemColor: Colors.blue,
    elevation:  0.6 ,
    onTap: (int index){
      setState(() {
       currentTabIndex = index;
       currentPage = pages[index];
      });
    },
    currentIndex: currentTabIndex ,
      type: BottomNavigationBarType.fixed ,
      items: <BottomNavigationBarItem>[
      
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
        ),
    
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text("Orders"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Favorite"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Profile"),
        )
      ]
  ) ,
    body: currentPage,
  );
  }
}