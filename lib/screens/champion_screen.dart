// ignore_for_file: use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sliverbar_with_card/sliverbar_with_card.dart';
import 'package:flutter/services.dart';
import 'package:wrguide/spells.dart';
import 'package:wrguide/runes.dart';
import 'package:wrguide/items.dart';

class ChampionScreen extends StatefulWidget {
  final String topImage;
  final String name;
  final String definition;
  final String champImage;
  final String role;
  final String lane;
  final String about;
  final Image imageRole;
  final String recommendedLane;
  final Spell firstSpell;
  final Spell secondSpell;
  final Rune keystoneRune;
  final Rune firstRune;
  final Rune secondRune;
  final Rune thirdRune;
  final Image firstAbility;
  final Text firstAbilityExp;
  final Text firstAbilityName;
  final Image secondAbility;
  final Text secondAbilityExp;
  final Text secondAbilityName;
  final Image thirdAbility;
  final Text thirdAbilityExp;
  final Text thirdAbilityName;
  final Image fourthAbility;
  final Text fourthAbilityExp;
  final Text fourthAbilityName;
  final Image fifthAbility;
  final Text fifthAbilityExp;
  final Text fifthAbilityName;
  final Item firstItem;
  final Item secondItem;
  final Item thirdItem;
  final Item fourthItem;
  final Item fifthItem;
  final Item sixthtItem;
  final Item seventhItem;
  final Item firstItem2;
  final Item secondItem2;
  final Item thirdItem2;
  final Item fourthItem2;
  final Item fifthItem2;
  final Item sixthItem2;
  final Item seventhItem2;
  final String firstskillName;
  final int firstskillNumber;
  final Image firstimage;
  final String secondskillName;
  final int secondskillNumber;
  final Image secondimage;
  final String thirdskillName;
  final int thirdskillNumber;
  final Image thirdimage;
  final String strongagainst1Name;
  final String weakagainst1Name;
  final String strongagainst2Name;
  final String weakagainst2Name;
  final String strongagainst3Name;
  final String weakagainst3Name;
  final Image strongagainst1Image;
  final Image weakagainst1Image;
  final Image strongagainst2Image;
  final Image weakagainst2Image;
  final Image strongagainst3Image;
  final Image weakagainst3Image;
  final String secondExp;
  final CachedNetworkImage skin1;
  final CachedNetworkImage skin2;
  final CachedNetworkImage skin3;
  final String skin1Name;
  final String skin2Name;
  final String skin3Name;
  final int skin1Price;
  final int skin2Price;
  final int skin3Price;

  const ChampionScreen({
    this.firstskillName,
    this.secondskillName,
    this.thirdskillName,
    this.firstskillNumber,
    this.secondskillNumber,
    this.thirdskillNumber,
    this.firstimage,
    this.secondimage,
    this.thirdimage,
    this.topImage,
    this.name,
    this.definition,
    this.champImage,
    this.role,
    this.lane,
    this.about,
    this.imageRole,
    this.recommendedLane,
    this.firstSpell,
    this.secondSpell,
    this.keystoneRune,
    this.firstRune,
    this.secondRune,
    this.thirdRune,
    this.firstAbility,
    this.firstAbilityName,
    this.firstAbilityExp,
    this.secondAbility,
    this.secondAbilityName,
    this.secondAbilityExp,
    this.thirdAbility,
    this.thirdAbilityName,
    this.thirdAbilityExp,
    this.fourthAbility,
    this.fourthAbilityName,
    this.fourthAbilityExp,
    this.fifthAbility,
    this.fifthAbilityName,
    this.fifthAbilityExp,
    this.firstItem,
    this.secondItem,
    this.thirdItem,
    this.fourthItem,
    this.fifthItem,
    this.sixthtItem,
    this.seventhItem,
    this.fifthItem2,
    this.firstItem2,
    this.fourthItem2,
    this.secondItem2,
    this.seventhItem2,
    this.sixthItem2,
    this.thirdItem2,
    this.secondExp,
    this.strongagainst1Name,
    this.weakagainst1Name,
    this.strongagainst2Name,
    this.weakagainst2Name,
    this.strongagainst3Name,
    this.weakagainst3Name,
    this.strongagainst1Image,
    this.weakagainst1Image,
    this.strongagainst2Image,
    this.weakagainst2Image,
    this.strongagainst3Image,
    this.weakagainst3Image,
    this.skin1,
    this.skin2,
    this.skin3,
    this.skin1Name,
    this.skin2Name,
    this.skin3Name,
    this.skin1Price,
    this.skin2Price,
    this.skin3Price,
  });

  @override
  _ChampionScreenState createState() => _ChampionScreenState();
}

class _ChampionScreenState extends State<ChampionScreen> {
  Widget priceText(int price) {
    if (price == null) {
      return const SizedBox();
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Text("Price: $price" + " Wild Cores",
            style: const TextStyle(
                color: Colors.amber, fontWeight: FontWeight.bold)),
      );
    }
  }

  Widget categoryRenderer(int index) {
    if (index == 0) {
      return Column(children: [
        const Divider(),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Role: ${widget.role} '),
            ),
            widget.imageRole,
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text('Lane: ${widget.recommendedLane}'),
            )
          ],
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Text(
            "About ${widget.name} \n\n${widget.about}",
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Abilities',
                style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.firstAbilityName,
                          const Text(
                            ' (Passive)',
                            style: const TextStyle(color: Colors.blue),
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: widget.firstAbility),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Row(
                      children: [
                        Flexible(
                            child: Text(
                          widget.firstAbilityExp.data,
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                  ),
                ])),
            const Divider(color: Colors.blue),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widget.secondAbilityName,
                            const Text(
                              ' (1)',
                              style: const TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: widget.secondAbility),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Row(
                        children: [
                          Flexible(
                              child: Text(
                            widget.secondAbilityExp.data,
                            textAlign: TextAlign.center,
                          ))
                        ],
                      ),
                    ),
                  ],
                )),
            const Divider(color: Colors.blue),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 6,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.thirdAbilityName,
                          const Text(
                            ' (2)',
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: widget.thirdAbility),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Row(
                      children: [
                        Flexible(
                            child: Text(
                          widget.thirdAbilityExp.data,
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.blue),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            widget.fourthAbilityName,
                            const Text(' (3)',
                                style: TextStyle(color: Colors.blue))
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(16),
                        child: widget.fourthAbility),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Row(
                        children: [
                          Flexible(
                              child: Text(
                            widget.fourthAbilityExp.data,
                            textAlign: TextAlign.center,
                          ))
                        ],
                      ),
                    ),
                  ],
                )),
            const Divider(color: Colors.blue),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 6,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          widget.fifthAbilityName,
                          const Text(
                            ' (Ultimate)',
                            style: const TextStyle(color: Colors.blue),
                          )
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: widget.fifthAbility),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Row(
                      children: [
                        Flexible(
                            child: Text(
                          widget.fifthAbilityExp.data,
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ]);
    } else if (index == 1) {
      return Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(widget.skin1Name ?? "",
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),
        ),
        widget.skin1,
        priceText(widget.skin1Price),
        Text(widget.skin2Name ?? "",
            style: const TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold)),
        widget.skin2 ?? const SizedBox(),
        priceText(widget.skin2Price),
        Text(widget.skin3Name ?? "",
            style: const TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold)),
        widget.skin3 ?? const SizedBox(),
        priceText(widget.skin3Price),
      ]);
    } else if (index == 2) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    widget.firstSpell.image,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        widget.firstSpell.name,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                    Flexible(child: Text(widget.firstSpell.explanation)),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.blue,
              indent: 8,
              endIndent: 8,
            ),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    widget.secondSpell.image,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        widget.secondSpell.name,
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                    Flexible(child: Text(widget.secondSpell.explanation)),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            )
          ]);
    } else if (index == 3) {
      return Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, bottom: 8, top: 16),
            child: Row(
              children: [
                Container(
                    height: 80, width: 80, child: widget.keystoneRune.image),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                    child: RichText(
                        text: TextSpan(children: [
                  TextSpan(
                      text: widget.keystoneRune.name,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  const TextSpan(text: "\n"),
                  TextSpan(text: widget.keystoneRune.explanation)
                ])))
              ],
            ),
          ),
          const Divider(indent: 16, endIndent: 16, color: Colors.blue),
          Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 24, bottom: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget.firstRune.image,
                const SizedBox(
                  width: 28,
                ),
                Flexible(
                    child: RichText(
                        text: TextSpan(children: [
                  TextSpan(
                      text: widget.firstRune.name,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  const TextSpan(text: "\n"),
                  TextSpan(text: widget.firstRune.explanation)
                ])))
              ],
            ),
          ),
          const Divider(indent: 16, endIndent: 16, color: Colors.blue),
          Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 24, bottom: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget.secondRune.image,
                const SizedBox(
                  width: 28,
                ),
                Flexible(
                    child: RichText(
                        text: TextSpan(children: [
                  TextSpan(
                      text: widget.secondRune.name,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  const TextSpan(text: "\n"),
                  TextSpan(text: widget.secondRune.explanation)
                ])))
              ],
            ),
          ),
          const Divider(indent: 16, endIndent: 16, color: Colors.blue),
          Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 24, bottom: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widget.thirdRune.image,
                const SizedBox(
                  width: 28,
                ),
                Flexible(
                    child: RichText(
                        text: TextSpan(children: [
                  TextSpan(
                      text: widget.thirdRune.name,
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                  const TextSpan(text: "\n"),
                  TextSpan(text: widget.thirdRune.explanation)
                ])))
              ],
            ),
          )
        ],
      );
    } else if (index == 4) {
      return Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 3.5 / 5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: const Text(
                      'Default Item Build',
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Wrap(
                    children: [
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.firstItem.image),
                                        Text(widget.firstItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.firstItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "\n" + widget.firstItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.firstItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.firstItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.secondItem.image),
                                        Text(widget.secondItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.secondItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("\n" +
                                            widget.secondItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.secondItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.secondItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.thirdItem.image),
                                        Text(widget.thirdItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.thirdItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "\n" + widget.thirdItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.thirdItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.thirdItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.fourthItem.image),
                                        Text(widget.fourthItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.fourthItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("\n" +
                                            widget.fourthItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.fourthItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.fourthItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.fifthItem.image),
                                        Text(widget.fifthItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.fifthItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                            "\n" + widget.fifthItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.fifthItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.fifthItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.sixthtItem.image),
                                        Text(widget.sixthtItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.sixthtItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("\n" +
                                            widget.sixthtItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.sixthtItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.sixthtItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                      RaisedButton(
                          onPressed: () => showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  content: Container(
                                    height: 420,
                                    width: 500,
                                    child: ListView(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            child: widget.seventhItem.image),
                                        Text(widget.seventhItem.name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            )),
                                        Text(
                                          "\n" + widget.seventhItem.stats,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("\n" +
                                            widget.seventhItem.explanation)
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      child: const Text('OK'),
                                      onPressed: () => Navigator.pop(context),
                                    )
                                  ],
                                ),
                              ),
                          padding: const EdgeInsets.all(4),
                          elevation: 8.0,
                          child: Container(
                            child: Tooltip(message: widget.seventhItem.name),
                            height: MediaQuery.of(context).size.width / 5,
                            width: MediaQuery.of(context).size.width / 5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.seventhItem.image.image,
                                  fit: BoxFit.cover),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 3.5 / 5,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        widget.secondExp,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      children: [
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.firstItem2.image),
                                          Text(widget.firstItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.firstItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.firstItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.firstItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.firstItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.secondItem2.image),
                                          Text(widget.secondItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.secondItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.secondItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.secondItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.secondItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.thirdItem2.image),
                                          Text(widget.thirdItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.thirdItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.thirdItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.thirdItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.thirdItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.fourthItem2.image),
                                          Text(widget.fourthItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.fourthItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.fourthItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.fourthItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.fourthItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.fifthItem2.image),
                                          Text(widget.fifthItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.fifthItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.fifthItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.fifthItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.fifthItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.sixthItem2.image),
                                          Text(widget.sixthItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.sixthItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.sixthItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.sixthItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.sixthItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                        RaisedButton(
                            onPressed: () => showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    content: Container(
                                      height: 420,
                                      width: 500,
                                      child: ListView(
                                        children: [
                                          Container(
                                              height: 100,
                                              width: 100,
                                              child: widget.seventhItem2.image),
                                          Text(widget.seventhItem2.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              )),
                                          Text(
                                            "\n" + widget.seventhItem2.stats,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("\n" +
                                              widget.seventhItem2.explanation)
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      FlatButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
                                  ),
                                ),
                            padding: const EdgeInsets.all(4),
                            elevation: 8.0,
                            child: Container(
                              child: Tooltip(message: widget.seventhItem2.name),
                              height: MediaQuery.of(context).size.width / 5,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: widget.seventhItem2.image.image,
                                    fit: BoxFit.cover),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    } else if (index == 5) {
      return Column(children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
          child: Row(
            children: [
              Stack(alignment: Alignment.bottomLeft, children: [
                CircleAvatar(
                    radius: 40, backgroundImage: widget.firstimage.image),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    width: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${widget.firstskillNumber}"),
                      ],
                    ))
              ]),
              Container(
                  width: MediaQuery.of(context).size.width - 104,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.firstskillName}',
                        style: TextStyle(
                            color: Colors.blue[100],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 36),
          child: Row(
            children: [
              const Icon(Icons.arrow_downward),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
          child: Row(
            children: [
              Stack(alignment: Alignment.bottomLeft, children: [
                CircleAvatar(
                    radius: 40, backgroundImage: widget.secondimage.image),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    width: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${widget.secondskillNumber}"),
                      ],
                    ))
              ]),
              Container(
                  width: MediaQuery.of(context).size.width - 104,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${widget.secondskillName}',
                          style: TextStyle(
                              color: Colors.blue[100],
                              fontWeight: FontWeight.bold)),
                    ],
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [const Icon(Icons.arrow_downward)],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 12, bottom: 8, left: 12, right: 12),
          child: Row(children: [
            Stack(alignment: Alignment.bottomLeft, children: [
              CircleAvatar(
                  radius: 40, backgroundImage: widget.thirdimage.image),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  width: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${widget.thirdskillNumber}"),
                    ],
                  ))
            ]),
            Container(
                width: MediaQuery.of(context).size.width - 104,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${widget.thirdskillName}',
                        style: TextStyle(
                            color: Colors.blue[100],
                            fontWeight: FontWeight.bold)),
                  ],
                ))
          ]),
        ),
        const SizedBox(
          height: 30,
        )
      ]);
    } else {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 30,
            ),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        widget.name + " Strong Against",
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            widget.strongagainst1Image,
                            Text('${widget.strongagainst1Name}')
                          ]),
                          Column(children: [
                            widget.strongagainst2Image,
                            Text('${widget.strongagainst2Name}')
                          ]),
                          Column(children: [
                            widget.strongagainst3Image,
                            Text('${widget.strongagainst3Name}')
                          ]),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 6,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      widget.name + " Weak Against",
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          widget.weakagainst1Image,
                          Text('${widget.weakagainst1Name}')
                        ]),
                        Column(children: [
                          widget.weakagainst2Image,
                          Text('${widget.weakagainst2Name}')
                        ]),
                        Column(children: [
                          widget.weakagainst3Image,
                          Text('${widget.weakagainst3Name}')
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ]);
    }
  }

  List<String> categories = [
    'INFO',
    'SKINS',
    'SPELLS',
    'RUNES',
    'ITEMS',
    'ABILITY ORDER',
    'COUNTERS'
  ];
  int selectedIndex = 0;

  Widget categoryText(int index) {
    return Text(
      categories[index],
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: index == selectedIndex ? Colors.white : Colors.white60),
    );
  }

  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CardSliverAppBar(
          height: 250,
          background: Image.asset(
            widget.topImage,
            fit: BoxFit.cover,
          ),
          title: Text(widget.name,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          titleDescription: Text(widget.definition,
              style: const TextStyle(color: Colors.grey, fontSize: 16)),
          card: AssetImage(widget.champImage),
          backButton: true,
          body: Container(
              color: Colors.grey[900],
              child: Column(children: [
                SizedBox(
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height / 20
                          : MediaQuery.of(context).size.height / 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF343434)),
                  height: 60,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 20),
                            child: categoryText(index),
                          ),
                        );
                      }),
                ),
                categoryRenderer(selectedIndex),
              ]))),
    );
  }
}
