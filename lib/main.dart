import 'package:flutter/material.dart';
import 'package:planning_poker/home.dart';
import 'package:planning_poker/overview.dart';

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
          actions: <Widget>[],
        ),
        body: HomePage(),
        floatingActionButton: OverviewFloatingButton(),
      ),
    );
  }
}

class OverviewFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Overview()),
        )
      },
      child: Icon(Icons.dashboard),
      backgroundColor: Colors.lightBlue,
    );
  }
}

