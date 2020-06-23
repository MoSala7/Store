import 'package:flutter/material.dart';
import './tabs/gcarttab.dart';
import './tabs/ghometab.dart';
import './tabs/gprofiletab.dart';
import './tabs/gwishlisttab.dart';
import './tabs/dshoptab.dart';

class GroceryHomePage extends StatefulWidget {
  GroceryHomePage({
    Key key,
    @required this.x,
  }) : super(key: key);
  final int x;
  @override
  GroceryHomePageState createState() {
    return GroceryHomePageState(currentIndex: x);
  }
}

class GroceryHomePageState extends State<GroceryHomePage> {
  int currentIndex;
  GroceryHomePageState({this.currentIndex});
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  @override
  void initState() {
    _children.add(GroceryHomeTabView());
    _children.add(GroceryShopTabView());
    _children.add(GroceryCartTabView());
    _children.add(GroceryWishlistTabView());
    _children.add(GroceryProfileTabView());

    _appBars.add(_buildAppBar());
    _appBars.add(_buildAppBarThree());
    _appBars.add(_buildAppBar());
    _appBars.add(_buildAppBar());
    _appBars.add(_buildAppBar());
    super.initState();
  }

  Future<bool> _exitApp(BuildContext context) {
  return showDialog(
        context: context,
        child: new AlertDialog(
          title: new Text('هل أنت متأكد انك تريد الخروج ؟'),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text('لا'),
            ),
            new FlatButton(
              onPressed: () { Navigator.of(context).pop(true);},
              child: new Text('نعم'),
            ),
          ],
        ),
      ) ??
      false;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[currentIndex],
      body: WillPopScope(
          child: _children[currentIndex], onWillPop: ()=> _exitApp(context)),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Container(
        margin: EdgeInsets.all(5),
        child: Image.asset('assets/logo2.png'),
      ),
      centerTitle: true,
      leading: Container(),
      actions: <Widget>[],
    );
  }

  Widget _buildAppBarThree() {
    return PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: Container(color:Colors.green,
        margin: EdgeInsets.only(top: 20.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            child: Card(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      hintText: "البحث عن منتج محدد",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search))),
                ),
              ),
            ),
          ),
          leading: Image.asset('assets/logo2.png'),
        ),
      ),
    );
  }

  Widget _buildAppBarOne(String title) {
    return AppBar(
      bottom: PreferredSize(
          child: Container(
            color: Colors.grey.shade200,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0)),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title, style: TextStyle(color: Colors.black)),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text("الرئيسية")),
        BottomNavigationBarItem(icon: Icon(Icons.store), title: Text("تصفح")),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), title: Text("السلة")),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), title: Text("مفضلتى")),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), title: Text("البروفايل")),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: this.currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
