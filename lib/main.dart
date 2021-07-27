import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({int soundnumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(soundnumber: 1, color: Colors.red),
              buildkey(soundnumber: 2, color: Colors.orange),
              buildkey(soundnumber: 3, color: Colors.yellow),
              buildkey(soundnumber: 4, color: Colors.green),
              buildkey(soundnumber: 5, color: Colors.teal),
              buildkey(soundnumber: 6, color: Colors.blue),
              buildkey(soundnumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
