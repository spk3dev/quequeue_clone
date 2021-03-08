import 'package:flutter/material.dart';
import 'package:myq_mobile/screens/home/home_screen.dart';

class AppTab extends StatefulWidget {
  AppTab({Key key}) : super(key: key);
  @override
  _AppTabState createState() => _AppTabState();
}


class _AppTabState extends State<AppTab> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

    Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildStackList() {
    return <Widget>[
      HomeScreen(),
      Center(child: Text("Text screen")),
      Center(child: Text("Foo screen")),
      // ElevatedButton(
      //   onPressed: () {
      //     Navigator.of(context, rootNavigator: true)
      //         .pushReplacementNamed("/login");
      //   },
      //   child: Text(
      //     'Logout',
      //     style: optionStyle,
      //   ),
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      drawer: _buildDrawer(),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _buildStackList()
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Service"),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code), label : "Scan ??"),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: "Promotion"),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
