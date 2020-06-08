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
         decoration: BoxDecoration(
           gradient: LinearGradient(colors: [
             Color(0xff53E0BC),
             Colors.blue[200],
           ],)
         ),
         width: 100,
         height: 100,
       ),
     ),
     drawer: Drawer(
       child: ListView(
         padding: const EdgeInsets.all(0),
         children: [
          /* DrawerHeader(
             child: Text('I am a Drawer!'),
             decoration: BoxDecoration(
               color: Color(0xff53E0BC),
             ),
             ),*/
             UserAccountsDrawerHeader(
               decoration: BoxDecoration(
                  color: Color(0xff53E0BC),
               ),
               accountName: Text("Yaswanth Kumar"), 
               accountEmail: Text("test@test.com"),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage("https://s3.amazonaws.com/cdn.iconscout.com/icon/premium/png-64/356561.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4VMJAKC54WWWCYMY%2F20200608%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20200608T142453Z&X-Amz-SignedHeaders=host&X-Amz-Expires=259200&X-Amz-Signature=c35feb4af3115d40b088c606c74f486b7cb35be1937da4b8679bec30391b1aaf"),
               )
               //Image.network("https://s3.amazonaws.com/cdn.iconscout.com/icon/premium/png-64/356561.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4VMJAKC54WWWCYMY%2F20200608%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20200608T142453Z&X-Amz-SignedHeaders=host&X-Amz-Expires=259200&X-Amz-Signature=c35feb4af3115d40b088c606c74f486b7cb35be1937da4b8679bec30391b1aaf"),
               ),
             ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Yaswanth Kumar!"),
                  subtitle: Text('Developer'),
                  trailing: Icon(Icons.edit),
                  onTap: () {},
             ),
             ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text('test@test.com'),
                  trailing: Icon(Icons.edit),
             ),
         ],
       ),
     ),
    floatingActionButton: FloatingActionButton(
      foregroundColor:  Color(0xff53E0BC),
      hoverColor: Color(0xff53E0BC),
      onPressed: () {},
      child: Icon(Icons.edit),
      ),
    );
  }
}