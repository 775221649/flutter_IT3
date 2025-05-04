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
              Widget_Row2(container: container),
              Padding(padding: EdgeInsets.all(16)),
              Widget_Row1(),
            ],
          ),
        ),
      )),
    );
  }
}

class Widget_Row2 extends StatelessWidget {
  const Widget_Row2({
    super.key,
    required this.container,
  });

  final Container container;

  @override
  Widget build(BuildContext context) {
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

class Widget_Row1 extends StatelessWidget {
  const Widget_Row1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                backgroundColor: Colors.blue,
                radius: 100,
                child: Widget_Stack()),
          ]),
          Divider(),
          Text("End Of The Line"),
        ],
      )
    ]);
  }
}

class Widget_Stack extends StatelessWidget {
  const Widget_Stack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.red, height: 100, width: 100),
        Container(color: Colors.redAccent, height: 60, width: 60),
        Container(color: Colors.orange, height: 40.0, width: 40.0),
      ],
    );
  }
}
