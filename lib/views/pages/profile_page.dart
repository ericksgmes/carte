import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.1;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () => setState(() {}),
            ),
            Text(controller.text),
            Checkbox(
              tristate: false,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: false,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
              title: Text("Sexo?"),
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              title: Text("Switch me"),
            ),
            Slider.adaptive(
              min: 0.1,
              max: 2,
              value: sliderValue,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text("Valor do slider: ${sliderValue.toStringAsFixed(1)}"),
            GestureDetector(
              child: Image.asset(
                'assets/images/bg_joao.jpg',
                scale: sliderValue,
              ),
              onTap: () => setState(() {
                isSwitched = !isSwitched;
              }),
            ),
            InkWell(
              splashColor: Colors.red,
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.white70,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
              ),
              child: Text("Click me"),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Click me")),
            FilledButton(onPressed: () {}, child: Text("Click me")),
            TextButton(onPressed: () {}, child: Text('Click me')),
            OutlinedButton(onPressed: () {}, child: Text('Click me')),
            CloseButton(),
            BackButton(),
            DropdownButton(
              value:  menuItem,
              items: [
                DropdownMenuItem(value: 'e1', child: Text('Element 1')),
                DropdownMenuItem(value: 'e2', child: Text('Element 2')),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
