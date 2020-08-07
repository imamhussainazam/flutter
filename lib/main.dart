import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Count by clicking'),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Count:',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.transparent,
                    onPressed: _incrementCounter,
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: Colors.red)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    onPressed: _incrementCounter,
                    child: Text(
                      'Buy now!',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
