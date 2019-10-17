import 'package:flutter/material.dart';
import 'package:planning_poker/home.dart';
import 'lists.dart';

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overview"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          fibonacci.length,
              (index) {
            return Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
              ),
              margin: EdgeInsets.all(5),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  homeScrollController.animateTo(
                    index * MediaQuery.of(context).size.width,
                    curve: Curves.linear,
                    duration: Duration(milliseconds: 250),
                  );
                },
                child: Center(
                  child: FittedBox(
                    child: fibonacci[index],
                  )
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
