import 'package:flutter/material.dart';
import 'package:movie_app/api/fetchData.dart';
import 'package:movie_app/screens/browse_screen.dart';
import 'package:movie_app/screens/home.dart';
import 'package:movie_app/screens/home_screen.dart';
import 'package:movie_app/screens/movie_details.dart';
import 'package:movie_app/screens/search_screen.dart';
import 'package:movie_app/screens/splash_screen.dart';
import 'package:movie_app/screens/whatchlist_screen.dart';

import 'api/Data.dart';


void main() async{

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FirstScreen.id,
      routes: {
        FirstScreen.id:(context)=>FirstScreen(),
        HomeScreen.id:(context)=>HomeScreen(),
        BrowseScreen.id:(context)=>BrowseScreen(),
        MyHomePage.id:(context)=>MyHomePage(),
        SearchScreen.id:(context)=>SearchScreen(),
        WatchListScreen.id:(context)=>WatchListScreen(),
        MovieDetailsScreen.id:(context)=>MovieDetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
    );
  }
}

