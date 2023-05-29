import 'package:flutter/material.dart';
import 'package:roll/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dice roller',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: const GradientContainer(
          Colors.black87,
          Colors.black,
        ),
      ),
    ),
  );
}
