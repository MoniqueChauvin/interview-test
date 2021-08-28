import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  final String email;
  final String nick;
  final String dataNascimento;
  final String regiao;

  const DashBoardPage(
      {Key? key,
      required this.email,
      required this.nick,
      required this.dataNascimento,
      required this.regiao})
      : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true, title: Text('Bem Vindo - ' + widget.nick)),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.regiao + ' - ' + widget.nick,
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                widget.email,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dados da conta',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.email, color: Colors.pink),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.pink),
                            ),
                            Text(widget.email),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.pink),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Data de nascimento",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.pink),
                            ),
                            Text(widget.dataNascimento),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: dashboardBody());
  }
}

Widget dashboardBody() {
  return Container(
      padding: new EdgeInsets.all(13.0),
      child: SingleChildScrollView(
          child: Column(children: [
        Text('TALON',
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        Text('A Sombra da Lâmina',
            style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: 500,
          height: 150,
          child: Image.network(
            'https://static.wikia.nocookie.net/leagueoflegends/images/0/0d/Champie_Talon_profileicon.png/revision/latest/scale-to-width-down/250?cb=20200417030828',
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'Talon é a adaga na escuridão, um assassino impiedoso capaz de atacar sem aviso e escapar antes que qualquer alarme soe. Ele construiu uma reputação perigosa nas ruas brutais de Noxus, onde foi forçado a lutar, matar e roubar para sobreviver. Adotado pela notória família Du Couteau, ele agora usa suas habilidades mortais seguindo os comandos do império, assassinando líderes inimigos, capitães e heróis… além de qualquer noxiano tolo o suficiente para ganhar o desprezo de seus mestres.',
          style: TextStyle(
            fontSize: 15.0,
            fontFamily: 'Roboto',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        )
      ])));
}