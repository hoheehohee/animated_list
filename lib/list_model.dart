import 'package:flutter/cupertino.dart';

class ListModel<E> {

  final List<E> _items;

  ListModel({
    required Iterable<E> initialItems,
  })  : assert(initialItems != null),
        _items = List<E>.from(initialItems);

  void insert(int index, E item) {
    _items.insert(index, item);
  }

  E removeAt(int index) {
    final removedItem = _items.removeAt(index);
    return removedItem;
  }

  int get length => _items.length;

  E operator [](int index) => _items[index];

  int indexOf(E item) => _items.indexOf(item);
}
