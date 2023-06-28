import 'package:flutter/material.dart';


class SortFilter extends StatefulWidget {
  const SortFilter({Key? key}) : super(key: key);

  @override
  State<SortFilter> createState() => _SortFilterState();
}

class _SortFilterState extends State<SortFilter> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.close),
        ),
        ListTile(
          title: const Text('Popularity'),
          leading: Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
            focusColor: MaterialStateColor.resolveWith((states) => Colors.black),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Newest First'),
          leading: Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
            focusColor: MaterialStateColor.resolveWith((states) => Colors.black),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('A-Z (According to Company Name'),
          leading: Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
            focusColor: MaterialStateColor.resolveWith((states) => Colors.black),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('A-Z (According to Company Name'),
          leading: Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
            focusColor: MaterialStateColor.resolveWith((states) => Colors.black),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Popularity'),
          leading: Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
            focusColor: MaterialStateColor.resolveWith((states) => Colors.black),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('A-Z (According to Company Name'),
          leading: Radio(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
            focusColor: MaterialStateColor.resolveWith((states) => Colors.black),
            value: 3,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
