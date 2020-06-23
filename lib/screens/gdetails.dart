import 'package:flutter/material.dart';
import './gwidgets/glistitem2.dart';
import './gwidgets/gtypography.dart';

class GroceryDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text("بيانات"),
      ),
      body: _buildPageContent(context),
    );
  }

  Widget _buildPageContent(context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              _buildItemCard(context),
              Container(
                  padding: EdgeInsets.all(30.0),
                  child: GrocerySubtitle(
                      text:
                          "تفاصيل المنتج تكتب هنا . تفاصيل المنتج تكتب هنا . تفاصيل المنتج تكتب هنا . تفاصيل المنتج تكتب هنا . تفاصيل المنتج تكتب هنا . تفاصيل المنتج تكتب هنا .")),
              Container(
                  padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: GroceryTitle(text: "منتجات مشابهة")),
              GroceryListItemTwo(
                price: 10,
                  title: "بروكلي",
                  image: "assets/brocoli.png",
                  subtitle: "1 كج"),
              GroceryListItemTwo(
                price: 10,
                  title: "كرنب",
                  image: "assets/cabbage.png",
                  subtitle: "1 كج"),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.green,
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {},
                  child: Text("أضف الى السلة",style: TextStyle(color: Colors.white)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _buildItemCard(context) {
    return Stack(
      children: <Widget>[
        Card(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/cabbage.png',
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GroceryTitle(text: "كرنب محلي",price: 10),
                SizedBox(
                  height: 5.0,
                ),
                GrocerySubtitle(text: "1 كج")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
