import 'package:flutter/material.dart';

class MovieView extends StatelessWidget {
  const MovieView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/cover.jpg',
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(75, 15, 0, 0),
                alignment: Alignment.topCenter,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Dora and the lost city of gold',
                      style: const TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '2019 PG.13 2h 7m',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment(0, -0.3),
          child: Icon(
            Icons.play_circle_fill_rounded,
            size: 70,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 20,
          child: Container(
            height: 200,
            width: 100,
            child: Stack(
              children: [
                Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/cover.jpg'),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Icon(
                    Icons.playlist_add_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
