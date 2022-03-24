import 'package:flutter/material.dart';

class MovieDes extends StatelessWidget {
  const MovieDes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.35,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/cover.jpg'),
                ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                          ]
                      ),
                      padding: EdgeInsets.all(5),
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text(
                        'Action',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                          ]
                      ),
                      padding: EdgeInsets.all(5),
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text(
                        'Action',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                          ]
                      ),
                      padding: EdgeInsets.all(5),
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text(
                        'Action',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(color: Colors.white),
                      BoxShadow(color: Colors.white),
                      BoxShadow(color: Colors.white),
                      BoxShadow(color: Colors.white),
                    ]
                ),
                padding: EdgeInsets.all(5),
                height: 20,
                width: MediaQuery.of(context).size.width * 0.15,
                child: Text(
                  'Action',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Having spent most of her life exploring',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'the jungle, nothing could prepare Dora',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'for her most dangerous adventure yet',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  '--high school.',
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '7.7',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
