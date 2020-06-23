import 'package:flutter/material.dart';
import '../gwidgets/gtypography.dart';

class GroceryListItemTwo extends StatelessWidget {
  const GroceryListItemTwo({
    Key key,
    @required this.title,
    @required this.price,
    @required this.subtitle,
    @required this.image,
  }) : super(key: key);

  final String title;
  final double price;
  final String subtitle;
  final String image;

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
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new GroceryTitle(text: title,price: price,),
              new GrocerySubtitle(text: subtitle)
            ],
          ),
        ),
        trailing: Column(
          children: <Widget>[
            InkWell(onTap: () {}, child: Icon(Icons.favorite_border)),
            SizedBox(height: 8),
            InkWell(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.green,
                ))
          ],
        ),
      ),
    );
  }
}
