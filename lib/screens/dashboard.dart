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
            centerTitle: true,
            title: Text(texto(widget.regiao, 0) + " - " + widget.nick)),
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
                      texto(widget.regiao, 2),
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
                              texto(widget.regiao, 3),
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
        body: dashboardBody(widget.regiao));
  }
}

String texto(regiao, identificacao) {
  if (regiao == "BR" && identificacao == 0) {
    return "Bem Vindo";
  }
  if (regiao == "NA" && identificacao == 0) {
    return "Welcome";
  }
  if (regiao == "EU" && identificacao == 0) {
    return "Bienvenue";
  }
  if (regiao == "BR" && identificacao == 1) {
    return "A Sombra da Lâmina";
  }
  if (regiao == "NA" && identificacao == 1) {
    return "The Shadow of the Blade";
  }
  if (regiao == "EU" && identificacao == 1) {
    return "L'ombre de la lame";
  }
  if (regiao == "BR" && identificacao == 2) {
    return "Data de Nascimento";
  }
  if (regiao == "NA" && identificacao == 2) {
    return "account data";
  }
  if (regiao == "EU" && identificacao == 2) {
    return "données de compte";
  }
  if (regiao == "BR" && identificacao == 3) {
    return "Data de Nascimento";
  }
  if (regiao == "NA" && identificacao == 3) {
    return "Date of birth";
  }
  if (regiao == "EU" && identificacao == 3) {
    return "Date de naissance";
  }
  if (regiao == "BR" && identificacao == 4) {
    return "Talon é a adaga na escuridão, um assassino impiedoso capaz de atacar sem aviso e escapar antes que qualquer alarme soe. Ele construiu uma reputação perigosa nas ruas brutais de Noxus, onde foi forçado a lutar, matar e roubar para sobreviver. Adotado pela notória família Du Couteau, ele agora usa suas habilidades mortais seguindo os comandos do império, assassinando líderes inimigos, capitães e heróis… além de qualquer noxiano tolo o suficiente para ganhar o desprezo de seus mestres.";
  }
  if (regiao == "NA" && identificacao == 4) {
    return "Talon is the dagger in the dark, a merciless assassin capable of attacking without warning and escaping before any alarm sounds. He built a dangerous reputation on the brutal streets of Noxus, where he was forced to fight, kill and steal to survive. Adopted by the notorious Du Couteau family, he now uses his deadly skills to follow the orders of the empire, slaying enemy leaders, captains and heroes… plus any Noxian foolish enough to earn the contempt of his masters.";
  }
  if (regiao == "EU" && identificacao == 4) {
    return "Talon est le poignard dans l'obscurité, un assassin impitoyable capable d'attaquer sans avertissement et de s'échapper avant que l'alarme ne retentisse. Il s'est bâti une réputation dangereuse dans les rues brutales de Noxus, où il a été forcé de se battre, de tuer et de voler pour survivre. Adopté par la célèbre famille Du Couteau, il utilise désormais ses compétences mortelles pour suivre les ordres de l'empire, tuant les chefs ennemis, les capitaines et les héros… ainsi que tout Noxian assez fou pour mériter le mépris de ses maîtres.";
  }

  return '';
}

Widget dashboardBody(regiao) {
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
        Text(texto(regiao, 1),
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
          texto(regiao, 4),
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