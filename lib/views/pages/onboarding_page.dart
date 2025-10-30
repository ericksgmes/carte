import 'package:carte/data/constants.dart';
import 'package:carte/views/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                child: Lottie.asset(
                  'assets/lotties/house.json',
                  fit: BoxFit.fitWidth,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'This app is an app made with flutter bla bla bla john java fabio flutter santos silva',
                style: KTextStyle.descriptionText,
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
