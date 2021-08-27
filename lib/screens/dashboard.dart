import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  //final String email;
  //const DashBoardPage({Key? key, this.email}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    Container(
                      width: 64,
                      height: 64,
                      child: Image.network(
                        'https://icons.iconarchive.com/icons/fazie69/league-of-legends/256/Talon-Dragonblade-icon.png',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Niqy",
                              style: TextStyle(fontSize: 32),
                            ),
                            Text(
                              "ID #231045451BR",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
            Column(
              children: [
                ListTile(
                  title: Text('Dados da conta'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}