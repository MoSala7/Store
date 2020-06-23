
import 'package:flutter/material.dart';
import '../gwidgets/gtypography.dart';
import '../gwidgets/accountScreen.dart';
import '../gwidgets/orderHistory.dart';
import '../ghome.dart';
import '../gwidgets/myAddresses.dart';

class GroceryProfileTabView extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Oder_History(toolbarname: 'طلباتي',)));
              },
              leading: Icon(Icons.edit),
              title: GroceryTitle(text: "طلباتى"),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GroceryHomePage(x: 3)));
              },
              leading: Icon(Icons.favorite_border),
              title: GroceryTitle(text: "مفضلتي"),
            ),
            ListTile(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyAddresses(toolbarname: 'عناويني',)));
              },
              leading: Icon(Icons.account_balance_wallet),
              title: GroceryTitle(text: "عناويني"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AccountScreen()));
              },
              leading: Icon(Icons.settings),
              title: GroceryTitle(text: "بياناتى"),
            ),
          ],
        ),
      );
    }
}