

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:test_flutter_app/quote_pages/home_page.dart';
import 'package:test_flutter_app/quote_pages/loading_page.dart';


// import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context)=>TestWidget(),
      '/loading': (context)=> Loading()
    },
    initialRoute: '/',
  ));}



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





