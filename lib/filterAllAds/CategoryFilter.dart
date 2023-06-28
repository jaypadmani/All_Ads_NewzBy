import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  bool _selectedValue = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.close),
        ),
        CheckboxListTile(
          title: const Text("Food"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("Texttile"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("IT Company"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("Sports"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("Business"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("Location"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
      ],
    );
  }
}
