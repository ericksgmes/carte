import 'package:carte/data/constants.dart';
import 'package:carte/data/notifiers.dart';
import 'package:carte/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  void initState() {
    super.initState();
    initThemeMode();
  }

  void initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.isDarkMode);
    isDarkModeNotifier.value = repeat ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.tealAccent,
              brightness: value ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
