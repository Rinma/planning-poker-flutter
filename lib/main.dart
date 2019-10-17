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
        floatingActionButton: OverviewFloatingButton(),
      ),
    );
  }
}

final List<String> fibonacci = [
  "0.5",
  "1",
  "2",
  "3",
  "5",
  "8",
  "13",
  "20",
  "40",
  "100",
  "?",
  "@"
];

ScrollController controller;

class HomePage extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemCount: fibonacci.length,
      itemBuilder: (context, index) {
        return Container(
          key: Key("number-" + fibonacci[index]),
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
                fibonacci[index],
                style: TextStyle(fontSize: 128),
              ),
            ),
          ),
        );
      },
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
                  controller.animateTo(
                    index * MediaQuery.of(context).size.width,
                    curve: Curves.linear,
                    duration: Duration(milliseconds: 250),
                  );
                },
                child: Center(
                  child: Text(fibonacci[index], style: TextStyle(fontSize: 48)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
