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
     body: Center(
       child: Container(
         padding: EdgeInsets.all(8.0),
         //color: Colors.red, //you can either give color here or in BoxDecoration
         width: 100,
         height: 100,
         alignment: Alignment.center,  // Alignment.bottomRight
         child: Text("I am the Box!",
         textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 20,
               color: Colors.white,
               fontWeight: FontWeight.bold
               
             ),
         ),
         decoration: BoxDecoration(
           color: Colors.red,
           borderRadius: BorderRadius.circular(10.0),
           gradient: LinearGradient(colors: [
             Colors.blue[400],
             Color(0xff53E0BC),
           ]),
           boxShadow: [
             BoxShadow(
               color: Colors.grey[900],
               blurRadius: 10.0,
             )
           ]
         ),
       ),
     ),
    );
  }
}