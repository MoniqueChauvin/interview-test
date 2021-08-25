import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
  
}
class HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Talon of Legends')
      ),
      
     
      floatingActionButton: FloatingActionButton (
        child: Icon(Icons.login),
        onPressed: (){},
      ),
          // ignore: dead_code
          );
  }
  }