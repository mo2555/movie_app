
import 'package:flutter/material.dart';
import 'package:movie_app/screens/home.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  static const id = 'splashScreen';

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  toHomePage(){
    Future.delayed(Duration(seconds: 3),()=>Navigator.pushReplacementNamed(context, MyHomePage.id));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    toHomePage();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child:  Image.asset(
              'assets/preview.png',
          fit: BoxFit.fill,
          ),
      ),
    );
  }
}
