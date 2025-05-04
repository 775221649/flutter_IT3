import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final container = Container(
      color: const Color.fromARGB(255, 163, 50, 21), height: 40.0, width: 40.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              RowOne(),
              Padding(padding: EdgeInsets.all(16)),
              RowTwo(),
            ],
          ),
        ),
      )),
    );
  }

  Row RowTwo() {
    return Row(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(color: Colors.amberAccent, height: 40.0, width: 40.0),
          Padding(padding: EdgeInsets.all(16)),
          Container(color: Colors.amberAccent, height: 40.0, width: 40.0),
          Padding(padding: EdgeInsets.all(16)),
          Container(color: Colors.amberAccent, height: 40.0, width: 40.0),
          Divider(),
          Row(children: [
            CircleAvatar(
                backgroundColor: Colors.blue, radius: 100, child: RowStack())
          ]),
          Divider(),
          Text("End Of The Line"),
        ],
      )
    ]);
  }

  Stack RowStack() {
    return Stack(
      children: [
        Container(color: Colors.red, height: 100, width: 100),
        Container(color: Colors.redAccent, height: 60, width: 60),
        Container(color: Colors.orange, height: 40.0, width: 40.0),
      ],
    );
  }

  Row RowOne() {
    return Row(
      children: [
        container,
        Padding(padding: EdgeInsets.all(16)),
        Expanded(
            child: Container(
                color: const Color.fromARGB(255, 218, 88, 7),
                height: 40.0,
                width: 40.0)),
        Padding(padding: EdgeInsets.all(16)),
        Container(
            color: const Color.fromARGB(255, 188, 76, 36),
            height: 40.0,
            width: 40.0),
      ],
    );
  }
}
