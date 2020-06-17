import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playSound(String soundFilename) {
    player.play(soundFilename);
  }

  Widget buildKeyWidget(MaterialColor keyColor, String soundFileName) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(soundFileName);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeyWidget(Colors.red, 'note1.wav'),
              buildKeyWidget(Colors.orange, 'note2.wav'),
              buildKeyWidget(Colors.yellow, 'note3.wav'),
              buildKeyWidget(Colors.green, 'note4.wav'),
              buildKeyWidget(Colors.teal, 'note5.wav'),
              buildKeyWidget(Colors.blue, 'note6.wav'),
              buildKeyWidget(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
