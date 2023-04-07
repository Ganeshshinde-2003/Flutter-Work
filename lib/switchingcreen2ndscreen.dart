import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_work_session/boilercode.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("SCREEN-TWO"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Well-Come", style: TextStyle(fontSize: 34,
            fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MyHomePage(title: "SCREEN_ONE");
                },));

              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );

  }

}