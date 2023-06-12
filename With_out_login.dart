

import 'package:agro_ease/Home_Services/Home_screen.dart';
import 'package:agro_ease/Services/Log_In_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Withoutlogin extends StatefulWidget {

  @override
  State<Withoutlogin> createState() => WithoutloginState();
}

class WithoutloginState extends State<Withoutlogin> {
  User? user;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user=FirebaseAuth.instance.currentUser;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: user !=null?const HomeScreen():Authentication(),
    );
  }
}
