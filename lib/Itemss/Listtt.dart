
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListScreen extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4','Item 5','Item 6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder:(context, index)  {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(item: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  final String item;

  ItemDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Detail'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ListView(
          children: [Center(child: Text('data1 $item',)),
          ],
        ),
        // child: Text('data1 $item'),
      ),
    );
  }
}
