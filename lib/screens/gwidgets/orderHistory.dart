import './orderDetails.dart';
import 'package:flutter/material.dart';

class Oder_History extends StatefulWidget {
  final String toolbarname;

  Oder_History({Key key, this.toolbarname}) : super(key: key);

  @override
  State<StatefulWidget> createState() => oder_history(toolbarname);
}

class Item {
  final String name;
  final String deliveryTime;
  final String oderId;
  final String oderAmount;
  final String paymentType;
  final String address;
  final String cancelOder;

  Item(
      {this.name,
      this.deliveryTime,
      this.oderId,
      this.oderAmount,
      this.paymentType,
      this.address,
      this.cancelOder});
}

class oder_history extends State<Oder_History> {
  List<Item> itemList = <Item>[
    Item(
        name: 'أحمد صالح',
        deliveryTime: '26/08/2019 15:20',
        oderId: '#CN23656',
        oderAmount: '650 ريال',
        paymentType: 'كاش',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        cancelOder: 'إلغاء الأوردر'),
    Item(
        name: 'أحمد صالح',
        deliveryTime: '26/08/2019 15:20',
        oderId: '#CN23656',
        oderAmount: '650 ريال',
        paymentType: 'كاش',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        cancelOder: 'تفاصيل الأوردر'),
    Item(
        name: 'أحمد صالح',
        deliveryTime: '26/08/2019 15:20',
        oderId: '#CN23656',
        oderAmount: '650 ريال',
        paymentType: 'كاش',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        cancelOder: 'تفاصيل الأوردر'),
    Item(
        name: 'أحمد صالح',
        deliveryTime: '26/08/2019 15:20',
        oderId: '#CN23656',
        oderAmount: '650 ريال',
        paymentType: 'كاش',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        cancelOder: 'إلغاء الأوردر'),
    Item(
        name: 'أحمد صالح',
        deliveryTime: '26/08/2019 15:20',
        oderId: '#CN23656',
        oderAmount: '650 ريال',
        paymentType: 'كاش',
        address: 'الدمام, حي الأزهر, شارع السويس, فيلا 121',
        cancelOder: 'تفاصيل الأوردر'),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String toolbarname;

  oder_history(this.toolbarname);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
          title: Text(toolbarname),
        ),
        body: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (BuildContext cont, int ind) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => OrderDetails()));
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
                                    Container(
                                      margin: EdgeInsets.only(top: 3.0),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Text(
                                        'وقت التوصيل :' +
                                            itemList[ind].deliveryTime,
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black54),
                                      ),
                                    ),
                                    Divider(
                                      height: 10.0,
                                      color: Colors.green,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.all(3.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'رقم الأوردر',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Colors.black54),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 3.0),
                                                  child: Text(
                                                    itemList[ind].oderId,
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.black87),
                                                  ),
                                                )
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.all(3.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'سعر الاوردر',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Colors.black54),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 3.0),
                                                  child: Text(
                                                    itemList[ind].oderAmount,
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.black87),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.all(3.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'طريقة الدفع',
                                                  style: TextStyle(
                                                      fontSize: 13.0,
                                                      color: Colors.black54),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 3.0),
                                                  child: Text(
                                                    itemList[ind].paymentType,
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.black87),
                                                  ),
                                                )
                                              ],
                                            )),
                                      ],
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
                                            style: TextStyle(
                                                fontSize: 13.0,
                                                color: Colors.black54)),
                                      ],
                                    ),
                                    Divider(
                                      height: 10.0,
                                      color: Colors.green,
                                    ),
                                    Container(
                                        child:
                                            _status(itemList[ind].cancelOder))
                                  ],
                                ))))),
                  ]));
            }));
  }

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  Widget _status(status) {
    if (status == 'إلغاء الأوردر') {
      return FlatButton.icon(
          label: Text(
            status,
            style: TextStyle(color: Colors.green),
          ),
          icon: const Icon(
            Icons.highlight_off,
            size: 18.0,
            color: Colors.red,
          ),
          onPressed: () {
            _exitApp(context);
          });
    } else {
      return FlatButton.icon(
          label: Text(
            status,
            style: TextStyle(color: Colors.green),
          ),
          icon: const Icon(
            Icons.check_circle,
            size: 18.0,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => OrderDetails()));
          });
    }
  }

  erticalD() => Container(
        margin: EdgeInsets.only(left: 10.0, right: 0.0, top: 0.0, bottom: 0.0),
      );

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
}
