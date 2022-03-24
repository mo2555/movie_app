import 'package:flutter/material.dart';
import 'package:movie_app/screens/movie_details.dart';
import 'package:movie_app/widgets/movie_photo.dart';
import 'package:movie_app/widgets/movie_view.dart';
import 'package:movie_app/widgets/recomended_cat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const id = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String>movies = [
    'assets/m1.jpg',
    'assets/m2.jpg',
    'assets/m3.jpg',
    'assets/rec.jpg',
    'assets/m1.jpg',
    'assets/m2.jpg',
    'assets/m3.jpg',
    'assets/rec.jpg',
    'assets/m1.jpg',
    'assets/m2.jpg',
    'assets/m3.jpg',
    'assets/rec.jpg',
    'assets/m1.jpg',
    'assets/m2.jpg',
    'assets/m3.jpg',
    'assets/rec.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            InkWell(
              onTap: ()=>Navigator.pushNamed(context, MovieDetailsScreen.id),
              child: Container(
                color: Colors.white70,
                height: MediaQuery.of(context).size.height * 0.35,
                child: MovieView(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 10,left: 10,),
              height: MediaQuery.of(context).size.height * 0.03,
              color: Colors.white70.withOpacity(0.15),
              child: Text(
                'New Realesses',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.19,
              color: Colors.white70.withOpacity(0.15),
              child: ListView.builder(
                itemExtent: 80,
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (ctx,index)=>MoviePhoto(movies[index]),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 10,left: 10,),
              height: MediaQuery.of(context).size.height * 0.03,
              color: Colors.white70.withOpacity(0.15),
              child: Text(
                'Recomended',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.24,
              color: Colors.white70.withOpacity(0.15),
              child: ListView.builder(
                itemExtent: 80,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx,index)=>RecommendedCat(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
