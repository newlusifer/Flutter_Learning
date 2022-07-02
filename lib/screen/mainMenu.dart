import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bookShelf.dart';
import 'bookShop.dart';
import 'myBook.dart';
import 'updateBook.dart';
import 'setting.dart';

class MainMenu extends StatefulWidget {
  static const routeName = '/';

  const MainMenu({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainMenu();
  }
}

class _MainMenu extends State<MainMenu> {
  int _selectedIndex = 0;
  final List<Widget> _pageWidget = <Widget>[
    const BookShelf(),
    const UpdateBook(),
    const BookShop(),
    const MyBook(),
    const Setting(),
  ];
  final List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.book),
      label: 'Bookshelf',
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.calendar),
      label: 'Update',
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.shop),
      label: 'Book Shop',
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.featherPointed),
      label: 'My Write',
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.gear),
      label: 'Setting',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: _pageWidget.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: _menuBar,
            currentIndex: _selectedIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),
        ));
  }
}
