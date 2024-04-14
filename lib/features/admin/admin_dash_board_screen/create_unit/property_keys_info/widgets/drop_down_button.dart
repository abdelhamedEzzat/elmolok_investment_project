import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<IconData> list = [Icons.home, Icons.work, Icons.school];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  IconData dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<IconData>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (IconData? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<IconData>>((IconData value) {
        return DropdownMenuItem<IconData>(
          value: value,
          child: Icon(
            value,
            size: 25.h,
          ),
        );
      }).toList(),
    );
  }
}
