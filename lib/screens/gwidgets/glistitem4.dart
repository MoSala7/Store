import 'package:flutter/material.dart';
import '../gwidgets/gtypography.dart';

class GroceryListItemFour extends StatelessWidget {
  const GroceryListItemFour({
    Key key,
    @required this.count,
    @required this.title,
    @required this.subtitle,
    @required this.image,
    this.price,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;
  final double price;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
            height: 80.0,
            child: Image.asset(
              image,
              height: 80.0,
            )),
        title: Container(
          height: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new GroceryTitle(
                text: title,
                price: price,
              ),
              new GrocerySubtitle(text: "x $count")
            ],
          ),
        ),
        trailing: Container(margin:EdgeInsets.only(top:10),child: Text("20 ريال")),
      ),
    );
  }
}
