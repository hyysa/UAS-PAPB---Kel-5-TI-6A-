import 'package:flutter/material.dart';
import 'widgets.dart'; // Ganti dengan path import yang sesuai

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const <Widget>[
                ContentItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
