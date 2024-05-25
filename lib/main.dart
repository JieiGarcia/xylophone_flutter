import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound({required int numS, int? numS2}) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$numS.wav'));
  }

  Expanded buildKey({required Color keyColor, required int keyNum}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: keyColor,
        ),
        onPressed: () {
          playSound(numS: keyNum);
        },
        child: Container(),
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
            children: [
              buildKey(keyColor: Colors.red, keyNum: 1),
              buildKey(keyColor: Colors.blue, keyNum: 2),
              buildKey(keyColor: Colors.green, keyNum: 3),
              buildKey(keyColor: Colors.orange, keyNum: 4),
              buildKey(keyColor: Colors.yellow, keyNum: 5),
              buildKey(keyColor: Colors.purple, keyNum: 6),
              buildKey(keyColor: Colors.amber, keyNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
