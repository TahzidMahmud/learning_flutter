

import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: TestWidget(),
  ));}
  class TestWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("test bar"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //cross-axis is opposite to the base line for column it's y and for row it's x
            //AxisAlingment works like a flex-box
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Center(
                  child: Text(
                    "i am from test",
                    style: TextStyle(
                      color:Colors.black ,
                      letterSpacing: 2.0
                    ),
                  ),
                ),
              //this widget for a blank div
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.red[400],
                    size: 30,
                  ),
                  Center(
                    child: Text(
                      "mail",
                      style: TextStyle(
                          color:Colors.black ,
                          letterSpacing: 2.0
                      ),
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      );
    }
  }
  


