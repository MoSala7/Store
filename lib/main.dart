import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'data/theme.dart';
import 'package:splashscreen/splashscreen.dart';
import './screens/ghome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"),
      ],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'store',
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Colors.green,
          fontFamily: 'Hacen_Tunisia',
          textTheme: TextTheme(
              title: TextStyle(color: StyleCustom().red, fontSize: 14))),
      routes: {
        '/GroceryHomePage': (context) => GroceryHomePage(x: 0),
        '/SignIn': (context) => SignIn(),
        '/Confirm': (context) => Confirm(),
      },
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 2,
          navigateAfterSeconds: SignIn(),
        ),
        Container(
          alignment: Alignment(0, 0),
          child: Image.asset('assets/logo.png',
              width: MediaQuery.of(context).size.width / 1.5),
        ),
      ],
    ));
  }
}

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String dropdownValue = 'فلسطين';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleCustom().bg,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment(0, 1),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset('assets/logo.png',
                  width: MediaQuery.of(context).size.width / 1.5),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                children: <Widget>[
                  Text("تسجيل دخول",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: 'Hacen_Tunisia')),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(right: 10, left: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: Container(),
                      style: TextStyle(color: StyleCustom().red),
                      value: dropdownValue,
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['مصر', 'السعودية', 'عمان', 'فلسطين']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                          color: StyleCustom().bg,
                          border: Border.all(color: Colors.grey[300], width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "ادخل  رقم هاتفك",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.black),
                          labelStyle: TextStyle(color: Colors.black),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.phone,
                        cursorColor: StyleCustom().red,
                        style: TextStyle(color: StyleCustom().red),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: FlatButton(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      color: StyleCustom().red,
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/Confirm');
                      },
                      child: Container(
                        alignment: Alignment(0, 0),
                        height: 35,
                        margin: EdgeInsets.only(top: 5),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text(
                          "دخول",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/Confirm');
                      Navigator.popAndPushNamed(context, '/GroceryHomePage');
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("تصفح كزائر",
                          style: TextStyle(color: StyleCustom().red)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Confirm extends StatefulWidget {
  Confirm({Key key}) : super(key: key);

  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Image.asset('assets/logo.png',
                  width: MediaQuery.of(context).size.width / 1.5),
            ),
          ),
          Text("تم إرسال كود التفعيل",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          Text("+9665555555", style: TextStyle(color: Colors.black45)),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(" طلب كود التفعيل بعد ",
                    style: TextStyle(color: Colors.black45)),
                Text("00:54", style: TextStyle(color: Colors.black45)),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                  left: 50.0, right: 50, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Colors.transparent),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                   ),  
                    hintText: "كود التفعيل",
                    alignLabelWithHint: false),
              )),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/GroceryHomePage');
                    },
                    child: Text("دخول", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.green))),
                InkWell(
                    child: Text("اعد ارسال كود التفعيل",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black45))),
              ],
            ),
          ),
        ]));
  }
}
