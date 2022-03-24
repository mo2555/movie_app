import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const id = 'searchScreen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top+15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white70.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              margin: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Colors.white70,
                    ),
                    prefixIcon: const Icon(Icons.search_rounded,color: Colors.white,),
                    iconColor: Colors.white,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                )
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Icon(Icons.local_movies,size: 120,color: Colors.white70,),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text('No movies found',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
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
