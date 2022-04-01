// ignore_for_file: unnecessary_const, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'screens/champion_screen.dart';
import 'champion.dart';
import 'package:flutter/material.dart';
import 'screens/search_screen.dart';
import 'spells.dart';
import 'runes.dart';
import 'items.dart';
import 'screens/lanes_screen.dart';
import 'screens/monsters_screen.dart';
import 'screens/spells_screen.dart';
import 'screens/item_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

Widget circleImage(String imageAsset, double radius) {
  return CircleAvatar(
    backgroundImage: Image.asset(imageAsset).image,
    radius: radius,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Guide for Wild Rift",
      theme: ThemeData.dark(),
      home: const WildRiftGuide(),
    );
  }
}

class WildRiftGuide extends StatefulWidget {
  const WildRiftGuide({Key key}) : super(key: key);

  @override
  _WildRiftGuide createState() => _WildRiftGuide();
}

class _WildRiftGuide extends State<WildRiftGuide> {
  Widget getChampionImage(int index) {
    return Image(
      image: AssetImage(championList[index]),
      semanticLabel: champions[index].name,
    );
  }

  var title = const Text("Champions",
      style: TextStyle(
          fontFamily: 'Cinzel',
          fontWeight: FontWeight.bold,
          color: Colors.grey));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.deepOrange, Colors.blue])),
              child: Column(
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Wild Rift Guide',
                      style: TextStyle(
                          color: Color(0XFF99efff),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            CustomListTile(
                'images/midlane.jpg',
                'Lanes',
                () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => LanesScreen()))),
            CustomListTile(
                'images/dragons/elder.png',
                'Monsters',
                () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => MonsterScreen()))),
            CustomListTile(
                'images/spells/Flash.png',
                'Spells',
                () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SpellScreen()))),
            CustomListTile(
                'images/items/trinity.png',
                'Items',
                () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => ItemsScreen())))
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => SearchScreen()));
                },
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
                splashColor: Colors.blue,
                highlightColor: Colors.transparent,
              )
            ],
            pinned: true,
            shape: const RoundedRectangleBorder(
                borderRadius: const BorderRadius.only(
                    bottomRight: const Radius.circular(50))),
            floating: false,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: title,
              background: const ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(25)),
                child: Image(
                  semanticLabel:
                      'Guide for League of Legends: Wild Rift, Runes, Items, Champions',
                  image: AssetImage("images/zedwp.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 8,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150.0,
                mainAxisSpacing: 25.0,
                crossAxisSpacing: 0,
                childAspectRatio: 1.4,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return FloatingActionButton(
                    heroTag: 'tag$index',
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChampionScreen(
                                  topImage: champions[index].topImage,
                                  champImage: champions[index].champImage,
                                  name: champions[index].name,
                                  definition: champions[index].definition,
                                  firstAbility: champions[index].firstAbility,
                                  secondAbility: champions[index].secondAbility,
                                  thirdAbility: champions[index].thirdAbility,
                                  fourthAbility: champions[index].fourthAbility,
                                  fifthAbility: champions[index].fifthAbility,
                                  firstAbilityExp:
                                      champions[index].firstAbilityExp,
                                  secondAbilityExp:
                                      champions[index].secondAbilityExp,
                                  thirdAbilityExp:
                                      champions[index].thirdAbilityExp,
                                  fourthAbilityExp:
                                      champions[index].fourthAbilityExp,
                                  fifthAbilityExp:
                                      champions[index].fifthAbilityExp,
                                  firstAbilityName:
                                      champions[index].firstAbilityName,
                                  secondAbilityName:
                                      champions[index].secondAbilityName,
                                  thirdAbilityName:
                                      champions[index].thirdAbilityName,
                                  fourthAbilityName:
                                      champions[index].fourthAbilityName,
                                  fifthAbilityName:
                                      champions[index].fifthAbilityName,
                                  firstSpell:
                                      spells[champions[index].firstSpell],
                                  secondSpell:
                                      spells[champions[index].secondSpell],
                                  keystoneRune: keystoneRunes[
                                      champions[index].keystoneRune],
                                  firstRune: dominationRunes[
                                      champions[index].firstRune],
                                  secondRune:
                                      resolveRunes[champions[index].secondRune],
                                  thirdRune: inspirationRunes[
                                      champions[index].thirdRune],
                                  firstItem: items[champions[index].firstItem],
                                  secondItem:
                                      items[champions[index].secondItem],
                                  thirdItem: items[champions[index].thirdItem],
                                  fourthItem:
                                      items[champions[index].fourthItem],
                                  fifthItem: items[champions[index].fifthItem],
                                  sixthtItem:
                                      items[champions[index].sixthtItem],
                                  seventhItem:
                                      items[champions[index].seventhItem],
                                  firstItem2:
                                      items[champions[index].firstItem2],
                                  secondItem2:
                                      items[champions[index].secondItem2],
                                  thirdItem2:
                                      items[champions[index].thirdItem2],
                                  fourthItem2:
                                      items[champions[index].fourthItem2],
                                  fifthItem2:
                                      items[champions[index].fifthItem2],
                                  sixthItem2:
                                      items[champions[index].sixthItem2],
                                  seventhItem2: items[champions[index].seventhItem2],
                                  secondExp: champions[index].secondExp,
                                  firstskillName: champions[index].firstskillName,
                                  secondskillName: champions[index].secondskillName,
                                  thirdskillName: champions[index].thirdskillName,
                                  firstimage: champions[index].firstimage,
                                  secondimage: champions[index].secondimage,
                                  thirdimage: champions[index].thirdimage,
                                  firstskillNumber: champions[index].firstskillNumber,
                                  secondskillNumber: champions[index].secondskillNumber,
                                  thirdskillNumber: champions[index].thirdskillNumber,
                                  strongagainst1Name: champions[index].strongagainst1Name,
                                  strongagainst2Name: champions[index].strongagainst2Name,
                                  strongagainst3Name: champions[index].strongagainst3Name,
                                  weakagainst1Name: champions[index].weakagainst1Name,
                                  weakagainst2Name: champions[index].weakagainst2Name,
                                  weakagainst3Name: champions[index].weakagainst3Name,
                                  strongagainst1Image: champions[index].strongagainst1Image,
                                  strongagainst2Image: champions[index].strongagainst2Image,
                                  strongagainst3Image: champions[index].strongagainst3Image,
                                  weakagainst1Image: champions[index].weakagainst1Image,
                                  weakagainst2Image: champions[index].weakagainst2Image,
                                  weakagainst3Image: champions[index].weakagainst3Image,
                                  recommendedLane: champions[index].recommendedLane,
                                  about: champions[index].about,
                                  role: champions[index].role,
                                  imageRole: champions[index].imageRole,
                                  skin1: champions[index].skin1,
                                  skin2: champions[index].skin2,
                                  skin3: champions[index].skin3,
                                  skin1Name: champions[index].skin1Name.toString(),
                                  skin2Name: champions[index].skin2Name.toString(),
                                  skin3Name: champions[index].skin3Name.toString(),
                                  skin1Price: champions[index].skin1Price,
                                  skin2Price: champions[index].skin2Price,
                                  skin3Price: champions[index].skin3Price)));
                    },
                    child: getChampionImage(index),
                    tooltip: champions[index].name,
                  );
                },
                childCount: championList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String imagePath;
  final String text;
  final Function function;
  // ignore: use_key_in_widget_constructors
  const CustomListTile(this.imagePath, this.text, this.function);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: function,
        child: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  circleImage(imagePath, 23),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: const TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              const Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
