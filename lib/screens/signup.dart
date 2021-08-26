import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Material(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'E-mail', border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Senha', border: OutlineInputBorder()),
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Confirme sua senha',
                        border: OutlineInputBorder()),
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Nome de invocador',
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Data de nascimento',
                        border: OutlineInputBorder()),
                    inputFormatters: [maskFormatter],
                    keyboardType: TextInputType.datetime,
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}