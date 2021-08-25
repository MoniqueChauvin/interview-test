import 'package:flutter/material.dart';

import 'homepage.dart';
import 'login.dart';

class AppWidget extends StatelessWidget{
  
final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.pink,
       brightness: Brightness.dark,
       ),
     home: LoginPage(),
   );
  }
  }