import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String name = 'nome da silva';
int idade = 2;
double dinheiro = 1299.99;
List<String> items = ['um', '2'];
Map<String, dynamic> numerosTelefone = {'joao': 22399999, 'carlos': '23245454'};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.yard_rounded, color: Colors.red),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              "João!!",
              style: TextStyle(
                fontSize: 78,
                backgroundColor: Colors.green.withValues(alpha: 0.3),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.javascript_outlined, size: 35,),
            tileColor: Colors.purple,
            title: Text("Jo~ao"),
            trailing: Text("trailing txt"),
            onTap: () {
              print("voce clicou dos santos!");
            },
          )
        ],
      ),
    );
  }
}
