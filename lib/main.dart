import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  playit(int i){
  print("Button $i is tapped");
  AudioCache player=AudioCache();
  player.play("note$i.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          ti
            tle: Text("Xylophone"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: FlatButton(onPressed: (){playit(1);}, color: Colors.red[500], child: null)),
            Expanded(child: FlatButton(onPressed: (){playit(2);}, color: Colors.orange[500], child: null)),
            Expanded(child: FlatButton(onPressed: (){playit(3);}, color: Colors.yellow[500], child: null)),
            Expanded(child: FlatButton(onPressed: (){playit(4);}, color: Colors.green[500], child: null)),
            Expanded(child: FlatButton(onPressed: (){playit(5);}, color: Colors.blue[500], child: null)),
            Expanded(child: FlatButton(onPressed: (){playit(6);}, color: Colors.indigo[500], child: null)),
            Expanded(child: FlatButton(onPressed: (){playit(7);}, color: Colors.purple[500], child: null))
          ],
        ),
      ),
    );
  }
}
