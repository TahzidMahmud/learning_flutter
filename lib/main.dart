

import 'dart:collection';

import 'package:flutter/material.dart';
import 'quote.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: TestWidget(),
  ));}


  //stateless doesn't contain any state that doesn't really change after it's created or no dynamic data or in change of user interaction
  class TestWidget extends StatefulWidget {
  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int counter = 0;
  List<Quote> quotes=[
    Quote(qoute: "more u learn more u earn",author:"warn buffet"),
    Quote(qoute: "readers are leaders",author:"alison"),


  ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text("test bar"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              counter+=1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
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
              SizedBox(height: 20.0,),
              //for avatar setting in circle
              Center(
                child: CircleAvatar(
                  //AssetImage get images from assets
                  backgroundImage: AssetImage("assets/images/pro.jpg"),
                  //for size we use radius
                  radius: 50.0,
                ),
              ),
              Center(
                child: Text(
                  "$counter",
                ),
              ),
              Column(
                //map function works like same as js map and a children accepts a list so converto to list
                children:quotes.map((quote){
                    return Text(quote);
                }).toList(),
              ),
            ],
          ),
        ),
      );
    }
}

  class TestTwo extends StatefulWidget {
    @override
    _TestTwoState createState() => _TestTwoState();
  }

  class _TestTwoState extends State<TestTwo> {
    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }

  


