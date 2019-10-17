import 'package:flutter/material.dart';
import 'lists.dart';

ScrollController homeScrollController;

class HomePage extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  void initState() {
    homeScrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: homeScrollController,
      scrollDirection: Axis.horizontal,
      itemCount: fibonacci.length,
      itemBuilder: (context, index) {
        return Container(
          key: Key(index.toString()),
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
              child: fibonacci[index],
            ),
          ),
        );
      },
    );
  }
}