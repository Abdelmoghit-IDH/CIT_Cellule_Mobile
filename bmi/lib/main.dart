import 'package:bmi/components/plus_moins.dart';
import 'package:bmi/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/gender.dart';
import 'components/reusable_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kdarkBlue,
        appBar: AppBar(
          backgroundColor: kdarkBlue,
          centerTitle: true,
          title: Text(
            "BMI Calculator",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableCard(
                    onClick: () {
                      print('Gender MALE');
                    },
                    child: Gender(
                      gender: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                  ReusableCard(
                    onClick: () {
                      print('Gender FEMALE');
                    },
                    child: Gender(
                      gender: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ReusableCard(
                onClick: () {},
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "HIGHT",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "183",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Slider(
                      value: _sliderValue,
                      min: 0,
                      max: 100,
                      activeColor: kpinkColor,
                      label: _sliderValue.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 14,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableCard(
                    child: PlusMoins(
                      name: "WEIGHT",
                      number: 20,
                    ),
                  ),
                  ReusableCard(
                    child: PlusMoins(
                      name: "AGE",
                      number: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: kpinkColor,
          child: TextButton(
            onPressed: () {
              print("Calculate you bmi result");
            },
            child: Text(
              "CALCULATE YOUR BMI",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
