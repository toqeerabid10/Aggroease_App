import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'Log_In_Screen.dart';
class forgotpassword extends StatefulWidget{
  const forgotpassword({super.key});

  @override
  _forgotpasswordState createState()=>_forgotpasswordState();
}
class _forgotpasswordState extends State<forgotpassword>
{
  TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: const Text("Forgot Password"),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  child: Lottie.asset("assets/139696-login-icon .json"),

                ),
              ),
              Center(
                child: Card(
                  margin: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),

                              const SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                child: TextFormField(
                                  controller: emailcontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      border: OutlineInputBorder(),
                                      labelText: "Enter email"
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),


                              const SizedBox(height: 12,),
                              ElevatedButton(onPressed: ()
                              async{
                                var email=emailcontroller.text.trim();

                                try{
                                  FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) =>
                                  {
                                    Get.to(()=>Authentication()),
                                  });

                                }on FirebaseAuth catch(e)
                                {
                                  print("Error :$e");
                                }


                              }, child:const Text("Submit"),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
