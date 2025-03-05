import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(title: 'MyChatBot', home: SafeArea(child: MyScaffold())),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null, // Disables the button
          ),
          Expanded(child: title),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null, // Disables the button
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'MyChatBot',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          const Expanded(child: Center(child: Text('Hello, world!'))),
        ],
      ),
    );
  }
}
