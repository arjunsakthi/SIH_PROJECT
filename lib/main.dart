import 'package:college_docs/side_pages/mental_test.dart';
import 'package:college_docs/side_pages/test/Result.dart';
import 'package:college_docs/side_pages/test/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData().copyWith(
      colorScheme:
          ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 150, 255, 58)),
    ),
    home: TestMain(),
  ));
}
