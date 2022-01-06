import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  String affichage = "Click the button !";
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffE0E6EA),
        appBar: AppBar(
          backgroundColor: Color(0xff487E96),
          centerTitle: true,
          title: Text(
            "Pile & Face",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              if (isButtonClicked == false)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/images/0.png",
                      width: 170,
                      height: 170,
                    ),
                    Image.asset(
                      "assets/images/1.png",
                      width: 170,
                      height: 170,
                    ),
                  ],
                ),
              if (isButtonClicked != false)
                Image.asset(
                  "assets/images/${number.toString()}.png",
                  width: 220,
                  height: 220,
                ),
              SizedBox(
                height: 60,
              ),
              Text(
                affichage,
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff859ED2),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 160,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff487E96)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isButtonClicked = true;
                      var random = new Random();
                      number = random.nextInt(2);
                      print("The value of the number is : $number");
                      affichage = pileface(number);
                    });
                  },
                  child: Text(
                    'Click Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String pileface(int index) {
  if (index == 0) {
    return "Pile";
  } else {
    return "Face";
  }
}
