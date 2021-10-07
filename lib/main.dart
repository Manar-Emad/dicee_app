import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee App"),
          backgroundColor: Colors.red,
        ),
        body: MyApp2(),
      ),
    );
  }
}


class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  var leftNumberImage = 1;
  var rightNumberImage = 2;
  void generateRandomNumber(){
    print("Iam right button ");
    setState(() {
      rightNumberImage=new Random().nextInt(5)+1;
    });

    print("Iam left button ");
    setState(() {
      leftNumberImage=new Random().nextInt(5)+1;
    });
  }
  /*
  --طيب لو انا عاوزة اخلي كل واحدة فيهم بتتغير لوحدها هعمل الميثودد بحالة if
  void generateRandomNumber( int direction ){
    if(int direction ==1){
    print("Iam right button ");
    setState(() {
      rightNumberImage=new Random().nextInt(5)+1;
    });
    else{
    print("Iam left button ");
    setState(() {
      leftNumberImage=new Random().nextInt(5)+1;
    });
    }
    }
  }
  === وف السطر بتاع الاستدعاء تحت اكتب ف اليمين بين القوسين 1 كدا هيتحقق الشرط اللي =1 وغير كدا هيتحقق بتاع اللفت ف هكتب ف اللفت 2
  generateRandomNumber(1);
   */
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              child: Image.asset("images/$rightNumberImage.png"),
              onPressed: () {
               generateRandomNumber();
              }),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              child: Image.asset("images/$leftNumberImage.png"),
              onPressed: () {
                generateRandomNumber();

              }),
        )),
      ]),
    );
  }
}
