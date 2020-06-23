import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../gwidgets/glistitem4.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => orderDetails();
}

class orderDetails extends State<OrderDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String toolbarname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          actions: <Widget>[
            InkWell(
              onTap: () {_exitApp(context);},
              child: Container(
                  padding: EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "إلغاء",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            )
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
          title: Text("تفاصيل الأوردر"),
        ),
        body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                GroceryListItemFour(
                  count: 2,
                  price: 10.0,
                  image: "assets/pineapple.png",
                  subtitle: "1 كج",
                  title: "أناناس",
                ),
                GroceryListItemFour(
                  count: 2,
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
      ));
  }

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("حالة الطلب",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                    Text("تم التوصيل",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
    );
  }
  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
          context: context,
          child: new AlertDialog(
            title: new Text('هل أنت متأكد انك تريد الغاء الطلب ؟',
                style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('لا', style: TextStyle(color: Colors.green)),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('نعم', style: TextStyle(color: Colors.green)),
              ),
            ],
          ),
        ) ??
        false;
  }