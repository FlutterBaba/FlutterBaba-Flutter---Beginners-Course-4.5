import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOption = <Widget>[
    LoginPage(),
    Text("index 1"),
    Text("index 2"),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "business",
            icon: Icon(Icons.business),
          ),
          BottomNavigationBarItem(
            label: "business",
            icon: Icon(Icons.business),
          ),
          BottomNavigationBarItem(
            label: "business",
            icon: Icon(Icons.business),
          )
        ],
      ),
    );
  }
}
