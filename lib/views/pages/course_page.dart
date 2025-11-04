import 'package:carte/data/constants.dart';
import 'package:carte/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: HeroWidget(
                  heightPercentageInDecimal: 0.15,
                ),
              ),
              Text(widget.title, style: KTextStyle.titleBoldTeal),
              Text(widget.description, style: KTextStyle.descriptionText),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "O que é Clean Architecture?",
                    style: KTextStyle.titleBoldTeal,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Clean Architecture é um conjunto de princípios que ajuda a estruturar "
                    "projetos de forma organizada, escalável e fácil de dar manutenção.",
                    style: KTextStyle.body,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "“Arquiteturas limpas são sobre separar regras de negócio de detalhes "
                    "de implementação.” — Robert C. Martin",
                    style: KTextStyle.italicQuote,
                  ),
                  const SizedBox(height: 12),
                  Image.asset(
                    'assets/images/bg_joao.jpg',
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 12),
                  Text("Benefícios", style: KTextStyle.titleSection),
                  ...[
                    "Melhor organização do código",
                    "Facilita testes",
                    "Independência de framework",
                    "Mantém regras de negócio puras",
                  ].map((e) => Text("• $e", style: KTextStyle.body)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
