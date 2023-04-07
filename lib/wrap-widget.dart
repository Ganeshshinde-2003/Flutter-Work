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
        width: double.infinity,
        child: Wrap(
          // spacing: 10,
            // direction: Axis.vertical,
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(width: 70, height: 70, color: Colors.orange,),
              Container(width: 70, height: 70, color: Colors.red,),
              Container(width: 70, height: 70, color: Colors.green,),
              Container(width:70, height: 70, color: Colors.grey,),
              Container(width: 70, height: 70, color: Colors.black26,),
              Container(width: 70, height: 70, color: Colors.yellow,),
              Container(width: 70, height: 70, color: Colors.orange,),
              Container(width: 70, height: 70, color: Colors.blue,),
              Container(width: 70, height: 70, color: Colors.red,),
              Container(width: 70, height: 70, color: Colors.green,),
              Container(width:70, height: 70, color: Colors.grey,),
              Container(width: 70, height: 70, color: Colors.black26,),
              Container(width: 70, height: 70, color: Colors.blue,),
              Container(width: 70, height: 70, color: Colors.red,),
              Container(width: 70, height: 70, color: Colors.green,),
              Container(width:70, height: 70, color: Colors.grey,),
              Container(width: 70, height: 70, color: Colors.black26,),
              Container(width: 70, height: 70, color: Colors.yellow,),
              Container(width: 70, height: 70, color: Colors.orange,),
              Container(width: 70, height: 70, color: Colors.blue,),
              Container(width: 70, height: 70, color: Colors.red,),
              Container(width: 70, height: 70, color: Colors.green,),
              Container(width:70, height: 70, color: Colors.grey,),
              Container(width: 70, height: 70, color: Colors.black26,),
              Container(width: 70, height: 70, color: Colors.yellow,),
            ],
          ),
      ),





      // SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       Container(width: 100, height: 100, color: Colors.orange,),
      //       Container(width: 100, height: 100, color: Colors.blue,),
      //       Container(width: 100, height: 100, color: Colors.red,),
      //       Container(width: 100, height: 100, color: Colors.green,),
      //       Container(width: 100, height: 100, color: Colors.grey,),
      //       Container(width: 100, height: 100, color: Colors.black26,),
      //       Container(width: 100, height: 100, color: Colors.yellow,),
      //     ],
      //   ),
      // ),
    );
  }
}
