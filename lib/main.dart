import 'package:flutter/material.dart';

void main() => runApp(PlanningPoker());

class PlanningPoker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planning Poker',
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Planning Poker"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cardValues = [
      "0.5",
      "1",
      "2",
      "5",
      "8",
      "13",
      "20",
      "40",
      "100",
      "?",
      "@"
    ];
    List<Widget> cards = [];

    for (var value in cardValues) {
      cards.add(Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        color: Colors.transparent,
        padding: EdgeInsets.all(15.0),
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
          ),
          child: Center(
            child: Text(
              value,
              style: TextStyle(fontSize: 128),
            ),
          ),
        ),
      ));
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: cards,
    );
  }
}
