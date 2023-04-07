import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            Text("Select Date", style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2024)
              );

              if(datePicked!=null){
                print("${datePicked.day}-${datePicked.month}-${datePicked.year}");
              }
            }, child: Text("Select Date")),
            ElevatedButton(onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now(),
              initialEntryMode: TimePickerEntryMode.input
              );
              
              if(pickedTime!=null){
                print("${pickedTime.hour}-${pickedTime.minute}");
              }
            }, child: Text("Select Time"))
          ],
        ),
      ),
    );
  }
}
