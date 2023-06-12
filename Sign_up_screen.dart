import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'Log_In_Screen.dart';
import 'SignUpUser.dart';

class Signin extends StatefulWidget{
  const Signin({super.key});

  @override
  _SigninState createState()=>_SigninState();
}
class _SigninState extends State<Signin>
{
  var _obscuretext=true;
  TextEditingController namecontrol=TextEditingController();
  TextEditingController emailcontrol=TextEditingController();
  TextEditingController phonecontrol=TextEditingController();
  TextEditingController passwordcontrol=TextEditingController();
  User? CurrentUser=FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("SignUp Page"),
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
                              SingleChildScrollView(

                                child: TextFormField(
                                  controller: namecontrol,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(
                                    ),
                                    labelText: "Enter name",

                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty)
                                    {
                                      Text("Please enter name");
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                child: TextFormField(
                                  controller: emailcontrol,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.email),
                                      border: OutlineInputBorder(),
                                      labelText: "Please enter email"
                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty)
                                    {
                                      Text("Enter Email");
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                child: TextFormField(
                                  controller: phonecontrol,
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.phone),
                                    border: OutlineInputBorder(

                                    ),
                                    labelText: "Enter phone No",

                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty)
                                    {
                                      Text("Please enter phone no");
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                child: TextFormField(
                                  controller: passwordcontrol,
                                  obscureText: _obscuretext,
                                  decoration:  InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _obscuretext=!_obscuretext;
                                        });

                                      },
                                        child: Icon(_obscuretext?  Icons.visibility:Icons.visibility_off)),
                                    border: OutlineInputBorder(

                                    ),
                                    labelText: "Enter password",

                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty)
                                    {
                                      Text("Please enter phone no");
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(height: 12,),
                              ElevatedButton(onPressed: ()
                              async{
                                var name=namecontrol.text.trim();
                                var email=emailcontrol.text.trim();
                                var phone=phonecontrol.text.trim();
                                var password=passwordcontrol.text.trim();

                                await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value) =>
                                {
                                  SignUpUser(name,email,phone,password),
                                }).then((value) =>{
                                  FirebaseAuth.instance.signOut(),
                                  Get.to(()=>Authentication()),
                                }

                                );

                              }, child:const Text("SignUp"),
                              ),


                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: ()
                                {
                                  Get.to(()=>Authentication(),);
                                },
                                child: const Card(
                                  child: Text( "Already have an Account LogIn"),
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
