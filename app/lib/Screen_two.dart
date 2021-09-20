import 'package:flutter/material.dart';

class Screen_two extends StatefulWidget {
  const Screen_two({Key? key}) : super(key: key);

  @override
  _Screen_twoState createState() => _Screen_twoState();
}

class _Screen_twoState extends State<Screen_two> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Second Screen",
      home: Homepage2(),
    );
  }
}

class Homepage2 extends StatefulWidget {
  const Homepage2({Key? key}) : super(key: key);

  @override
  _Homepage2State createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen i"),
      ),
      body: Center(
        child: Container(
          child: Text(args.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
