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
          height: double.infinity,
          color: Colors.blue.shade50,
          child: Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                // borderRadius: BorderRadius.circular(20),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                border: Border.all(
                  width: 10,
                  color: Colors.black26,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    spreadRadius: 4,
                    color: Colors.red,
                  )
                ],
                shape: BoxShape.circle,
              ),
            ),
          ),
        )
    );
  }
}