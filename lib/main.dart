import 'package:flutter/material.dart';

import 'Itemss/Listtt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item List App',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: ItemListScreen(),
    );
  }
}
