
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../gwidgets/glistitem3.dart';
import '../gwidgets/payment.dart';

class GroceryCartTabView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                GroceryListItemThree(
                  price: 10.0,
                  image: "assets/pineapple.png",
                  subtitle: "1 كج",
                  title: "أناناس",
                ),
                GroceryListItemThree(
                  price: 10.0,
                  image: "assets/cabbage.png",
                  subtitle: "1 كج",
                  title: "كرنب",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          _buildTotals(context)
        ],
      );
    }

  Widget _buildTotals(BuildContext context) {
    return ClipOval(
      clipper: OvalTopBorderClipper(),
      child: Container(
            height: 195,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 5.0,color: Colors.grey.shade700,spreadRadius: 80.0),
              ],
              color: Colors.white,
            ),
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("سعر المنتجات",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                    Text("50 ريال",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("سعر التوصيل",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                    Text("50 ريال",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 5.0,),  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("المجموع الكلي",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                    Text("150 ريال",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 5.0,),
                RaisedButton(
                  color: Colors.green,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Patment()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("الأستمرار للدفع", style: TextStyle(color: Colors.white)),
                      Text("150 ريال", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }
}