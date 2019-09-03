import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylo());

class Xylo extends StatelessWidget {
  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

   Expanded buildItem({int num, Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Xylophone", style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.w200
          ),),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildItem(color: Colors.red, num: 1),
              buildItem(color: Colors.orange, num: 2),
              buildItem(color: Colors.yellow, num: 3),
              buildItem(color: Colors.green, num: 4),
              buildItem(color: Colors.blue, num: 5),
              buildItem(color: Colors.purple, num: 6),
              buildItem(color: Colors.pink, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
