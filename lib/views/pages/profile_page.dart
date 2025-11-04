import 'package:carte/data/constants.dart';
import 'package:carte/data/notifiers.dart';
import 'package:carte/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/bg_joao.jpg'),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text('Logout', style: KTextStyle.titleBoldTeal),
            ),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
