import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController usernameController = TextEditingController();

  bool? isChecked = false;

  var isSwitched = false;

  var sliderValue = 0.0;

  var menuItem = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("This is a SnackBar"),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                      action: SnackBarAction(
                        label: "Close",
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                    ),
                  );
                },
                child: Text("Open SnackBar"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Dialog Title"),
                        content: Text("This is a dialog message."),
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text("Open alert Dialog"),
              ),
              Divider(color: Colors.black, thickness: 2, endIndent: 200),
              Container(
                height: 100,
                color: Colors.blue,
                child: VerticalDivider(),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AboutDialog();
                    },
                  );
                },
                child: Text("Open about Dialog"),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(child: Text("Item 1"), value: "1"),
                  DropdownMenuItem(child: Text("Item 2"), value: "2"),
                  DropdownMenuItem(child: Text("Item 3"), value: "3"),
                ],
                onChanged: (value) {
                  setState(() {
                    menuItem = value.toString();
                  });
                },
              ),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () => setState(() {}),
              ),
              Text(usernameController.text),
              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (value) => setState(() {
                  isChecked = value;
                }),
              ),
              CheckboxListTile.adaptive(
                title: Text("Accept Terms and Conditions"),
                value: isChecked,
                tristate: true,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (value) => setState(() {
                  isSwitched = value;
                }),
              ),
              SwitchListTile.adaptive(
                value: isSwitched,
                onChanged: (value) => setState(() {
                  isSwitched = value;
                }),
                title: Text("Enable Notifications"),
              ),
              Slider.adaptive(
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
                min: 0,
                max: 100,
                divisions: 5,
                label: sliderValue.round().toString(),
              ),
              InkWell(
                splashColor: Theme.of(context).primaryColor,
                child: Container(height: 50, color: Colors.white12),

                onTap: () {
                  // Handle image tap
                  print("Image tapped");
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  print("Button pressed");
                },
                child: Text("Submit"),
              ),
              FilledButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  print("Button pressed");
                },
                child: Text("Submit"),
              ),
              TextButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  print("Button pressed");
                },
                child: Text("Submit"),
              ),
              OutlinedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  // Handle button press
                  print("Button pressed");
                },
                child: Text("Submit"),
              ),
              CloseButton(
                onPressed: () {
                  // Handle close button press
                  print("Close button pressed");
                },
              ),
              BackButton(
                onPressed: () {
                  // Handle back button press
                  print("Back button pressed");
                },
              ),
              BackButtonIcon(),
            ],
          ),
        ),
      ),
    );
  }
}
