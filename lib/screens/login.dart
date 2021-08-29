import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup.dart';

import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  final String emailLogado;
  final String senhaLogado;
  final String nick;
  final String dataNascimento;
  final String regiao;

  const LoginPage(
      {Key? key,
      required this.emailLogado,
      required this.senhaLogado,
      required this.nick,
      required this.dataNascimento,
      required this.regiao})
      : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Talon of Legends'),
        automaticallyImplyLeading: false,
      ),
      body: Material(
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
                        if (widget.emailLogado != _email ||
                            widget.senhaLogado != _senha) {
                          setState(() {
                            error =
                                "Use um usuario e senha válidos ou cadastre-se!";
                          });
                          return;
                        } else if (_email == '' || _senha == '') {
                          setState(() {
                            error =
                                "Use um usuario e senha válidos ou cadastre-se!";
                          });
                          return;
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DashBoardPage(
                                email: widget.emailLogado,
                                nick: widget.nick,
                                dataNascimento: widget.dataNascimento,
                                regiao: widget.regiao,
                              ),
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
      ),
    );
  }
}