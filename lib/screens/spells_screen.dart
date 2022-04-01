import 'package:flutter/material.dart';
import 'package:wrguide/spells.dart';

class SpellScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Spells'),
          leading: RaisedButton(
            color: Colors.blue[700],
            splashColor: Colors.orange.withAlpha(130),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          )),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 24, bottom: 8, left: 8, right: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[0].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(spells[0].name,
                        style: TextStyle(color: Colors.blue[500])),
                  ),
                  Flexible(
                      child: Text(spells[0].explanation,
                          style: TextStyle(color: Colors.blueGrey[200])))
                ]),
          ),
          Divider(indent: 8, endIndent: 8, color: Colors.blue[700]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[1].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(spells[1].name,
                        style: TextStyle(color: Colors.blue[500])),
                  ),
                  Flexible(
                      child: Text(spells[1].explanation,
                          style: TextStyle(color: Colors.blueGrey[200])))
                ]),
          ),
          Divider(indent: 8, endIndent: 8, color: Colors.blue[700]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[2].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(spells[2].name,
                        style: TextStyle(color: Colors.blue[500])),
                  ),
                  Flexible(
                      child: Text(spells[2].explanation,
                          style: TextStyle(color: Colors.blueGrey[200])))
                ]),
          ),
          Divider(indent: 8, endIndent: 8, color: Colors.blue[700]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[3].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(spells[3].name,
                        style: TextStyle(color: Colors.blue[500])),
                  ),
                  Flexible(
                      child: Text(spells[3].explanation,
                          style: TextStyle(color: Colors.blueGrey[200])))
                ]),
          ),
          Divider(indent: 8, endIndent: 8, color: Colors.blue[700]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[4].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(spells[4].name,
                        style: TextStyle(color: Colors.blue[500])),
                  ),
                  Flexible(
                      child: Text(spells[4].explanation,
                          style: TextStyle(color: Colors.blueGrey[200])))
                ]),
          ),
          Divider(indent: 8, endIndent: 8, color: Colors.blue[700]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[5].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(spells[5].name,
                        style: TextStyle(color: Colors.blue[500])),
                  ),
                  Flexible(
                      child: Text(spells[5].explanation,
                          style: TextStyle(color: Colors.blueGrey[200])))
                ]),
          ),
          Divider(indent: 8, endIndent: 8, color: Colors.blue[700]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  spells[6].image,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      spells[6].name,
                      style: TextStyle(color: Colors.blue[500]),
                    ),
                  ),
                  Flexible(
                      child: Text(
                    spells[6].explanation,
                    style: TextStyle(color: Colors.blueGrey[200]),
                  ))
                ]),
          ),
        ],
      ),
    );
  }
}
