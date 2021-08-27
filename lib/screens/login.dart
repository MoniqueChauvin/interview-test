import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _senha = '';
  String error = '';

  @override
  void initState() {
    error = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 1000,
                height: 200,
                child: Image.network(
                  'https://icons.iconarchive.com/icons/fazie69/league-of-legends/256/Talon-Dragonblade-icon.png',
                ),
              ),
              TextField(
                onChanged: (value) {
                  _email = value;
                  print(_email);
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                onChanged: (value) {
                  _senha = value;
                  print(_senha);
                },
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.pink),
                    ),
                    onPressed: () {
                      if (_email == '' || _senha == '') {
                        setState(() {
                          error = "Por favor, realize seu cadastro";
                        });
                        return;
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      }
                    },
                    child: const Text('Entrar'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.grey.shade800),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    child: const Text('Cadastrar'),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    ));
  }
}