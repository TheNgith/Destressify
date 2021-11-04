import 'package:destressify/views/menu_page.dart';
import 'package:destressify/views/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[MenuPage(), ProfilePage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontFamily: 'Montserrat Bold'),
        showUnselectedLabels: false,
        iconSize: 25.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.clipboard),
            activeIcon: FaIcon(FontAwesomeIcons.solidClipboard),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            activeIcon: FaIcon(FontAwesomeIcons.solidUser),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black87,
        selectedIconTheme: IconThemeData(size: 30.0),
        onTap: _onItemTapped,
      ),
    );
  }
}
