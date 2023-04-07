import 'package:flutter/material.dart';
import 'package:flutter_work_session/ui_helper/util.dart';

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
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30, fontFamily: "FontMain"),
          subtitle1: TextStyle(fontSize: 20)
        )
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
        title: const Text("Dashboard"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
           Text("hello world",style: Theme.of(context).textTheme.headline1,),
           Text("hello world",style: Theme.of(context).textTheme.subtitle1,),
           Text("hello world",style: mTextStyle11(textColor: Colors.brown, fontWeight: FontWeight.w900).copyWith(fontSize: 100)), // importing our own style
           Text("hello world",style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.red), ),
        ],
      ),
      // const Text(
      //     "Hello World", style: TextStyle(fontFamily: "FontMain", fontWeight: FontWeight.w900, fontSize: 50),
      // ),
    );
  }
}
