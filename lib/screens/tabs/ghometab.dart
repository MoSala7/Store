import 'package:flutter/material.dart';
import '../gdetails.dart';
import '../gwidgets/glistitem1.dart';
import '../gwidgets/glistitem2.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../ghome.dart';

class GroceryHomeTabView extends StatelessWidget {
  final List<String> images = [
    'assets/frozen.jpg',
    'assets/grthre.jpg',
    'assets/grtwo.jpg',
    'assets/back.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildSlider(),
        SizedBox(
          height: 10.0,
        ),
        _buildListHeader("المنتجات الجديدة", "أنظر الكل",context),
        _buildNewArrivalsRow(context),
        SizedBox(
          height: 10.0,
        ),
        _buildListHeader("العروض اليومية", "أنظر الكل",context),
        SizedBox(
          height: 10.0,
        ),
        InkWell(
            onTap: () => _openDetailPage(context),
            child: GroceryListItemTwo(
                price: 10.0,
                title: "الكرنب",
                image: "assets/cabbage.png",
                subtitle: "1 كج")),
        InkWell(
            onTap: () => _openDetailPage(context),
            child: GroceryListItemTwo(
                price: 10.0,
                title: "فلفل ألوان",
                image: "assets/capsicum.png",
                subtitle: "1 كج")),
        InkWell(
            onTap: () => _openDetailPage(context),
            child: GroceryListItemTwo(
                price: 10.0,
                title: "أناناس",
                image: "assets/pineapple.png",
                subtitle: "4 in a pack")),
      ],
    );
  }

  Widget _buildNewArrivalsRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10),
      height: 245.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => _openDetailPage(context),
              child: GroceryListItemOne(
                offer: 1,
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

  Widget _buildListHeader(String left, String right,context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          color: Colors.red,
          child: Text(
            left,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: InkWell(
            onTap: () {
               Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GroceryHomePage(x: 1)));
            },
            child: Text(
              right,
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _buildSlider() {
    return Container(
      height: 150.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(height: 150, color: Colors.grey[200]),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Swiper(
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return new Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
              itemCount: 4,
              pagination: new SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }
}
