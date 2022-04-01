import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  final String stats;
  final String explanation;
  final Image image;
  final String name;
  final int cost;
  final int sell;
  ItemScreen(
      {this.stats,
      this.name,
      this.image,
      this.cost,
      this.explanation,
      this.sell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))),
        title: Text(name),
        leading: RaisedButton(
          color: Colors.blue[700],
          onPressed: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
          splashColor: Colors.orange.withAlpha(130),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: image.image, fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 12,
                ),
                Flexible(
                  child: Text(
                    stats,
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              explanation,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Cost: ',
                      style: TextStyle(color: Colors.amber, fontSize: 16)),
                  TextSpan(
                      text: cost.toString(), style: TextStyle(fontSize: 16))
                ])),
                Image.asset('images/Gold.png')
              ]),
              Row(children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Sell: ',
                      style: TextStyle(color: Colors.amber, fontSize: 16)),
                  TextSpan(
                      text: sell.toString(), style: TextStyle(fontSize: 16))
                ])),
                Image.asset('images/Gold.png')
              ])
            ],
          )
        ],
      ),
    );
  }
}
