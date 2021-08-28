import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});

  String senha = '';
  String datadenascimento = '';
  String confirmacaosenha = '';
  String nomedeinvocador = '';
  String emailcadastro = '';
  String error = '';
  String regiao = 'NA';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'E-mail', border: OutlineInputBorder()),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    emailcadastro = value;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  onChanged: (value) {
                    senha = value;
                  },
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
                  onChanged: (value) {
                    confirmacaosenha = value;
                  },
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
                  onChanged: (value) {
                    nomedeinvocador = value;
                  },
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
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    datadenascimento = value;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                      labelText: 'Região', border: OutlineInputBorder()),
                  hint: Text('Região'),
                  items: <String>['BR', 'EU', 'NA'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  style: const TextStyle(color: Colors.white),
                  onChanged: (String? value) {
                    setState(() {
                      regiao = value!;
                    });
                  },
                  value: regiao,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                  ),
                  onPressed: () {
                    if (senha == '' ||
                        confirmacaosenha == '' ||
                        datadenascimento == '' ||
                        nomedeinvocador == '' ||
                        emailcadastro == '') {
                      setState(() {
                        error = "Preencha todos os campos!";
                      });

                      return;
                    } else if (senha != confirmacaosenha || senha == '') {
                      setState(() {
                        error = "Senhas não coincidem.";
                      });

                      return;
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DashBoardPage(
                            email: emailcadastro,
                            nick: nomedeinvocador,
                            dataNascimento: datadenascimento,
                            regiao: regiao,
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text('Cadastrar'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  error,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}