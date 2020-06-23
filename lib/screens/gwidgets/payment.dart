import 'package:flutter/material.dart';
import './delivery.dart';

class Patment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => payment();
}

class Item {
  final String itemName;
  final String itemQun;
  final String itemPrice;

  Item({this.itemName, this.itemQun, this.itemPrice});
}

class payment extends State<Patment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int radioValue = 0;
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    AppBar appBar =AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
          title: Text("الدفع"),
        );

    return new Scaffold(
      key: _scaffoldKey,
      appBar: appBar,
      body: new Column(
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
                                              color: Colors.black38,
                                              textDirection: TextDirection.rtl,
                                            ),
                                            onPressed: null),
                                        Text(
                                          'التوصيل',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black38),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ],
                      )))),
          _verticalDivider(),
          new Container(
            alignment: Alignment.topRight,
            margin:
                EdgeInsets.only(left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
            child: new Text(
              'طريقة الدفع',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          _verticalDivider(),
          new Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("كاش عند التوصيل",
                              maxLines: 10,
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black)),
                          Radio<int>(value: 0, groupValue: 0, onChanged: null),
                        ],
                      ),
                    ),
                    Divider(),
                    _verticalD(),
                    Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("بطاقة بنكية",
                                maxLines: 10,
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black)),
                            Radio<int>(
                                value: 0,
                                groupValue: radioValue,
                                onChanged: handleRadioValueChanged),
                          ],
                        )),
                  ],
                )),
              )),
          new Container(
            alignment: Alignment.topRight,
            margin:
                EdgeInsets.only(left: 12.0, top: 5.0, right: 5.0, bottom: 5.0),
            child: new Text(
              'ادخل بيانات البطاقة',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
          ),
          Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextField(
                        decoration: InputDecoration(hintText: "رقم البطاقة"),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Flexible(
                              flex: 10,
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "تاريخ الإنتهاء"),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.all(5),
                              ),
                            ),
                            Flexible(
                              flex: 10,
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "الرقم السري"),
                              ),
                            ),
                          ],
                        )),
                  ],
                )),
              )),
          Container(
              alignment: Alignment.bottomRight,
              height: 50.0,
              child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'الإجمالى :',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '500 ريال',
                      style: TextStyle(fontSize: 17.0, color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: OutlineButton(
                            borderSide: BorderSide(color: Colors.green),
                            child: const Text('الإستمرار فى الدفع'),
                            textColor: Colors.green,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Delivery()));
                            },
                            shape: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                    ),
                  ],
                ),
              )),
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
