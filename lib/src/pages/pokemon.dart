import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon '),
      ),
      body: Center(
        child: Text(
          'data',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
