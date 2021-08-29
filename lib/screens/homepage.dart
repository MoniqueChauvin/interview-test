import 'package:flutter/material.dart';
import 'login.dart';

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
      body: LoginPage(
        emailLogado: '',
        senhaLogado: '',
        dataNascimento: '',
        nick: '',
        regiao: '',
      ),
    );
  }
}