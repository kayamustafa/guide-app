// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:wrguide/champion.dart';

class LanesScreen extends StatefulWidget {
  @override
  _LanesScreenState createState() => _LanesScreenState();
}

class _LanesScreenState extends State<LanesScreen> {
  Widget categoryRenderer() {
    if (selectedIndex == 0) {
      return Column(
        children: [
          Text(
            'Lanes Overview',
            style: TextStyle(color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
                'There are 3 lanes in League of Legends Wild Rift such as Baron lane, Mid lane, and Dragon lane. These 3 lanes are connected by Jungle area.\n\nEach lane are designated for specific champion role to play in. By picking the wrong champion to play in the wrong lane, you can get punish very hard from the enemy team. '),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/map.png",
                ),
              ))
        ],
      );
    } else if (selectedIndex == 1) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Text(
            "Mid Lane",
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
              '\nMid lane is recommended for Mage or Assassin champion to play in. It is also a solo (1v1) lane.\n\nPlaystyle: Playing in Mid Lane is highly depend on skill shots, and ability to outplay your opponent with skill combo and more. Winning mid lane is a massive lead for the team.'),
          Text(
            '\n\nChampions',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Wrap(
              spacing: 16,
              runSpacing: 12,
              children: [
                Image.asset(championList[0]),
                Image.asset(championList[1]),
                Image.asset(championList[4]),
                Image.asset(championList[6]),
                Image.asset(championList[10]),
                Image.asset(championList[17]),
                Image.asset(championList[37]),
                Image.asset(championList[38]),
                Image.asset(championList[46]),
                Image.asset(championList[52]),
                Image.asset(championList[53]),
                Image.asset(championList[54])
              ],
            ),
          )
        ]),
      );
    } else if (selectedIndex == 2) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Text(
            "Jungle",
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
              "\nJungle is not specify as a lane but as an area that has camp with monster for Jungler to play in.\n\nPlaystyle: Playing in Jungle required high map awarenss so that you know where and when to gank or help your teammate at the right place and the right time."),
          Text(
            '\n\nChampions',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Wrap(
              spacing: 16,
              runSpacing: 12,
              children: [
                Image.asset(championList[3]),
                Image.asset(championList[14]),
                Image.asset(championList[19]),
                Image.asset(championList[20]),
                Image.asset(championList[22]),
                Image.asset(championList[28]),
                Image.asset(championList[32]),
                Image.asset(championList[36]),
                Image.asset(championList[39]),
                Image.asset(championList[49]),
                Image.asset(championList[51])
              ],
            ),
          )
        ]),
      );
    } else if (selectedIndex == 3) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Text(
            "Dragon Lane",
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
              "\nDragon lane is designated for Marksman and Support champion to play in. It is a duo 2v2 lane.\n\nPlaystyle: Playing in Dragon lane required teamwork, either you are a marksman or a support, the main goal is to win the lane, there are nonstop action in dragon lane include early game brawl, jungle gank, and more."),
          Text(
            '\n\nMarksmen',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Wrap(
              spacing: 16,
              runSpacing: 12,
              children: [
                Image.asset(championList[5]),
                Image.asset(championList[13]),
                Image.asset(championList[15]),
                Image.asset(championList[24]),
                Image.asset(championList[25]),
                Image.asset(championList[26]),
                Image.asset(championList[33]),
                Image.asset(championList[44]),
                Image.asset(championList[47]),
                Image.asset(championList[48])
              ],
            ),
          ),
          Text(
            '\n\nSupports',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Wrap(
              spacing: 16,
              runSpacing: 12,
              children: [
                Image.asset(championList[2]),
                Image.asset(championList[7]),
                Image.asset(championList[8]),
                Image.asset(championList[21]),
                Image.asset(championList[29]),
                Image.asset(championList[30]),
                Image.asset(championList[34]),
                Image.asset(championList[38]),
                Image.asset(championList[41]),
                Image.asset(championList[42]),
              ],
            ),
          )
        ]),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Text(
            "Baron Lane",
            style: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
              "\nBaron lane is recommmended for Fighter, Assassin, or Tank champion to play in. It is a solo (1v1) lane.\n\nPlaystyle: Playing in Baron lane required patience playstyle, focus on winning early game farm then dominate in the mid and late game instead of looking for early fight against your opponent."),
          Text(
            '\n\nChampions',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Wrap(
              spacing: 16,
              runSpacing: 12,
              children: [
                Image.asset(championList[9]),
                Image.asset(championList[11]),
                Image.asset(championList[12]),
                Image.asset(championList[16]),
                Image.asset(championList[18]),
                Image.asset(championList[23]),
                Image.asset(championList[27]),
                Image.asset(championList[31]),
                Image.asset(championList[35]),
                Image.asset(championList[40]),
                Image.asset(championList[43]),
                Image.asset(championList[45]),
                Image.asset(championList[50]),
              ],
            ),
          )
        ]),
      );
    }
  }

  Color color1 = Color(0xFF373737);
  Color color2 = Color(0xFF373737);
  Color color3 = Color(0xFF373737);
  Color color4 = Color(0xFF373737);
  String title = 'Lanes';
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
            onPressed: () => Navigator.pop(context),
          )),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    title = 'Mid Lane';
                    selectedIndex = 1;
                    color1 = Colors.grey[700];
                    color4 = Color(0xFF373737);
                    color2 = Color(0xFF373737);
                    color3 = Color(0xFF373737);
                  });
                },
                child: Card(
                  color: color1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Mid'),
                      ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 4.4,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    title = 'Jungle';
                    selectedIndex = 2;
                    color2 = Colors.grey[700];
                    color1 = Color(0xFF373737);
                    color4 = Color(0xFF373737);
                    color3 = Color(0xFF373737);
                  });
                },
                child: Card(
                  color: color2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Jungle'),
                      ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 4.4,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    title = 'Dragon Lane';
                    selectedIndex = 3;
                    color3 = Colors.grey[700];
                    color1 = Color(0xFF373737);
                    color2 = Color(0xFF373737);
                    color4 = Color(0xFF373737);
                  });
                },
                child: Card(
                  color: color3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dragon'),
                      ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 4.4,
                  ),
                )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    title = 'Baron Lane';
                    selectedIndex = 4;
                    color4 = Colors.grey[700];
                    color1 = Color(0xFF373737);
                    color2 = Color(0xFF373737);
                    color3 = Color(0xFF373737);
                  });
                },
                child: Card(
                  color: color4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Baron'),
                      ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 4.4,
                  ),
                ))
          ],
        ),
        SizedBox(height: 20),
        categoryRenderer(),
      ]),
    );
  }
}
