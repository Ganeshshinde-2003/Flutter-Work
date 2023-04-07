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
          child: InkWell(
            onTap: (){
              print("tapped on container");
            },

            child: Container(
                width: 200,
                height: 200,
                color: Colors.cyan,
              child: Center(child: InkWell(
                  onTap: (){
                    print("Tapped on text");
                  },
                  child: Text("click on me", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), ))),
                
              ),
          ),
        )
        
        // Container(
        //   width: 300,
        //   height: 500,
        //   color: Colors.cyan,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           Text("A1"),
        //           Text("B2"),
        //           Text("C3"),
        //           Text("D4"),
        //           Text("E5"),
        //         ],
        //       ),
        //       Text("A"),
        //       Text("B"),
        //       Text("C"),
        //       Text("D"),
        //       Text("E"),
        //       ElevatedButton(onPressed: (){}, child: Text("click"))
        //     ],
        //   ),
        // )
    );
  }
}






















