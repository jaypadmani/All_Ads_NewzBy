import 'package:flutter/material.dart';
import 'HomeScreenRowContainer/HomeScreeenRowContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int totalRows = 10;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    final rowHeight = screenHeight * 0.065; // Adjust the row height as needed
    final columnSpacing = screenWidth * 0.11;

    return Padding(
      padding: const EdgeInsets.only(right: 70, top: 20, left: 72, bottom: 10),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Ads',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: 143,
                    height: 40,
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Add Ads',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'All Ads (10)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: 20,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Container(
                            color: Colors.black45,
                            height: 30,
                            width: 2,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Running (4)',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 15,
                        child: SizedBox(
                          width: 500,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 470,
                    height: 57,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.search,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Ads',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                HomeScreenRowContainer(nameOfFilter: 'Sort'),
                HomeScreenRowContainer(
                  nameOfFilter: 'Categories',
                ),
                HomeScreenRowContainer(
                  nameOfFilter: 'Company',
                ),
                HomeScreenRowContainer(
                  nameOfFilter: 'Duration',
                ),
                HomeScreenRowContainer(
                  nameOfFilter: 'Location',
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  dividerThickness: 2.0,
                  dataRowHeight: rowHeight,
                  columnSpacing: columnSpacing,
                  dataTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Center(
                        child: Text(
                          'Ad No.',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                        label: Center(
                      child: Text(
                        'Title',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
                    DataColumn(
                        label: Center(
                      child: Text(
                        'Company',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
                    DataColumn(
                        label: Center(
                      child: Text(
                        'Category',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
                    DataColumn(
                        label: Center(
                      child: Text(
                        'Location',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
                    DataColumn(
                        label: Center(
                      child: Text(
                        'Total Days',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
                    DataColumn(
                        label: Center(
                      child: Text(
                        'Reach',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    )),
                  ],
                  rows: List<DataRow>.generate(
                    totalRows,
                    (int index) => DataRow(
                      cells: <DataCell>[
                        DataCell(Center(
                            child: Text((totalRows - index).toString()))),
                        const DataCell(Center(child: Text('XYZ'))),
                        const DataCell(Center(child: Text('XYZ'))),
                        const DataCell(Center(child: Text('Food'))),
                        const DataCell(Center(child: Text('Surat'))),
                        const DataCell(Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                    fit: BoxFit.scaleDown, child: Text('15')),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    '(1/5/23 - 16/5/23)',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                        const DataCell(Center(child: Text('3.5 K'))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          children: [
                            Container(
                              height: 46,
                              width: 162,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Bulk actions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                            ),
                            const SizedBox(
                              width: 37,
                            ),
                            Container(
                              height: 40,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  'Apply',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Container(
                          height: 46,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Icon(Icons.arrow_back)),
                              ),
                              VerticalDivider(),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Icon(Icons.arrow_drop_down_sharp)),
                              ),
                              VerticalDivider(),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                    child: Icon(Icons.arrow_forward)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
