import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    title:
    'Flutter Layout demo';
    return Scaffold(
        appBar: AppBar(title: Text('LOL')),
        body: Column(
          children: [
            titleSection,
          ],
        ));
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Oeschinen Lake',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Kandersteg, Switzerland',
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ]),
      ),
      Icon(Icons.star, color: Colors.red[500]),
      Text('41'),
    ],
  ),
);
