import 'package:flutter/material.dart';

class CompanyFilter extends StatefulWidget {
  const CompanyFilter({Key? key}) : super(key: key);

  @override
  State<CompanyFilter> createState() => _CompanyFilterState();
}

class _CompanyFilterState extends State<CompanyFilter> {
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
          title: const Text("XYZ Company"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("PQR"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("ABC"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("RPC"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("ACPC"),
          value: _selectedValue,
          onChanged: (newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
        ),
        CheckboxListTile(
          title: const Text("IPL"),
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
