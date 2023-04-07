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
        height: 300,
        width: 300,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey,
            ),
            Positioned(
              left: 21,
              top: 21,
              // bottom: 21,
              // right: 21,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.grey,
              ),
            ),
            Positioned(
              left: 42,
              top: 42,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
            ),
            Positioned(
              left: 63,
              top: 63,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
