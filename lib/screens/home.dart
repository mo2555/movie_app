import 'package:flutter/material.dart';
import 'package:movie_app/screens/browse_screen.dart';
import 'package:movie_app/screens/home_screen.dart';
import 'package:movie_app/screens/search_screen.dart';
import 'package:movie_app/screens/whatchlist_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  static const id = 'myHomePageScreen';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    BrowseScreen(),
    WatchListScreen(),
  ];

  int selectedIndex = 0;

  changeIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        backgroundColor: Colors.black87.withOpacity(0.9),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 28,
        currentIndex: selectedIndex,
        onTap: changeIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('SEARCH'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            title: Text('BROWSE'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            title: Text('WATCHLIST'),
          ),
        ],
      ),
    );
  }
}
