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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.lightBlue,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.black,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.black26,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.orange,
                          margin: EdgeInsets.only(right: 10),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  // width: 200,
                  color: Colors.green,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  // width: 200,
                  color: Colors.grey,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  // width: 200,
                  color: Colors.brown,
                  margin: EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  // width: 200,
                  color: Colors.redAccent,
                  margin: EdgeInsets.only(bottom: 10),
                )
              ],
            ),
          ),
        )
    );
  }
}