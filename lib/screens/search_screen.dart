import 'package:flutter/material.dart';
import 'package:wrguide/champion.dart';
import 'champion_screen.dart';
import 'package:wrguide/items.dart';
import 'package:wrguide/runes.dart';
import 'package:wrguide/spells.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SearchScreen createState() => new _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  List<bool> _selected = List.generate(champions.length, (i) => false);
  Widget essence() {
    return Container(
        width: 52,
        child: Row(
          children: [Text('5500'), Image.asset('images/essence.png')],
        ));
  }

  var itemss = List<Champion>();

  @override
  void initState() {
    itemss.addAll(champions);

    super.initState();
  }

  void filterSearchResults(String query) {
    List<Champion> sortedList = [];

    for (int i = 0; i < champions.length; i++) {
      if (champions[i].name.toLowerCase().startsWith(query)) {
        sortedList.add(champions[i]);
      }
    }
    if (query.isNotEmpty) {
      setState(() {
        itemss.clear();
        itemss.addAll(sortedList);
      });
      return;
    } else {
      setState(() {
        itemss.clear();
        itemss.addAll(champions);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: FlatButton(
          color: Colors.blue[700],
          splashColor: Colors.orange.withAlpha(130),
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
        title: Text('Search for a champion'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) => filterSearchResults(value.toLowerCase()),
                decoration: InputDecoration(
                    labelText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: itemss.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing:
                        !_selected[index] ? itemss[index].imageRole : essence(),
                    subtitle: Text('${itemss[index].definition}'),
                    contentPadding:
                        EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                    leading: Image.asset(itemss[index].champImage),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChampionScreen(
                                  topImage: itemss[index].topImage,
                                  champImage: itemss[index].champImage,
                                  name: itemss[index].name,
                                  definition: itemss[index].definition,
                                  firstAbility: itemss[index].firstAbility,
                                  secondAbility: itemss[index].secondAbility,
                                  thirdAbility: itemss[index].thirdAbility,
                                  fourthAbility: itemss[index].fourthAbility,
                                  fifthAbility: itemss[index].fifthAbility,
                                  firstAbilityExp:
                                      itemss[index].firstAbilityExp,
                                  secondAbilityExp:
                                      itemss[index].secondAbilityExp,
                                  thirdAbilityExp:
                                      itemss[index].thirdAbilityExp,
                                  fourthAbilityExp:
                                      itemss[index].fourthAbilityExp,
                                  fifthAbilityExp:
                                      itemss[index].fifthAbilityExp,
                                  firstAbilityName:
                                      itemss[index].firstAbilityName,
                                  secondAbilityName:
                                      itemss[index].secondAbilityName,
                                  thirdAbilityName:
                                      itemss[index].thirdAbilityName,
                                  fourthAbilityName:
                                      itemss[index].fourthAbilityName,
                                  fifthAbilityName:
                                      itemss[index].fifthAbilityName,
                                  firstSpell: spells[itemss[index].firstSpell],
                                  secondSpell:
                                      spells[itemss[index].secondSpell],
                                  keystoneRune:
                                      keystoneRunes[itemss[index].keystoneRune],
                                  firstRune:
                                      dominationRunes[itemss[index].firstRune],
                                  secondRune:
                                      resolveRunes[itemss[index].secondRune],
                                  thirdRune:
                                      inspirationRunes[itemss[index].thirdRune],
                                  firstItem: items[itemss[index].firstItem],
                                  secondItem: items[itemss[index].secondItem],
                                  thirdItem: items[itemss[index].thirdItem],
                                  fourthItem: items[itemss[index].fourthItem],
                                  fifthItem: items[itemss[index].fifthItem],
                                  sixthtItem: items[itemss[index].sixthtItem],
                                  seventhItem: items[itemss[index].seventhItem],
                                  firstItem2:
                                        items[itemss[index].firstItem2],
                                    secondItem2:
                                        items[itemss[index].secondItem2],
                                    thirdItem2:
                                        items[itemss[index].thirdItem2],
                                    fourthItem2:
                                        items[itemss[index].fourthItem2],
                                    fifthItem2:
                                        items[itemss[index].fifthItem2],
                                    sixthItem2:
                                        items[itemss[index].sixthItem2],
                                    seventhItem2:
                                        items[itemss[index].seventhItem2],
                                    secondExp: itemss[index].secondExp,
                                  firstskillName: itemss[index].firstskillName,
                                  secondskillName:
                                      itemss[index].secondskillName,
                                  thirdskillName: itemss[index].thirdskillName,
                                  firstimage: itemss[index].firstimage,
                                  secondimage: itemss[index].secondimage,
                                  thirdimage: itemss[index].thirdimage,
                                  firstskillNumber:
                                      itemss[index].firstskillNumber,
                                  secondskillNumber:
                                      itemss[index].secondskillNumber,
                                  thirdskillNumber:
                                      itemss[index].thirdskillNumber,
                                  strongagainst1Name:
                                      itemss[index].strongagainst1Name,
                                  strongagainst2Name:
                                      itemss[index].strongagainst2Name,
                                  strongagainst3Name:
                                      itemss[index].strongagainst3Name,
                                  weakagainst1Name:
                                      itemss[index].weakagainst1Name,
                                  weakagainst2Name:
                                      itemss[index].weakagainst2Name,
                                  weakagainst3Name:
                                      itemss[index].weakagainst3Name,
                                  strongagainst1Image:
                                      itemss[index].strongagainst1Image,
                                  strongagainst2Image:
                                      itemss[index].strongagainst2Image,
                                  strongagainst3Image:
                                      itemss[index].strongagainst3Image,
                                  weakagainst1Image:
                                      itemss[index].weakagainst1Image,
                                  weakagainst2Image:
                                      itemss[index].weakagainst2Image,
                                  weakagainst3Image:
                                      itemss[index].weakagainst3Image,
                                  recommendedLane:
                                      itemss[index].recommendedLane,
                                  about: itemss[index].about,
                                  role: itemss[index].role,
                                  imageRole: itemss[index].imageRole,
                                  skin1: itemss[index].skin1,
                                    skin2: itemss[index].skin2,
                                    skin3: itemss[index].skin3,
                                    skin1Name: itemss[index].skin1Name,
                                    skin2Name: itemss[index].skin2Name,
                                    skin3Name: itemss[index].skin3Name,
                                    skin1Price: itemss[index].skin1Price,
                                    skin2Price: itemss[index].skin2Price,
                                    skin3Price: itemss[index].skin3Price
                                ))),
                    onLongPress: () {
                      setState(() {
                        _selected[index] = !_selected[index];
                      });
                    },
                    title: Text(
                      '${itemss[index].name}',
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
