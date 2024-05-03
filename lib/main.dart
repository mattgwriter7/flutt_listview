// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

//  This code is literally from the "flutter create" boilerplate,
//  but I removed the counter app (and kept the underlying structure),
//  and some unecessary comments and variables...

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ super.key });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //  page vars
  final String filename = 'main.dart';

  @override
  void initState() {
    //  anything?
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text( filename ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.transparent,
          child: Center(
            child: Text( '$filename is ready!'),
          ),
        ),  
      ),
    );
  }
}

