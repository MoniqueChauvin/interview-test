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
    return "A Sombra da L??mina";
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
    return "donn??es de compte";
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
    return "Talon ?? a adaga na escurid??o, um assassino impiedoso capaz de atacar sem aviso e escapar antes que qualquer alarme soe. Ele construiu uma reputa????o perigosa nas ruas brutais de Noxus, onde foi for??ado a lutar, matar e roubar para sobreviver. Adotado pela not??ria fam??lia Du Couteau, ele agora usa suas habilidades mortais seguindo os comandos do imp??rio, assassinando l??deres inimigos, capit??es e her??is??? al??m de qualquer noxiano tolo o suficiente para ganhar o desprezo de seus mestres.";
  }
  if (regiao == "NA" && identificacao == 4) {
    return "Talon is the dagger in the dark, a merciless assassin capable of attacking without warning and escaping before any alarm sounds. He built a dangerous reputation on the brutal streets of Noxus, where he was forced to fight, kill and steal to survive. Adopted by the notorious Du Couteau family, he now uses his deadly skills to follow the orders of the empire, slaying enemy leaders, captains and heroes??? plus any Noxian foolish enough to earn the contempt of his masters.";
  }
  if (regiao == "EU" && identificacao == 4) {
    return "Talon est le poignard dans l'obscurit??, un assassin impitoyable capable d'attaquer sans avertissement et de s'??chapper avant que l'alarme ne retentisse. Il s'est b??ti une r??putation dangereuse dans les rues brutales de Noxus, o?? il a ??t?? forc?? de se battre, de tuer et de voler pour survivre. Adopt?? par la c??l??bre famille Du Couteau, il utilise d??sormais ses comp??tences mortelles pour suivre les ordres de l'empire, tuant les chefs ennemis, les capitaines et les h??ros??? ainsi que tout Noxian assez fou pour m??riter le m??pris de ses ma??tres.";
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