import 'package:flutter/material.dart';
import 'package:all_ads/filterAllAds/SortFilter.dart';
import 'package:all_ads/filterAllAds/CategoryFilter.dart';
import 'package:all_ads/filterAllAds/CompanyFilter.dart';
import 'package:all_ads/filterAllAds/LocationFilter.dart';

class HomeScreenRowContainer extends StatefulWidget {
  String nameOfFilter;
  HomeScreenRowContainer({super.key, required this.nameOfFilter});

  @override
  State<HomeScreenRowContainer> createState() => _HomeScreenRowContainerState();
}

class _HomeScreenRowContainerState extends State<HomeScreenRowContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 50),
        child: PopupMenuButton(
          itemBuilder: (BuildContext context) => [
            CustomPopupMenuItem(
             
              value: null,
              child: Column(children: [
                if (widget.nameOfFilter == 'Sort')
                  const SortFilter()
                else if (widget.nameOfFilter == 'Categories')
                  const CategoryFilter()
                else if (widget.nameOfFilter == 'Company')
                  const CompanyFilter()
                else if (widget.nameOfFilter == 'Location')
                  const LocationFilter(),
              ]),
            ),
          ],
          offset: const Offset(0, 36),
          elevation: 4,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: 119,
            height: 36,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.nameOfFilter,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPopupMenuItem<T> extends PopupMenuItem<T> {
  CustomPopupMenuItem({
    Key? key,
    required T value,
    required Widget child,
  }) : super(
          key: key,
          value: value,
          child: Container(
            padding: const EdgeInsets.all(0), // Remove any padding
            margin: const EdgeInsets.all(0), // Remove any margin
            alignment: Alignment.center, // Center the content
            child: Padding(padding: const EdgeInsets.all(5), child: child),
          ),
        );
}
