import 'package:flutter/material.dart';
import 'package:grocereasy/pages/home.dart';


void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand',),
      home: const homePage(),
    );
  }
}
