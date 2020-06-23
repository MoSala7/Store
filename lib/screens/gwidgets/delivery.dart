import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => delivery();
}

class Item {
  final String name;
  final String address;
  final String date;

  Item({this.name, this.address, this.date});
}

class delivery extends State<Delivery> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Item> itemList = <Item>[
    Item(
        name: 'المنزل',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        date: 'من 7 صباحاً الى 10 صباحاً'),
    Item(
        name: 'المنزل',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        date: 'من 7 صباحاً الى 10 صباحاً'),
    Item(
        name: 'المنزل',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        date: 'من 7 صباحاً الى 10 صباحاً'),
  ];

  int radioValue = 0;
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.green,
      title: Text("الدفع"),
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 7, right: 7),
        child: RaisedButton(
          color: Colors.green,
          onPressed: () {
            Navigator.popUntil(
                context, ModalRoute.withName('/GroceryHomePage'));
          },
          child: Text("تأكيد الشراء", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                  child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: <Widget>[
                                        IconButton(
                                            icon: Icon(
                                              Icons.check_circle,
                                              color: Colors.blue,
                                            ),
                                            onPressed: null),
                                        Text(
                                          'الدفع',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: <Widget>[
                                        IconButton(
                                            icon: Icon(
                                              Icons.play_circle_outline,
                                              color: Colors.blue,
                                              textDirection: TextDirection.rtl,
                                            ),
                                            onPressed: null),
                                        Text(
                                          'التوصيل',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )))),
          _verticalDivider(),
          Container(
            alignment: Alignment.topRight,
            margin:
                EdgeInsets.only(left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
            child: Text(
              'اختر مكان التوصيل',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          _verticalDivider(),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemList.length,
                itemBuilder: (BuildContext cont, int ind) {
                  return Card(
                      elevation: 4.0,
                      child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: GestureDetector(
                              child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topRight,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      itemList[ind].name,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        color: Colors.black45,
                                        icon: Icon(Icons.check_circle_outline)),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10.0,
                                color: Colors.green,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                          ))));
                }),
          ),
          _verticalDivider(),
          Container(
            alignment: Alignment.topRight,
            margin:
                EdgeInsets.only(left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
            child: Text(
              'اختر وقت التوصيل',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          Container(
            height: 70,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              InkWell(
                  onTap: () {},
                  child: Card(
                      color: Colors.green,
                      elevation: 3.0,
                      child: Container(
                          height: 70,
                          alignment: Alignment(0, 0),
                          margin: EdgeInsets.only(right: 40, left: 40),
                          child: Text(
                            "اليوم",
                            style: TextStyle(color: Colors.white),
                          )))),
              InkWell(
                  onTap: () {},
                  child: Card(
                      elevation: 3.0,
                      child: Container(
                          height: 70,
                          alignment: Alignment(0, 0),
                          margin: EdgeInsets.only(right: 40, left: 40),
                          child: Text("غداً")))),
              InkWell(
                  onTap: () {},
                  child: Card(
                      elevation: 3.0,
                      child: Container(
                          height: 70,
                          alignment: Alignment(0, 0),
                          margin: EdgeInsets.only(right: 40, left: 40),
                          child: Text("17/8")))),
              InkWell(
                  onTap: () {},
                  child: Card(
                      elevation: 3.0,
                      child: Container(
                          height: 70,
                          alignment: Alignment(0, 0),
                          margin: EdgeInsets.only(right: 40, left: 40),
                          child: Text("18/8")))),
            ]),
          ),
          Container(
            alignment: Alignment.topRight,
            margin:
                EdgeInsets.only(left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
            child: Text(
              'المواعيد المتاحة',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
          ),
          Container(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemList.length,
                itemBuilder: (BuildContext cont, int ind) {
                  return Card(
                      elevation: 4.0,
                      child: Container(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                          child: GestureDetector(
                              child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topRight,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      itemList[ind].date,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        color: Colors.black45,
                                        icon: Icon(Icons.check_circle_outline)),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 10.0,
                                color: Colors.green,
                              ),
                            ],
                          ))));
                }),
          ),
        ],
      ),
    );
  }

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 5.0),
      );
}
