import 'package:agro_ease/Home_Services/Home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'Forgot_password.dart';
import 'Sign_up_screen.dart';
class Authentication extends StatefulWidget{
  const Authentication({super.key});

  @override
  _AuthenticationState createState()=>_AuthenticationState();
}
class _AuthenticationState extends State<Authentication>
{
  var _obscuretext=true;
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("LogIn Page"),
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
                                  validator: (value) {
                                    if(value!.isEmpty)
                                      {
                                        Text("Please enter Email");
                                      }
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                child: TextFormField(
                                  controller: passwordcontroller,
                                  obscureText: _obscuretext,
                                  decoration:  InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _obscuretext=!_obscuretext;
                                        });
                                      },
                                        child: Icon(_obscuretext?Icons.visibility:Icons.visibility_off),),
                                    border: OutlineInputBorder(

                                    ),
                                    labelText: "Enter password",

                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty)
                                    {
                                      Text("Please enter password");
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(height: 12,),
                              ElevatedButton(onPressed: ()
                              async{
                                var email=emailcontroller.text.trim();
                                var password=passwordcontroller.text.trim();
                                try{
                                  final User? firebaseUser=(await FirebaseAuth.instance.
                                  signInWithEmailAndPassword(email: email, password: password)).user;
                                  if(firebaseUser!=null)
                                  {
                                    Get.off(()=>HomeScreen());

                                  }
                                  else
                                  {
                                    print("Email or password does not Exist");
                                  }

                                } on FirebaseAuthException catch(e)
                                {
                                  print("Error no :$e");
                                }


                              }, child:const Text("Login"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=>forgotpassword());
                                },
                                child: const Card(
                                  child: Text("Forgot password"),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=>const Signin(),);
                                },
                                child: const Card(
                                  child: Text( "Don't have an Account SignUp"),
                                ),
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
