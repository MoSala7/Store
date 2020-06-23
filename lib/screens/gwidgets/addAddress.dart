import 'package:flutter/material.dart';

class AddAddresses extends StatefulWidget {
  final String toolbarname;

  AddAddresses({Key key, this.toolbarname}) : super(key: key);

  @override
  State<StatefulWidget> createState() => addAddresses(toolbarname);
}

class Item {
  final String name;
  final String address;

  Item({this.name, this.address});
}

class addAddresses extends State<AddAddresses> {
  List<Item> itemList = <Item>[
    Item(
      name: 'المنزل',
      address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
    ),
    Item(
      name: 'المنزل',
      address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
    ),
    Item(
      name: 'المنزل',
      address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
    ),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String toolbarname;

  addAddresses(this.toolbarname);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 7, right: 7),
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("حفظ", style: TextStyle(color: Colors.white)),
          ),
        ),
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
          title: Text(toolbarname),
        ),
        body: ListView(
          children: <Widget>[
            _verticalDivider(),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                  left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
              child: new Text(
                'أسم المكان',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5, left: 5),
              child: TextField(
                decoration: InputDecoration(hintText: "المنزل/العمل"),
              ),
            ),
            _verticalDivider(),
            _verticalDivider(),
            _verticalDivider(),
            _verticalDivider(),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                  left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
              child: new Text(
                'عنوان المكان',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5, left: 5),
              child: TextField(
                decoration: InputDecoration(hintText: "عنوان مكان التوصيل .."),
              ),
            ),
            _verticalDivider(),
            _verticalDivider(),
            _verticalDivider(),
            _verticalDivider(),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                  left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
              child: new Text(
                'أو اختر من الخريطة',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
            ),
          ],
        ));
  }

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
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