import 'package:agro_ease/Home_Services/Best_products.dart';
import 'package:agro_ease/Services/Log_In_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home screen"
          ),
          actions: [
            GestureDetector(
              onTap: (){
                Get.off(()=>Authentication(),);

              },
                child: Icon(Icons.logout))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left:4.0,right: 4.0),
                    child: SingleChildScrollView(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          labelText: "Search",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text("Categories",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
              ),
              SingleChildScrollView
                 (
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                        child: CircleAvatar(child: Image.asset('assets/fruit.jpg' ),backgroundColor: Colors.transparent,radius: 40,)),
                    SizedBox(width: 10,),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: CircleAvatar(child: Image.asset('assets/crop_yield.png' ),backgroundColor: Colors.transparent,radius: 40,)),
                    SizedBox(width: 10,),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: CircleAvatar(child: Image.asset('assets/pesticides.png' ),backgroundColor: Colors.transparent,radius: 40,)),
                    SizedBox(width: 10,),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: CircleAvatar(child: Image.asset('assets/farmer.jpg' ),backgroundColor: Colors.transparent,radius: 40,)),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Top Sellings",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
             SingleChildScrollView(
               child: Container(
                 height: 470,
                 width: 360,
                 child:  SingleChildScrollView(
                   child: Container(
                       color: Colors.amberAccent,
                       height: 500,
                       width: 150,
                       child: BestProduct()),
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
