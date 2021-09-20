import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Homepage(),
      routes: {
        '/Screen-two': (context) => Screen_two(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Media Query"),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (BuildContext context) => Screen_two()));

          Navigator.of(context).pushNamed('/Screen-two');
        },
      ),
    );
  }
}
