import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch:Colors.purple,
    ),
    debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('Awesome App'),
       backgroundColor: Color(0xff53E0BC),
     ),
     body: Container(
       child: Text('Hi Flutter'),
     ),
    );
  }
}