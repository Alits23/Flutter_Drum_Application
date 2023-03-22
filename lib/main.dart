import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMusic());
}

class DrumMusic extends StatelessWidget {
  const DrumMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return getapplication();
  }
}

Widget getapplication() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: getbody(),
    ),
  );
}

Widget getbody() {
  return SafeArea(
    child: DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/drum.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: getpress(),
    ),
  );
}

Widget getpress() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('h1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('h2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('c1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('c2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('k1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('k2.wav');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

playSound(String sound) {
  var player = AudioCache();
  player.play(sound);
}
