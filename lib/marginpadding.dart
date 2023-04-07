import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.black26,
        // width: 100,
        // height: 200,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text("Hello World!!", style: TextStyle(fontSize: 30, color: Colors.white),),
        ),
      ),

      // Padding(
      //   // padding: EdgeInsets.only(top: 20,left: 35),
      //   padding: EdgeInsets.all(50),
      //   child: Text("Hello World", style: TextStyle(fontSize: 30),),
      // ),
    );
  }
}



















