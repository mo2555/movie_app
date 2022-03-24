import 'package:flutter/material.dart';
import 'package:movie_app/widgets/list_widget.dart';

class WatchListScreen extends StatefulWidget {
  const WatchListScreen({Key? key}) : super(key: key);

  static const id = 'watchListScreen';

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('   WatchList',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (ctx,index)=>ListWidget(),),
        )
      )
    );
  }
}