import 'package:flutter/material.dart';
import 'placeholder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _currentIndex=0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.black87),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 8,
        title: Center(
          child: Text('اپ بار'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child:Text('دراور',
              style: TextStyle(color:Colors.white,fontSize: 24),textDirection: TextDirection.rtl,
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index) {
        setState(() {
          _currentIndex = index;
        });
    }
}
