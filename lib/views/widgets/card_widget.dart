import 'package:carte/data/constants.dart';
import 'package:carte/views/pages/course_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CoursePage(title: title, description: description);
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 8),
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: KTextStyle.titleBoldTeal),
                Text(description, style: KTextStyle.descriptionText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
