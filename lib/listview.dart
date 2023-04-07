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

    var arrNames = ["Ganesh", "Appu","Manju","Appa","Amma","Wife"];

    return Scaffold(
      // backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Flutter Container"),
        ),
        body: ListView.separated(itemBuilder: (context, index){
          // return Text(arrNames[index], style: TextStyle(fontSize: 50),);
          return ListTile(
            leading: Text("${index + 1}"),
            title: Text(arrNames[index]),
            subtitle: Text("Number"),
            trailing: Icon(Icons.add),
          );
        }, separatorBuilder: (context, index){
          return Divider(height: 20, thickness: 1,);
        }, itemCount: arrNames.length)
    

       



      // ListView.separated(itemBuilder: (context,index){
        //   return Text(arrNames[index], style: TextStyle(fontSize: 30),);
        // }, separatorBuilder: (context, index){
        //   return Divider(height: 100, thickness: 5,);
        // },
        //     itemCount: arrNames.length)


        // Center(
        //   child: ListView.builder(itemBuilder: (context, index) {
        //     return Text(arrNames[index], style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),);
        //   },
        //   itemCount: arrNames.length,
        //     itemExtent: 100,
        //     scrollDirection: Axis.vertical,
        //   ),
        // )


        // Center(
        //   child: ListView(
        //     scrollDirection: Axis.vertical,
        //     reverse: true,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text("one", style: TextStyle(fontSize: 25, color: Colors.redAccent, fontWeight: FontWeight.w800),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text("one", style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w800),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text("one", style: TextStyle(fontSize: 25, color: Colors.black26, fontWeight: FontWeight.w800),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text("one", style: TextStyle(fontSize: 25, color: Colors.brown, fontWeight: FontWeight.w800),),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text("one", style: TextStyle(fontSize: 25, color: Colors.cyan, fontWeight: FontWeight.w800),),
        //       ),
        //     ],
        //   ),
        // )
    );
  }
}