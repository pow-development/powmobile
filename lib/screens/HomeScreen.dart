import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/screens/EventsScreen.dart';
import 'package:powmobile/screens/LeaderScreen.dart';
import 'package:powmobile/screens/MainScreen.dart';
import 'package:powmobile/screens/ProfileScreen.dart';
import 'package:powmobile/screens/ShopScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    EventsScreen(),
    LeaderScreen(),
    ShopScreen(),
    ProfileScreen()
  ];

  static const List<String> _titleOptions = <String>[
    'Лента',
    'Предстоящие мероприятия',
    'Рейтинг',
    'Магазин',
    'Личный кабинет'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_titleOptions.elementAt(_selectedIndex), style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 38),),
              SizedBox(
                height: 16.0,
              ),
              Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
            ]
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: BottomNavigationBar(
              backgroundColor: Colors.red,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedIconTheme: IconThemeData(
                size: 35.0,
              ),
              iconSize: 25.0,
              selectedFontSize: 0.0,
              unselectedFontSize: 0.0,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: '',
                  backgroundColor: Colors.black,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view),
                  activeIcon: Icon(Icons.grid_view_sharp),
                  label: '',
                  backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star_outline),
                  activeIcon: Icon(Icons.star),
                  label: '',
                  backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  activeIcon: Icon(Icons.shopping_cart),
                  label: '',
                  backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: '',
                  backgroundColor: Colors.black
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

