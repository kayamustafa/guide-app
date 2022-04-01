import 'package:flutter/material.dart';
import 'package:wrguide/items.dart';
import 'oneitem_screen.dart';

class ItemsScreen extends StatefulWidget {
  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  bool searchClicked = false;
  Icon icon = Icon(Icons.search);
  dynamic title = Text('Items');
  var newitems = List<Item>();
  var newnewitem = List<Item>();
  void sort() {
    newitems.addAll(items);
    newitems
        .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
  }

  void initState() {
    super.initState();
    sort();
    newnewitem.addAll(newitems);
    selectedItems.addAll(newnewitem);
  }

  final FocusNode _focusNode = FocusNode();

  Widget itemGenerator({int index}) {
    if (index >= newnewitem.length) {
      return SizedBox();
    } else {
      return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
          child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemScreen(
                              name: newnewitem[index].name,
                              explanation: newnewitem[index].explanation,
                              image: newnewitem[index].image,
                              stats: newnewitem[index].stats,
                              cost: newnewitem[index].cost,
                              sell: newnewitem[index].sell,
                            )));
              },
              padding: EdgeInsets.all(4),
              elevation: 8.0,
              child: Container(
                child: Tooltip(message: newnewitem[index].name),
                height: MediaQuery.of(context).size.width / 4,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: newnewitem[index].image.image, fit: BoxFit.cover),
                ),
              )));
    }
  }

  List<Item> selectedItems = List<Item>();
  void filterSearchResults(String query) {
    List<Item> sortedList = [];

    for (int i = 0; i < selectedItems.length; i++) {
      if (selectedItems[i].name.toLowerCase().startsWith(query)) {
        sortedList.add(selectedItems[i]);
      }
    }
    if (query.isNotEmpty) {
      setState(() {
        newnewitem.clear();
        newnewitem.addAll(sortedList);
      });
    } else {
      setState(() {
        newnewitem.clear();
        newnewitem.addAll(selectedItems);
      });
    }
  }

  String newtitle = 'Items';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: title,
          actions: [
            IconButton(
                icon: icon,
                onPressed: () {
                  setState(() {
                    if (searchClicked == false) {
                      _focusNode.requestFocus();
                      icon = Icon(Icons.clear);
                      searchClicked = true;
                      title = TextField(
                        focusNode: _focusNode,
                        onChanged: (value) =>
                            filterSearchResults(value.toLowerCase()),
                      );
                    } else {
                      icon = Icon(Icons.search);
                      searchClicked = false;
                      title = Text(newtitle);
                      newnewitem.clear();
                      newnewitem.addAll(selectedItems);
                    }
                  });
                }),
            PopupMenuButton(
              onSelected: (value) {
                setState(() {
                  if (value == 'physical') {
                    newtitle = 'Physical Damage Items';

                    newnewitem.clear();
                    newnewitem.addAll(physical);
                  } else if (value == 'magic') {
                    newtitle = 'Magic Damage Items';
                    newnewitem.clear();
                    newnewitem.addAll(magic);
                  } else if (value == 'tank') {
                    newtitle = 'Tank Items';
                    newnewitem.clear();
                    newnewitem.addAll(tank);
                  } else if (value == 'boot') {
                    newtitle = 'Boots';
                    newnewitem.clear();
                    newnewitem.addAll(boots);
                  } else if (value == 'all') {
                    newtitle = 'Items';
                    newnewitem.clear();
                    newnewitem.addAll(newitems);
                  } else {
                    newtitle = 'Enchants';
                    newnewitem.clear();
                    newnewitem.addAll(enchant);
                  }
                  title = Text(newtitle);
                  selectedItems.clear();
                  selectedItems.addAll(newnewitem);
                });
              },
              itemBuilder: (context) {
                return <PopupMenuItem<String>>[
                  PopupMenuItem<String>(value: 'all', child: Text('All')),
                  PopupMenuItem<String>(
                      value: 'physical', child: Text('Physical Damage')),
                  PopupMenuItem<String>(
                      value: 'magic', child: Text('Magic Damage')),
                  PopupMenuItem<String>(value: 'tank', child: Text('Tank')),
                  PopupMenuItem<String>(value: 'boot', child: Text('Boots')),
                  PopupMenuItem<String>(
                      value: 'enchant', child: Text('Enchants'))
                ];
              },
            )
          ],
          leading: RaisedButton(
            onPressed: () => Navigator.pop(context),
            color: Colors.blue[700],
            child: Icon(Icons.arrow_back),
            splashColor: Colors.orangeAccent.withAlpha(130),
          ),
        ),
        body: GridView.count(
          crossAxisCount:
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 4
                  : 7,
          children: [
            itemGenerator(index: 0),
            itemGenerator(index: 1),
            itemGenerator(index: 2),
            itemGenerator(index: 3),
            itemGenerator(index: 4),
            itemGenerator(index: 5),
            itemGenerator(index: 6),
            itemGenerator(index: 7),
            itemGenerator(index: 8),
            itemGenerator(index: 9),
            itemGenerator(index: 10),
            itemGenerator(index: 11),
            itemGenerator(index: 12),
            itemGenerator(index: 13),
            itemGenerator(index: 14),
            itemGenerator(index: 15),
            itemGenerator(index: 16),
            itemGenerator(index: 17),
            itemGenerator(index: 18),
            itemGenerator(index: 19),
            itemGenerator(index: 20),
            itemGenerator(index: 21),
            itemGenerator(index: 22),
            itemGenerator(index: 23),
            itemGenerator(index: 24),
            itemGenerator(index: 25),
            itemGenerator(index: 26),
            itemGenerator(index: 27),
            itemGenerator(index: 28),
            itemGenerator(index: 29),
            itemGenerator(index: 30),
            itemGenerator(index: 31),
            itemGenerator(index: 32),
            itemGenerator(index: 33),
            itemGenerator(index: 34),
            itemGenerator(index: 35),
            itemGenerator(index: 36),
            itemGenerator(index: 37),
            itemGenerator(index: 38),
            itemGenerator(index: 39),
            itemGenerator(index: 40),
            itemGenerator(index: 41),
            itemGenerator(index: 42),
            itemGenerator(index: 43),
            itemGenerator(index: 44),
            itemGenerator(index: 45),
            itemGenerator(index: 46),
            itemGenerator(index: 47),
            itemGenerator(index: 48),
            itemGenerator(index: 49),
            itemGenerator(index: 50),
            itemGenerator(index: 51),
            itemGenerator(index: 52),
            itemGenerator(index: 53),
            itemGenerator(index: 54),
            itemGenerator(index: 55),
            itemGenerator(index: 56),
            itemGenerator(index: 57),
            itemGenerator(index: 58),
            itemGenerator(index: 59),
            itemGenerator(index: 60),
            itemGenerator(index: 61),
            itemGenerator(index: 62),
            itemGenerator(index: 63),
          ],
        ));
  }
}
