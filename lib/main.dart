import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    routes: <String, WidgetBuilder>{
      "/SecondPage": (BuildContext context) => new SecondPage(),
      "/ThirdPage": (BuildContext context) => new ThirdPage()
    },
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Home"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.favorite, color: Colors.redAccent),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/SecondPage");
                  }),
              new Text("Home")
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Second Page"), backgroundColor: Colors.blue),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.home, color: Colors.blue),
                  iconSize: 70.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/ThirdPage");
                  }),
              new Text("Second Page")
            ],
          ),
        ),
      ),
    );
  }
}

// third page
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Third Page"), backgroundColor: Colors.purple),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.traffic, color: Colors.purple),
                  iconSize: 70.0,
                  onPressed: null),
              new Text("Last and third Page")
            ],
          ),
        ),
      ),
    );
  }
}
