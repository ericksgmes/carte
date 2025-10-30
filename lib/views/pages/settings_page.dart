import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.1;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 23.0),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Snackbar"),
                        duration: Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Text("Open snackbar"),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.teal,
                      thickness: 5,
                      endIndent: MediaQuery.of(context).size.width * 0.2,
                    ),
                  ),
                  Container(
                    height: 50,
                    child: VerticalDivider(color: Colors.purple, thickness: 3),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 23.0),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Alert!!!!'),
                          title: Text('This is the title :0'),
                          actions: [
                            FilledButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Open dialogue"),
                ),
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () => setState(() {}),
              ),
              Text(controller.text),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Checkbox(
                    tristate: false,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
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
              ElevatedButton(onPressed: () {}, child: Text("Click me")),
              FilledButton(onPressed: () {}, child: Text("Click me")),
              TextButton(onPressed: () {}, child: Text('Click me')),
              OutlinedButton(onPressed: () {}, child: Text('Click me')),
              CloseButton(),
              BackButton(),
              DropdownButton(
                value: menuItem,
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
      ),
    );
  }
}
