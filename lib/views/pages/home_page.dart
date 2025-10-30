import 'package:carte/views/widgets/card_widget.dart';
import 'package:carte/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              HeroWidget(heightPercentageInDecimal: 0.3),
              CardWidget(
                title: 'João faz pudim',
                description:
                    'O pudim de leite condensado ficou muito bom segundo avaliações',
              ),
              CardWidget(
                title: 'Compraram comida',
                description: 'Sim os cara compraram comida..',
              ),
              CardWidget(
                title: 'Santos rebaixado',
                description: 'Neymar fez mais um filho',
              ),
              ...List.generate(5, (index) {
                return CardWidget(
                  title: 'List item $index',
                  description: 'Description of $index',
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
