import 'package:carte/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Carte());
}

// Material App (StateFull)
// Scaffold
// App title
// Bottom nav bar -> SetState

class Carte extends StatefulWidget {
  const Carte({super.key});

  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        brightness: Brightness.light
      ),
      home: WidgetTree()
    );
  }
}
