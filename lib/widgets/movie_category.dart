import 'package:flutter/material.dart';

class MovieCat extends StatelessWidget {
  const MovieCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Image.asset('assets/list.jpg',fit: BoxFit.fill,),
          Align(
            alignment: Alignment(0,0),
            child: Text(
              'Action',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
