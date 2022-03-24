import 'package:flutter/material.dart';

class MoviePhoto extends StatefulWidget {
  final String movieLink;
  const MoviePhoto(this.movieLink);


  @override
  State<MoviePhoto> createState() => _MoviePhotoState();
}

class _MoviePhotoState extends State<MoviePhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Stack(
        children: [
          Container(
            height: 110,
            width: 80,
            child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    widget.movieLink
                ),),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Icon(Icons.playlist_add_rounded,color: Colors.white,),),
        ],
      ),
    );
  }
}
