import 'package:flutter/material.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text('Hello Welcome'),
      ),
    );
  }
}
