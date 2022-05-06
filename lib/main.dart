import 'package:flutter/material.dart';

import 'card_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimList(),
    );
  }
}

class AnimList extends StatefulWidget {
  const AnimList({Key? key}) : super(key: key);

  @override
  State<AnimList> createState() => _AnimListState();
}

class _AnimListState extends State<AnimList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove_circle),
            color: Colors.white,
          )
        ],
      ),
      body: AnimatedList(
        initialItemCount: 5,
        itemBuilder: _buildItem,
      )
    );
  }

  Widget _buildItem(BuildContext context, int index, Animation<double> animation) {
    return CardItem(item: index,);
  }
}