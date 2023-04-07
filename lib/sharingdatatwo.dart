import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget{
  var nameFromHome;

  ScreenTwo(this.nameFromHome);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SCREEN-TWO"),
      ),
      body: Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("WELLCOME ${widget.nameFromHome}", style: TextStyle(fontSize: 34, color: Colors.white),),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("BACK"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}