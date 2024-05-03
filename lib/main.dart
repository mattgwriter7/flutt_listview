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
  List<String> tile = [
    "Apples",
    "Banana",
    "Melon"
  ];

  void addFruit( BuildContext context) {
    setState(() {
      tile.add('another fruit');
    });
  }

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
        body: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.black26,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text( 'Listview Example 1!',
                    style: TextStyle( fontSize: 26, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    child: Text( 'Use "+" for more fruits...',
                    style: TextStyle( color: Colors.white),
                    ),
                  ),
                ],
              )),
            ),
            Expanded(
              
              child: Container( width: double.infinity, color: Colors.grey,child: 
              
              ListView.separated(
                itemCount: tile.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const Icon(Icons.arrow_circle_right),
                    title: Text('${ index+1 }. ${ tile[index]}'));
                },
                separatorBuilder: (context, index) {
                  return Divider( color: Colors.black, thickness: 5.0);
                },
                ),              
              ),
            ),              
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addFruit( context );
          },
          child: const Icon(Icons.add, size: 32),
        ),
      ),
    );
  }
}

