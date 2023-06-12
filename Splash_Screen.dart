import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'With_out_login.dart';

class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}
class SplashScreenState extends State
{
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 5), () {
      print('Rehman');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> Withoutlogin()),
      );
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  child: Lottie.asset("assets/98638-splashy-loader .json"),

                ),
                const SizedBox(height: 10,),
                const Center(
                  child: Text("Welcome to AgroEase",style: TextStyle(
                      fontSize: 24,fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}