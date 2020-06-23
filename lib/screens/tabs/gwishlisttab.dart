
import 'package:flutter/material.dart';
import '../gwidgets/glistitem3.dart';

class GroceryWishlistTabView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                GroceryListItemThree(
                  price: 10,
                  image: "assets/pineapple.png",
                  subtitle: "1 كج",
                  title: "أناناس",
                ),
                GroceryListItemThree(
                  price: 10,
                  image: "assets/cabbage.png",
                  subtitle: "1 كج",
                  title: "كرنب",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          _buildTotals()
        ],
      );
    }

  Widget _buildTotals() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: RaisedButton(
        color: Colors.green,
        onPressed: (){},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("أضف الى السلة", style: TextStyle(color: Colors.white)),
          ],
        ),
      )
    );
  }
}