import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {Key? key,
      required this.item,
      required this.onTap,
      required this.selected})
      : super(key: key);

  final int item;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.primaries[item % Colors.primaries.length],
      child: ListTile(
        onTap: onTap,
        selected: selected,
        leading: const Icon(Icons.star),
        title: Text(
          '번호: $item',
          textScaleFactor: 2,
        ),
        subtitle: const Text('Subtitle'),
        trailing: const Icon(Icons.favorite),
      ),
    );
  }
}
