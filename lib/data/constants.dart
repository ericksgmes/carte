import 'package:flutter/material.dart';

class KConstants {
  static const String isDarkMode = 'isDarkMode';
}

class KTextStyle {
  // Títulos principais (tela/página)
  static const TextStyle titleBoldTeal = TextStyle(
    color: Colors.teal,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  // Título de seção
  static const TextStyle titleSection = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  // Subtítulo / Descrição longa
  static const TextStyle descriptionText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Texto do corpo
  static const TextStyle body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // Corpo pequeno para notas/infos técnicas
  static const TextStyle small = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // Citação
  static const TextStyle italicQuote = TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
    color: Colors.grey,
    height: 1.4,
  );

  // Estilo para bullet points / listas
  static const TextStyle bullet = TextStyle(fontSize: 14, height: 1.45);

  // Código / terminal / bloco técnico
  static const TextStyle code = TextStyle(
    fontSize: 13,
    fontFamily: 'monospace',
    backgroundColor: Color(0xFFEFEFEF),
    color: Color(0xFF333333),
    height: 1.4,
  );
}
