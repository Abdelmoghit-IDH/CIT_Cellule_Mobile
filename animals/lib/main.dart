import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

AudioCache player = AudioCache();

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red[100],
          body: GridView.count(
            padding: EdgeInsets.all(20),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 5,
            children: [
              Animal(
                name: "bee",
              ),
              Animal(
                name: "bird",
              ),
              Animal(
                name: "cat",
              ),
              Animal(
                name: "cow",
              ),
              Animal(
                name: "dog",
              ),
              Animal(
                name: "horse",
              ),
              Animal(
                name: "monkey",
              ),
              Animal(
                name: "wolf",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Animal extends StatelessWidget {
  const Animal({
    this.name,
    Key key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        player.play("audios/$name.wav");
      },
      child: Image.asset(
        "assets/images/$name.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
