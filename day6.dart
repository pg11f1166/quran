import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class day_6 extends StatefulWidget {
  const day_6({super.key});

  @override
  State<day_6> createState() => _day_6State();
}

class _day_6State extends State<day_6> {

  final player = AudioPlayer();
  var soundLoc = 'sounds/day-6.mp3';

  void playSound(){
    player.play(AssetSource(soundLoc));
  }

  void pauseSound(){
    player.pause();
  }

  void stopSound(){
    player.stop();
  }

  var isClicked = false;
  var turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('آية الكرسي', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,),)),backgroundColor: Colors.green.withOpacity(0.2),
        ),
        body: Container(
          color: Color.fromRGBO(255,244,204,1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //width: 100,
                // backgroundImage: AssetImage('assets/sounds/day-6.png'),
                child: Image(image: AssetImage('assets/images/day-6.png')),
              ),
              Container(
                color: Color.fromRGBO(255,244,204,1),
                width: double.infinity,
                //height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.green,
                      elevation: 10,
                      splashColor: Colors.blue,
                      onPressed: playSound,
                      child: Icon(Icons.play_arrow,size: 40,color: Colors.black,),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.yellow,
                      elevation: 10,
                      splashColor: Colors.blue,
                      onPressed: pauseSound,
                      child: Icon(Icons.pause,size: 40,color: Colors.black,),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.red,
                      elevation: 10,
                      splashColor: Colors.blue,
                      onPressed: stopSound,
                      child: Icon(Icons.stop,size: 40,color: Colors.black,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
