import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_des.dart';
import 'package:movie_app/widgets/recomended_cat.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  static const id = 'movieDetailsScreen';

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Dora and the lost city of gold'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                  children: [
                    Container(
                      height: 170,
                      width: double.infinity,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/cover.jpg',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 150,
                      child: Icon(
                        Icons.play_circle_fill_rounded,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Dora and the lost city of gold',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2019 PG:13 2h 7m',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: MovieDes(),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 10,left: 10,),
                    height: MediaQuery.of(context).size.height * 0.03,
                    color: Colors.white70.withOpacity(0.15),
                    child: Text(
                      'More Like This',
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
          ],
        ),
      ),
    );
  }
}
