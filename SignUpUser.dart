
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'Log_In_Screen.dart';
SignUpUser(String name, String email, String phone, String password)
async{

  User? CurrentUser=FirebaseAuth.instance.currentUser;
  try{
    await FirebaseFirestore.instance.collection("users").doc(CurrentUser!.uid).set({
      'userName': name,
      'UserEmail': email,
      'UserPhoneNo': phone,
      'CreatedAt': DateTime.now(),
      'UserId': CurrentUser.uid,
    }).then((value) =>{
      FirebaseAuth.instance.signOut(),
      Get.to(()=>Authentication()),
    });
  }
  on FirebaseAuthException catch(e)
  {
    print("Error No :$e");
  }


}