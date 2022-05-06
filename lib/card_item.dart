import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.item}) : super(key: key);

  final int item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.primaries[item % Colors.primaries.length],
      child: ListTile(
        leading: const Icon(Icons.star),
        title: Text('번호: $item', textScaleFactor: 2,),
        subtitle: const Text('Subtitle'),
        trailing: const Icon(Icons.favorite),
      ),
    );
  }
}
