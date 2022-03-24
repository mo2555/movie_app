import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 90,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 80,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/list.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Icon(
                          Icons.playlist_add_check,
                          color: Colors.amber.shade700,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Alita Battel Angel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '2019',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Rosa Salazar,Christoph Waltz',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(0.5),
            height: 3,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          ),
        ],
      ),
    );
  }
}
