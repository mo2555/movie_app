import 'package:flutter/material.dart';

import 'movie_photo.dart';

class RecommendedCat extends StatelessWidget {
  const RecommendedCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviePhoto('assets/rec.jpg'),
          Row(
            children: [
              Icon(Icons.star,color: Colors.amber,
              size: 10,
              ),
              SizedBox(
                width: 2,
              ),
              Text('7.7',style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
          Text('No Way Home',style: TextStyle(
            fontSize: 10,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          Text('2022 2h 28m',style: TextStyle(color: Colors.grey,fontSize: 9,),),
        ],
      ),
    );
  }
}
