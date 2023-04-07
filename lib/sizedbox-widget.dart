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
      body: Wrap(
        children: [
          SizedBox.square(
            dimension: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Click"),
            ),
          ),
          SizedBox(width: 20,),
          SizedBox.square(
            dimension: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Click"),
            ),
          ),
          SizedBox(width: 20,),
          SizedBox.square(
            dimension: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Click"),
            ),
          ),
          SizedBox(width: 20,),
          SizedBox.square(
            dimension: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Click"),
            ),
          ),
          SizedBox(width: 20,),
          SizedBox.square(
            dimension: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: Text("Click"),
            ),
          ),

        ],
      ),

      // Center(
      //   child: ConstrainedBox(
      //     constraints: BoxConstraints(
      //       minWidth: 100,
      //       minHeight: 20,
      //       maxHeight: 80,
      //       maxWidth: 400,
      //     ),
      //     child: SizedBox.shrink(
      //       child: ElevatedButton(
      //         onPressed: (){},
      //         child: Text("Click"),
      //       ),
      //       // height: 40,
      //       // width: 200,
      //     ),
      //   ),
      // ),
    );
  }
}
