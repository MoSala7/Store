import 'package:flutter/material.dart';
import '../gwidgets/gtypography.dart';

class GroceryListItemThree extends StatelessWidget {
  const GroceryListItemThree({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.image,
    this.price,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String image;
  final double price;

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
              new GrocerySubtitle(text: subtitle)
            ],
          ),
        ),
        trailing: Container(
          height: 70,
          child: Column(
            children: <Widget>[
              InkWell(
                  onTap: () {},
                  child: Icon(Icons.add_circle, color: Colors.green,size: 19)),
              Text("1",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),
              InkWell(
                  onTap: () {},
                  child: Icon(Icons.remove_circle, color: Colors.green,size: 19)),
            ],
          ),
        ),
      ),
    );
  }
}
