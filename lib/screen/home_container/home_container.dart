import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/screen/basket/basket.dart';
import 'package:localhub/screen/category/category.dart';
import 'package:localhub/screen/favourite/favourite.dart';
import 'package:localhub/screen/order/order.dart';
import 'package:localhub/screen/search/search_container.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Category(),
    SearchContainer(),
    Favourite(),
    Order(),
    Basket(),
  ];
  List<String> title = [
    'Local Hub',
    'Search',
    'Favourite',
    'Order',
    'Basket',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          title.elementAt(_currentIndex),
          style: GoogleFonts.openSans(
            color: BUTTON_BLACK,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () => Navigator.of(context).pushNamed('/story'),
            child: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage(
                'assets/images/splash.png',
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/user.png'),
            onPressed: () {
              Navigator.of(context).pushNamed('/profileSettings');
            },
          )
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedItemColor: BUTTON_BLACK,
        unselectedItemColor: HINT_COLOR,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.dashboard_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.favorite_border_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.list_alt_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_basket_outlined),
          ),
        ],
      ),
    );
  }
}
