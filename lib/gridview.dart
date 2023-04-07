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

    var arrColors = [
      Colors.orange,
      Colors.black26,
      Colors.black,
      Colors.red,
      Colors.green,
      Colors.grey,
      Colors.yellow,
      Colors.blueGrey,
      Colors.blue,

    ];

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: GridView.builder(itemBuilder: (context,index){
        return Container(color: arrColors[index],);
      }, itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        // crossAxisSpacing: 11
      ),)


            // GridView.count(
            //   crossAxisCount: 4,
            // crossAxisSpacing: 11,
            // mainAxisSpacing: 11,
            // children: [
            //   Container(color: Colors.amber,),
            //   Container(color: Colors.blue,),
            //   Container(color: Colors.orange,),
            //   Container(color: Colors.black,),
            //   Container(color: Colors.green,),
            //   Container(color: Colors.grey,),
            //   Container(color: Colors.blueGrey,),
            //   Container(color: Colors.black12,),
            // Container(color: Colors.red,),
            // ],
            // ),



            // GridView.extent(maxCrossAxisExtent: 50,
            // crossAxisSpacing: 11,
            // mainAxisSpacing: 11,
            // children: [
            //   Container(color: Colors.amber,),
            //   Container(color: Colors.blue,),
            //   Container(color: Colors.orange,),
            //   Container(color: Colors.black,),
            //   Container(color: Colors.green,),
            //   Container(color: Colors.grey,),
            //   Container(color: Colors.blueGrey,),
            //   Container(color: Colors.black12,),
            //   Container(color: Colors.red,),
            // ],),

    );
  }
}
