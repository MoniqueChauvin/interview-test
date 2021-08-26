import 'package:flutter/material.dart';

class TestePage extends StatefulWidget {
  const TestePage({Key? key}) : super(key: key);

  @override
  _TestePageState createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'E-mail', border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Senha', border: OutlineInputBorder()),
                textInputAction: TextInputAction.done,
                obscureText: true,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Confirme sua senha',
                    border: OutlineInputBorder()),
                textInputAction: TextInputAction.done,
                obscureText: true,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Nome de invocador',
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
