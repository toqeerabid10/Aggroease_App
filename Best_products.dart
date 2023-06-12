import 'package:flutter/material.dart';

class BestProduct extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,children: [
        Container(
          width: 150,
          height: 360,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
        Container(
          width: 150,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
        Container(
          width: 150,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
        Container(
          width: 150,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
        Container(
          width: 150,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
        Container(
          width: 150,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
        Container(
          width: 150,
          color: Colors.tealAccent,

          child:Column(
            children: [
              Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('assets/fruit.jpg')),
              Text("Price: 200"),
              OutlinedButton(onPressed:(){

              }, child: Text("Buy"),
              ),

            ],
          ),
        ),
      ],
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,

      )
    );
  }
}
