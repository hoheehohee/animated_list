import 'package:animated_list/list_model.dart';
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
        primarySwatch: Colors.amber,
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
  late ListModel<int> _list;
  int? _selectedItem;

  @override
  void initState() {
    super.initState();
    _list = ListModel<int>(
      initialItems: <int>[1, 2, 3, 4, 5]
    );
  }

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
        initialItemCount: _list.length,
        itemBuilder: _buildItem,
      )
    );
  }

  void insert() {
    final int index = _selectedItem == null ? _list.length ? _list.indexOf(_selectedItem);
  }

  Widget _buildItem(BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      item: _list[index],
      selected: _selectedItem == _list[index],
      onTap: () {
        _selectedItem = _selectedItem == _list[index] ? null : _list[index];
        setState(() {});
      }
    );
  }
}
