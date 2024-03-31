import 'dart:math';
import 'package:flutter/material.dart';


void main() {
 return runApp(MaterialApp(
  home: Scaffold(appBar: AppBar(title: Center(child: Text('Ask me anything',style: TextStyle(color: Colors.white),),),backgroundColor: Colors.blue.shade800,),backgroundColor: Colors.blue.shade300,
  body: _MagicBall(),),
   ),
 );
}

class _MagicBall extends StatefulWidget {
  const _MagicBall({super.key});

  @override
  State<_MagicBall> createState() => __MagicBallState();
}

class __MagicBallState extends State<_MagicBall> {
  int Pressed=1;
  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton(onPressed: (){
      setState(() {
        Pressed=Random().nextInt(5)+1;
      });
      print('I Got Clicked');},
    child: Image.asset('images/ball$Pressed.png'),
    ),
    );
  }
}
