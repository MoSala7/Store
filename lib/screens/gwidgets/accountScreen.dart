import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key key}) : super(key: key);

  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 3.0, right: 0.0, top: 0.0, bottom: 0.0),
      );
  String userAccountScreen = 'أحمد صالح';
  String mobilenumber = '010101010';
  Icon keyloch = new Icon(
    Icons.vpn_key,
    color: Colors.black38,
  );
  Icon clear = new Icon(
    Icons.history,
    color: Colors.black38,
  );
  Icon logout = new Icon(
    Icons.do_not_disturb_on,
    color: Colors.black38,
  );

  Icon menu = new Icon(
    Icons.more_vert,
    color: Colors.black38,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
          title: Text("بياناتي"),
        ),
      body: Container(
        child: SingleChildScrollView(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(7.0),
                  alignment: Alignment.topCenter,
                  height: 260.0,
                  child: new Card(
                    elevation: 3.0,
                    child: Column(
                      children: <Widget>[
                        new Container(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              margin: const EdgeInsets.all(10.0),
                              // padding: const EdgeInsets.all(3.0),
                              child: ClipOval(
                                child: _image == null
                                    ? Image.asset('assets/female.png')
                                    : Image.file(_image),
                              ),
                            )),

                        new FlatButton(
                          onPressed: getImage,
                          child: Text(
                            'تغيير',
                            style: TextStyle(
                                fontSize: 13.0, color: Colors.green),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.green)),
                        ),

                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Container(
                              margin: EdgeInsets.only(
                                  left: 10.0,
                                  top: 20.0,
                                  right: 5.0,
                                  bottom: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Text(
                                    userAccountScreen,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  _verticalDivider(),
                                  new Text(
                                    mobilenumber,
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // VerticalDivider(),
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: 12.0, top: 5.0, right: 12.0, bottom: 5.0),
                    child: new Text(
                      'تعديل بياناتى',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    )),
                Container(
                    margin: EdgeInsets.all(7.0),
                    alignment: Alignment.topCenter,
                    child: new Card(
                        elevation: 3.0,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(7.0),
                                  child: Text("تغيير الأسم")),
                              Container(
                                margin: EdgeInsets.only(left: 7.0, right: 7.0),
                                child: TextField(
                                  decoration:
                                      InputDecoration(hintText: "أحمد صالح"),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(7.0),
                                  child: Text("تغيير رقم الجوال")),
                              Container(
                                margin: EdgeInsets.only(left: 7.0, right: 7.0),
                                child: TextField(
                                  decoration:
                                      InputDecoration(hintText: "0101010101"),
                                ),
                              ),
                            ]))),
                Container(
                  margin: EdgeInsets.all(7.0),
                  child: Card(
                    elevation: 1.0,
                    child: Row(
                      children: <Widget>[
                        new IconButton(icon: logout, onPressed: null),
                        _verticalD(),
                        new Text(
                          'Deactivate Account',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.redAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left:7,right:7),
        child: RaisedButton(
          color: Colors.green,
          onPressed: () {},
          child: Text("حفظ", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
