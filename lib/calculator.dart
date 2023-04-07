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

  var no1 = TextEditingController();
  var no2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: () {
                        var num1 = int.parse(no1.text.toString());
                        var num2 = int.parse(no2.text.toString());
                        var sum = num1 + num2;
                        result = "The sum of $num1 and $num2 is $sum";
                        setState(() {});
                      }, child: Text("ADD"), style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),),
                      ElevatedButton(onPressed: () {
                        var num1 = int.parse(no1.text.toString());
                        var num2 = int.parse(no2.text.toString());
                        var sum = num1 - num2;
                        result = "The sub of $num1 and $num2 is $sum";
                        setState(() {});
                      }, child: Text("SUB"), style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),),
                      ElevatedButton(onPressed: () {
                        var num1 = int.parse(no1.text.toString());
                        var num2 = int.parse(no2.text.toString());
                        var sum = num1 * num2;
                        result = "The mul of $num1 and $num2 is $sum";
                        setState(() {});
                      }, child: Text("MUL"), style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),),
                      ElevatedButton(onPressed: () {
                        var num1 = int.parse(no1.text.toString());
                        var num2 = int.parse(no2.text.toString());
                        var sum = num1 / num2;
                        result = "The div of $num1 and $num2 is ${sum.toStringAsFixed(2)}";
                        setState(() {});
                      }, child: Text("DIV"), style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("$result",
                    style: TextStyle(fontSize: 25, color: Colors.black),),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
