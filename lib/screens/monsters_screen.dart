import 'package:flutter/material.dart';

class MonsterScreen extends StatefulWidget {
  @override
  _MonsterScreenState createState() => _MonsterScreenState();
}

class _MonsterScreenState extends State<MonsterScreen> {
  Widget circleImage(String imageAsset) {
    return CircleAvatar(
      backgroundImage: Image.asset(imageAsset).image,
      radius: 45,
    );
  }

  Widget categoryRenderer() {
    if (selectedIndex == 0) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      color: Color(0xFF393939),
                      child: InkWell(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                              title = 'Dragons';
                            });
                          },
                          splashColor: Colors.blue,
                          child: Container(
                              height: 90,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  circleImage('images/dragons/elder.png'),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          6),
                                  Text(
                                    'Dragons',
                                    style: TextStyle(
                                        fontFamily: 'Cinzel',
                                        color: Colors.blueGrey[100],
                                        fontSize: 18),
                                  ),
                                ],
                              )))),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      color: Color(0xFF393939),
                      child: InkWell(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                              title = 'Baron Nashor';
                            });
                          },
                          splashColor: Colors.blue,
                          child: Container(
                              height: 90,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  circleImage('images/dragons/baron.png'),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          8),
                                  Text(
                                    'Baron Nashor',
                                    style: TextStyle(
                                        fontFamily: 'Cinzel',
                                        color: Colors.blueGrey[100],
                                        fontSize: 18),
                                  ),
                                ],
                              )))),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      elevation: 5,
                      shadowColor: Colors.blueGrey[100],
                      color: Color(0xFF393939),
                      child: InkWell(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                              title = 'Rift Herald';
                            });
                          },
                          splashColor: Colors.blue,
                          child: Container(
                              height: 90,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  circleImage('images/dragons/herald.png'),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          7),
                                  Text(
                                    'Rift Herald',
                                    style: TextStyle(
                                        fontFamily: 'Cinzel',
                                        color: Colors.blueGrey[100],
                                        fontSize: 18),
                                  ),
                                ],
                              )))),
                ],
              ),
            ),
          ]);
    } else if (selectedIndex == 1) {
      return ListView(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8, left: 8),
            child: Text(
                '► Dragon first spawns at 4:00\n\nOnly spawn one of each elemental dragon, after all four elemental dragons are killed the game start spawning Elder Dragon imbued with one random element. Elder Dragon keep beign spawned until the game ends.\n\n Killing elemental dragons grants the following rewards:'),
          ),
          SizedBox(height: 16),
          SizedBox(height: 16),
          Text(
            'INFERNAL DRAGON',
            style: TextStyle(color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Image.asset('images/dragons/infernal.png'),
          ),
          Text('→Grants 8% increased damage←'),
          SizedBox(height: 16),
          Divider(
            color: Colors.blue,
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(height: 16),
          Text(
            'MOUNTAIN DRAGON',
            style: TextStyle(color: Colors.brown),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Image.asset('images/dragons/mountain.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                '→Mountain Dragon: Grants 6% of maximum health as a shield after 5 seconds of not taking damage←'),
          ),
          SizedBox(height: 16),
          Divider(
            color: Colors.blue,
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(height: 16),
          Text(
            'OCEAN DRAGON',
            style: TextStyle(color: Colors.teal[700]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Image.asset('images/dragons/ocean.png'),
          ),
          Text('→Grants 8% Physical Vamp and Magical Vamp←'),
          SizedBox(height: 16),
          Divider(
            color: Colors.blue,
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(height: 16),
          Text(
            'CLOUD DRAGON',
            style: TextStyle(color: Colors.white60),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Image.asset('images/dragons/cloud.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                '→Grants 7.5% bonus movement speed, doubled to 15% when out-of-combat←'),
          ),
          SizedBox(height: 16),
          Divider(
            color: Colors.blue,
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
                'Killing elemental Elder Dragon  grants the following rewards:'),
          ),
          SizedBox(height: 16),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Image.asset('images/dragons/elderbig.png'),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Infernal Dragon: ",
                    style: TextStyle(color: Colors.red)),
                TextSpan(text: "Grants 12% increased damage.\n\n"),
                TextSpan(
                    text: "Mountain Dragon: ",
                    style: TextStyle(color: Colors.brown)),
                TextSpan(
                    text:
                        "Grants 9% of maximum health as a shield after 5 seconds of not taking damage.\n\n"),
                TextSpan(
                    text: "Ocean Dragon: ",
                    style: TextStyle(color: Colors.teal[600])),
                TextSpan(
                    text: "Grants 12% Physical Vamp and Magical Vamp.\n\n"),
                TextSpan(
                    text: "Cloud Dragon: ",
                    style: TextStyle(color: Colors.white60)),
                TextSpan(
                    text:
                        "Grants 11.25% bonus movement speed, doubled to 22.5% when out-of-combat.\n\n"),
                TextSpan(
                    text: "Elder Dragon Bonus: ",
                    style: TextStyle(color: Colors.grey[400])),
                TextSpan(
                    text:
                        "Attacks burning enemies dealing true damage (all elements give this bonus)")
              ]))),
          SizedBox(height: 16),
          Divider(
            color: Colors.blue,
            indent: 12,
            endIndent: 12,
          ),
        ]),
      ]);
    } else if (selectedIndex == 2) {
      return ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: '► Baron Nashor',
                    style: TextStyle(color: Colors.purple[700])),
                TextSpan(
                    text: " Spawns at 10:00",
                    style: TextStyle(color: Colors.blueGrey[100]))
              ]))
            ],
          ),
        ),
        Image.asset('images/dragons/baronbig.png'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
              'After slaying the Baron Nashor, all alive ally champions will receive the Hand Baron Buff which will empower ally lane minions. They will also receive Empowered Recall Buff.'),
        ),
      ]);
    } else {
      return ListView(children: [
        Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 16, right: 8, left: 8, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('► Rift Herald Spawns at 6:00 (Can only be slain ONCE)'),
              ],
            ),
          ),
          Image.asset('images/dragons/heraldbig.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
                'The Rift Herald will drop an Eye of the Herald buff, which can be picked up and used to summon the Rift Herald to ram enemy Tower within Range.'),
          ),
          SizedBox(height: 16),
          Image.asset('images/dragons/eyeofherald.png'),
          Text('Eye of the Herald'),
        ])
      ]);
    }
  }

  String title = 'Monsters';
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          leading: RaisedButton(
            color: Colors.blue[700],
            splashColor: Colors.orange.withAlpha(130),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                if (selectedIndex == 0) {
                  Navigator.pop(context);
                } else {
                  selectedIndex = 0;
                  title = 'Monsters';
                }
              });
            },
          )),
      body: categoryRenderer(),
    );
  }
}
