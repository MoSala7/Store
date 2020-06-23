import 'package:flutter/material.dart';
import '../gdetails.dart';
import '../gwidgets/gcategory.dart';
import '../gwidgets/glistitem1.dart';

class GroceryShopTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildCategories(),
        _buildNewArrivalsCol(context),
      ],
    );
  }

 Widget _buildNewArrivalsCol(BuildContext context) {
return Column(children: <Widget>[
  _buildNewArrivalsRow(context),
  _buildNewArrivalsRow(context),
  _buildNewArrivalsRow(context),
  _buildNewArrivalsRow(context),
],);
 }

 Widget _buildNewArrivalsRow(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 10.0,right: 10),
      height: 245.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => _openDetailPage(context),
              child: GroceryListItemOne(
                price: 10.0,
                image: "assets/mango.png",
                subtitle: "1 كج",
                title: "مانجا",
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => _openDetailPage(context),
              child: GroceryListItemOne(
                offer: 1,
                price: 10.0,
                image: "assets/brocoli.png",
                subtitle: "6 حزم",
                title: "بروكلي",
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => _openDetailPage(context),
              child: GroceryListItemOne(
                price: 10.0,
                image: "assets/brocoli.png",
                subtitle: "6 حزم",
                title: "بروكلي",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openDetailPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => GroceryDetailsPage()));
  }

  Widget _buildCategories() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(11, 200, 0, 0.15),
            image: 'assets/vegetables.png',
            title: "الكل",
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(200, 0, 11, 0.15),
            title: "الفاكهة",
            image: "assets/fruit.png",
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            image: "assets/mortar.png",
            backgroundColor: Color.fromRGBO(20, 20, 15, 0.15),
            title: "التوابل",
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(200, 0, 11, 0.15),
            title: "الفاكهة",
            image: "assets/fruit.png",
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(200, 0, 11, 0.15),
            title: "الفاكهة",
            image: "assets/fruit.png",
          ),
          SizedBox(
            width: 10.0,
          ),
          GroceryCategory(
            backgroundColor: Color.fromRGBO(200, 0, 11, 0.15),
            title: "الفاكهة",
            image: "assets/fruit.png",
          ),
        ],
      ),
    );
  }
}
