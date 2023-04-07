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
          title: Text("Flutter Container"),
        ),
        body: Center(
            child: Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/flutter-logo.jpg")))
        // Center(
        //   child: OutlinedButton(
        //     child: Text("Outlined-Button"),
        //     onPressed: (){
        //       print("Hello form Outlined-Button");
        //     },
        //     onLongPress: (){
        //       print("LongPressed");
        //     },
        //
        //   ),
        // )
        //   ElevatedButton(
        //     child: Text("Elevated Button"),
        //     onPressed: (){
        //       print("Hello From Elevated_Button");
        // },
        //   )
        // TextButton(
        //   child: Text("Click on me"),
        //   onPressed: (){
        //     print("Text Button Tapped");
        //   },
        //   onLongPress: (){
        //     print("LongPressed");
        //   },
        // )
        // Center(
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     // color: Colors.black,
        //     child: Center(child: Text("hello Gani!", style: TextStyle(
        //         fontSize: 25,
        //         color:Colors.blue,
        //         fontWeight: FontWeight.w800,
        //         // backgroundColor: Colors.orange,
        //     ), )),
        //   ),
        // ),
        );
  }
}
