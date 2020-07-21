import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded getKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                getKey(color: Colors.lightBlue, soundNumber: 1),
                getKey(color: Colors.teal, soundNumber: 2),
                getKey(color: Colors.orange, soundNumber: 3),
                getKey(color: Colors.yellow, soundNumber: 4),
                getKey(color: Colors.black87, soundNumber: 5),
                getKey(color: Colors.brown, soundNumber: 6),
                getKey(color: Colors.pink, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
