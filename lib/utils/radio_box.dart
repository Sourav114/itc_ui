import 'package:flutter/material.dart';

enum SortingCharacter { name,code }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SortingCharacter? _character = SortingCharacter.name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Name'),
          trailing: Radio<SortingCharacter>(
            value: SortingCharacter.name,
            groupValue: _character,
            onChanged: (SortingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Code'),
          trailing: Radio<SortingCharacter>(
            value: SortingCharacter.code,
            groupValue: _character,
            onChanged: (SortingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
