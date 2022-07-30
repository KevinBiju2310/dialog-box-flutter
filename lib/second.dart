import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController _location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 150, left: 150),
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: TextFormField(
                        controller: _location,
                        decoration:
                            const InputDecoration(hintText: "Enter Location"),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              var location = _location.text;

                              print("Location: " + location);
                              Navigator.of(context).pop();
                              _location.clear();
                            },
                            child: const Text("Submit"))
                      ],
                    );
                  });
            },
            child: const Text("open dialog")),
      ),
    );
  }
}
