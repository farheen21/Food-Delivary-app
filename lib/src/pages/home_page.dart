import 'package:flutter/material.dart';
import 'package:flutter_food/src/Widgets/food_category.dart';
import '../Widgets/home_top_info.dart';
import '../Widgets/search_field.dart';
import '../Widgets/bought_drinks.dart';
// Data
import '../data/food_data.dart';
import '../models/food_model.dart';
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  List<Food> _foods = foods;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0),
          SearchFeild(),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought Drinks",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  )),

              GestureDetector(
                onTap: () {

                },
                child: Text("Veiw All",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }
   Widget _buildFoodItems(Food food){
     return Container(
       margin: EdgeInsets.only(bottom: 20.0,),
       child: BoughtDrinks(
         id:food.id,
         name:food.name,
         imagePath:food.imagePath ,
         category: food.category ,
         price: food.price,
         discount: food.discount,
         ratings: food.ratings,

       ),
     );
   }
  }
