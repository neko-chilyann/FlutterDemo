import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class CollectionDetail extends StatefulWidget {
  const CollectionDetail(this.list);

  final Set<WordPair> list;

  @override
  createState() => new CollectionDetailState(list);
}

// 部件状态管理
class CollectionDetailState extends State<CollectionDetail> {
  CollectionDetailState(this.list);

  final Set<WordPair> list;

  // 设置字体的大小
  final _biggerFont = const TextStyle(fontSize: 18.0);

  // 运行方法
  @override
  Widget build(BuildContext context) {
    final tiles = list.map((pair) {
      return new ListTile(
        title: new Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    });
    final divided =
        ListTile.divideTiles(context: context, tiles: tiles).toList();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Saved Sugeestions'),
      ),
      body: new ListView(children: divided),
    );
  }
}
