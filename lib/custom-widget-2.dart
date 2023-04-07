import 'package:flutter/material.dart';
import 'package:flutter_work_session/ui_helper/util.dart';
import 'package:flutter_work_session/widgets/rounded-button.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 50,
              child: RoudedButton(btnName: "play", icon: Icon(Icons.play_arrow_outlined), bgColor: Colors.orange, callback: (){
                print("Logged in");
              },textStyle: mTextStyle11(textColor: Colors.white, fontWeight: FontWeight.w600),),
            ),
            Container(height: 11.1,),
            Container(
              width: 100,
              height: 50,
              child: RoudedButton(btnName: "play", icon: Icon(Icons.play_arrow_outlined), bgColor: Colors.orange, callback: (){
                print("Logged in");
              },textStyle: mTextStyle11(textColor: Colors.white, fontWeight: FontWeight.w600),),
            ),
          ],
        ),
      )
    );
  }
}
