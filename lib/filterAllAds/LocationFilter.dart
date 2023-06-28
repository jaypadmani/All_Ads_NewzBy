import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LocationFilter extends StatefulWidget {
  const LocationFilter({Key? key}) : super(key: key);

  @override
  State<LocationFilter> createState() => _LocationFilterState();
}

class _LocationFilterState extends State<LocationFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topRight,
          child: Icon(Icons.close),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
          ),
          child: const ListTile(
            leading: Icon(
              Icons.search,
            ),
            title: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Your Location',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.add_location,
                ),
                title: Text(
                  'Anand, Gujarat, India'
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_location,
                ),
                title: Text(
                    'Jaipur, Rajasthan, India'
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_location,
                ),
                title: Text(
                    'Ahmadabad, Gujarat, India'
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_location,
                ),
                title: Text(
                    'Valsad, Gujarat, India'
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_location,
                ),
                title: Text(
                    'Pune, Maharashtra, India'
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
