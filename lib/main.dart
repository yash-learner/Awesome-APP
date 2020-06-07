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
       child:Container(
         color: Color(0xff53E0BC),
         width: 500,
         height: 500,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
              Container(
           padding: EdgeInsets.all(8.0),
           color: Colors.red, //you can either give color here or in BoxDecoration
           width: 100,
           height: 100,
           alignment: Alignment.center,  // Alignment.bottomRight
         ),
          Container(
           padding: EdgeInsets.all(8.0),
           color: Colors.yellow, //you can either give color here or in BoxDecoration
           width: 100,
           height: 100,
           alignment: Alignment.center,  // Alignment.bottomRight
         ),
          Container(
           padding: EdgeInsets.all(8.0),
           color: Colors.green, //you can either give color here or in BoxDecoration
           width: 100,
           height: 100,
           alignment: Alignment.center,  // Alignment.bottomRight
         ),
           ],

         ),
       ),
     ),
    );
  }
}