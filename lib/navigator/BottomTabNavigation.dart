import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screen/bookShelf.dart';
import '../screen/bookShop.dart';
import '../screen/myBook.dart';
import '../screen/updateBook.dart';
import '../screen/setting.dart';
import 'package:flutter/services.dart';
import '../screen/bookInfo.dart';
import '../screen/bookReading.dart';
import '../screen/signIn.dart';

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

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    _bookShelfNavigatorKey,
    _updateBookNavigatorKey,
    _bookShopNavigatorKey,
    _myBookNavigatorKey,
    _settingNavigatorKey,
  ];

  Future<bool> _systemBackButtonPressed() async {
    if (_navigatorKeys[_selectedIndex].currentState!.canPop()) {
      _navigatorKeys[_selectedIndex]
          .currentState!
          .pop(_navigatorKeys[_selectedIndex].currentContext);
      return false;
    } else {
      //SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
      return false;
    }
  }

  final List<Widget> _pageWidget = <Widget>[
    BookShelfNavigator(),
    UpdateBookNavigator(),
    BookShopNavigator(),
    MyBookNavigator(),
    SettingNavigator(),
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
        onWillPop: _systemBackButtonPressed,
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

//BookShelf_Tab
class BookShelfNavigator extends StatefulWidget {
  @override
  _BookShelfNavigatorState createState() => _BookShelfNavigatorState();
}

GlobalKey<NavigatorState> _bookShelfNavigatorKey = GlobalKey<NavigatorState>();

class _BookShelfNavigatorState extends State<BookShelfNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _bookShelfNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/bookShelf':
                  return BookShelf();
                case '/bookInfo':
                  return BookInfo();
                case '/bookReading':
                  return BookReading();
                default:
                  return BookShelf();
              }
            });
      },
    );
  }
}

//UpdateBook_Tab
class UpdateBookNavigator extends StatefulWidget {
  @override
  _UpdateBookNavigator createState() => _UpdateBookNavigator();
}

GlobalKey<NavigatorState> _updateBookNavigatorKey = GlobalKey<NavigatorState>();

class _UpdateBookNavigator extends State<UpdateBookNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _updateBookNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/updateBook':
                  return UpdateBook();
                case '/bookInfo':
                  return BookInfo();
                default:
                  return UpdateBook();
              }
            });
      },
    );
  }
}

//BookShop_Tab
class BookShopNavigator extends StatefulWidget {
  @override
  _BookShopNavigator createState() => _BookShopNavigator();
}

GlobalKey<NavigatorState> _bookShopNavigatorKey = GlobalKey<NavigatorState>();

class _BookShopNavigator extends State<BookShopNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _bookShopNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/bookShop':
                  return BookShop();
                default:
                  return BookShop();
              }
            });
      },
    );
  }
}

//MyBook_Tab
class MyBookNavigator extends StatefulWidget {
  @override
  _MyBookNavigator createState() => _MyBookNavigator();
}

GlobalKey<NavigatorState> _myBookNavigatorKey = GlobalKey<NavigatorState>();

class _MyBookNavigator extends State<MyBookNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _myBookNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/myBook':
                  return MyBook();
                default:
                  return MyBook();
              }
            });
      },
    );
  }
}

//Setting_Tab
class SettingNavigator extends StatefulWidget {
  @override
  _SettingNavigator createState() => _SettingNavigator();
}

GlobalKey<NavigatorState> _settingNavigatorKey = GlobalKey<NavigatorState>();

class _SettingNavigator extends State<SettingNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _settingNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/setting':
                  return Setting();
                default:
                  return Setting();
              }
            });
      },
    );
  }
}
