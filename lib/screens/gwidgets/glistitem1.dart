import 'package:flutter/material.dart';
import '../gwidgets/gtypography.dart';

class GroceryListItemOne extends StatefulWidget {
  final String image, title, subtitle;
  final double price;
  final int offer;

  const GroceryListItemOne({
    Key key,
    this.offer,
    @required this.image,
    @required this.title,
    @required this.subtitle,
    this.price,
  }) : super(key: key);
  _GroceryListItemOneState createState() => _GroceryListItemOneState();
}

class _GroceryListItemOneState extends State<GroceryListItemOne> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
                blurRadius: 10.0,
                color: Colors.grey.shade200,
                spreadRadius: 2.0)
          ]),
      margin: EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(2.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Center(child: Image.asset(widget.image, height: 120.0)),
                        widget.offer != null ? Container(
                            color: Colors.red,
                            padding: EdgeInsets.only(left:10),
                            child: Text("  خصم ",style: TextStyle(color:Colors.white),)): Container(),
                      ],
                    ),
                    GroceryTitle(text: widget.title, price: widget.price),
                    GrocerySubtitle(text: widget.subtitle)
                  ])),
          x == 0 ? addToCart() : amountCart(),
        ],
      ),
    );
  }

  addToCart() {
    return InkWell(
      onTap: () {
        setState(() {
          x = 1;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }

  amountCart() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.green)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                  onTap: () {},
                  child: Icon(Icons.add_circle, color: Colors.green, size: 22)),
              Text("1",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              InkWell(
                  onTap: () {},
                  child:
                      Icon(Icons.remove_circle, color: Colors.green, size: 22)),
            ]),
      ),
    );
  }
}
