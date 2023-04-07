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
      body: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
          ),
          children: <TextSpan>[
            TextSpan(text: "Hello",style: TextStyle(fontFamily: "FontMain"),),
            TextSpan(text: "World!", style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),),

          ]
        ),
      ),




      // Row(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 6),
      //       child: Text("Hello", style: TextStyle(fontSize: 26, color: Colors.grey),),
      //     ),
      //     Text("World!!!", style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w900),)
      //
      //   ],
      // ),
    );
  }
}
