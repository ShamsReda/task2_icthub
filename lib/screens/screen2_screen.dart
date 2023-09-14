import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  final String txt;

  const Screen2({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          txt,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.indigo
          ),
        ),
      ),
    );
  }
}
