import './addAddress.dart';
import 'package:flutter/material.dart';

class MyAddresses extends StatefulWidget {
  final String toolbarname;

  MyAddresses({Key key, this.toolbarname}) : super(key: key);

  @override
  State<StatefulWidget> createState() => myAddresses(toolbarname);
}

class Item {
  final String name;
  final String address;

  Item({this.name, this.address});
}

class myAddresses extends State<MyAddresses> {
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

  myAddresses(this.toolbarname);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 7, right: 7),
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AddAddresses(
                            toolbarname: "عنوان جديد",
                          )));
            },
            child:
                Text("إضافة عنوان جديد", style: TextStyle(color: Colors.white)),
          ),
        ),
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
          title: Text("عناويني"),
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: itemList.length,
            itemBuilder: (BuildContext cont, int ind) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AddAddresses(
                                  toolbarname: "تعديل العنوان",
                                )));
                  },
                  child: Column(children: <Widget>[
                    Container(
                        margin:
                            EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                        color: Colors.black12,
                        child: Card(
                            elevation: 4.0,
                            child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: GestureDetector(
                                    child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        itemList[ind].name,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      height: 10.0,
                                      color: Colors.green,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: 20.0,
                                          color: Colors.green,
                                        ),
                                        Text(itemList[ind].address,
                                            maxLines: 3,
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.black54)),
                                      ],
                                    ),
                                  ],
                                ))))),
                  ]));
            }));
  }

  erticalD() => Container(
        margin: EdgeInsets.only(left: 10.0, right: 0.0, top: 0.0, bottom: 0.0),
      );
}
