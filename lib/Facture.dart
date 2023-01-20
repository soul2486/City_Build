// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:test_project/palette.dart';

const List<int> list = <int>[50, 75];

class Facture extends StatefulWidget {
  const Facture({Key? key}) : super(key: key);
  static const String test = 'soul';

  @override
  State<Facture> createState() => _FactureState();
}

class _FactureState extends State<Facture> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // final appBar = AppBar();void _showDialog(BuildContext context) {
    void _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("Alert!!"),
            content: new Text("Enregistrement effectuer avec success"),
            actions: <Widget>[
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    void modalFacture() {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          // elevation: 8,
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(0.0),
                    // width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      // boxShadow: ,
                      color: Color.fromARGB(255, 6, 100, 119),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    // padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Information",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 0),
                  SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.all(0.0),
                      // color: Colors.black,
                      // width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        // boxShadow: ,
                        color: Color.fromARGB(255, 255, 255, 255),
                        // borderRadius: BorderRadius.only(
                        //   topRight: Radius.circular(20),
                        //   topLeft: Radius.circular(20),
                        // ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "No",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 200,
                                  height: 25,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      // hintText: 'Montant',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Text("            "),
                                SizedBox(
                                  width: 75,
                                ),
                                SizedBox(
                                  width: 200,
                                  height: 25,
                                  child: Container(
                                    height: 25,
                                    width: 200,
                                    child: Center(
                                        child: Text(
                                      "Choose image...",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    decoration: BoxDecoration(
                                        // boxShadow: ,
                                        color:
                                            Color.fromARGB(255, 143, 147, 148),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // Text(
                                //   "No",
                                //   style: TextStyle(
                                //       fontSize: 15,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                SizedBox(
                                  width: 120,
                                  height: 25,
                                  child: Container(
                                    height: 25,
                                    width: 100,
                                    child: Center(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.red),
                                        ),
                                        onPressed: (() {}),
                                        child: Text("Annuler"),
                                        // color: Colors.transparent,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        // boxShadow: ,
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                  height: 25,
                                  child: Container(
                                    height: 25,
                                    width: 100,
                                    child: Center(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 6, 100, 119)),
                                        ),

                                        /////////DIALOGUE////////,
                                        ///
                                        onPressed: (() {
                                          Navigator.pop(context);
                                          _showDialog(context);
                                        }),
                                        child: Text("Enregistrer"),
                                        // color: Colors.transparent,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        // boxShadow: ,
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 2,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Text("No"),
                          //       TextField(
                          //         decoration: InputDecoration(
                          //           border: OutlineInputBorder(),
                          //           hintText: 'Montant',
                          //         ),
                          //         keyboardType: TextInputType.number,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          });
    }

    void modaltest() {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.all(2.0),
              // width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                // boxShadow: ,
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              // padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          "Voulez vous enregistrer la Facture ?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          // elevation: 1
                          onPressed: () {
                            Navigator.pop(context);
                            modalFacture();
                          },
                          color: Color.fromARGB(255, 6, 100, 119),
                          child: Text(
                            "Oui",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Color.fromARGB(255, 6, 100, 119),
                          child: Text(
                            "Non",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 100, 119),
      extendBody: false,
      // drawer: Navbar(),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Facture',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_rounded),
            color: Colors.white,
          )
        ],
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).maybePop(),
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,10.80.3.94a
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Montant',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Prix du Kw",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        DropdownButtonExample()
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Tva [19.25%]",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index == 1 ? index = 0 : index = 1;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(2.0),
                            height: 25,
                            width: 50,
                            alignment: index == 0
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.black12
                                  : Color.fromARGB(255, 6, 100, 119),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10000),
                              ),
                            ),
                            child: index == 0
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10000),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'NON',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'OUI',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: index == 0
                                              ? Colors.black12
                                              : Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        )
                        // tva()
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Mois",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 90,
                          height: 25,
                          child: TextField(),
                        ),
                        // SfDateRangePicker(
                        //   view: DateRangePickerView.year,
                        // ),
                        IconButton(
                          onPressed: (() => (SfDateRangePicker()
                              // view: DateRangePickerView.month,
                              )),
                          icon: Icon(Icons.calendar_month),
                          color: Color.fromARGB(255, 28, 104, 136),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton(
                          color: Color.fromARGB(255, 28, 104, 136),
                          onPressed: modaltest,
                          child: Text(
                            "Enregistrer",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  int dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 15,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (int? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text("$value"),
        );
      }).toList(),
    );
  }
}

class tva extends StatefulWidget {
  const tva({Key? key}) : super(key: key);

  @override
  State<tva> createState() => _tvaState();
}

class _tvaState extends State<tva> {
  bool val1 = false;
  bool val2 = false;
  void change1(bool t) {
    setState(() {
      val1 = t;
    });
  }

  void change2(bool t) {
    setState(() {
      val2 = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: val1,
      onChanged: change1,
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Center(child: const Text('Enregistrement effectue')),
          content: Center(child: const Text('AlertDialog description')),
          actions: <Widget>[
            // TextButton(
            //   onPressed: () => Navigator.pop(context, 'Cancel'),
            //   child: const Text('Cancel'),
            // ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
// class Datepicker extends StatefulWidget {
//   const Datepicker({super.key});

//   @override
//   State<Datepicker> createState() => _DatepickerState();
// }

// /// State for MyApp
// class _DatepickerState extends State<Datepicker> {
//   String _selectedDate = '';
//   String _dateCount = '';
//   String _range = '';
//   String _rangeCount = '';

//   /// The method for [DateRangePickerSelectionChanged] callback, which will be
//   /// called whenever a selection changed on the date picker widget.
//   void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
//     /// The argument value will return the changed date as [DateTime] when the
//     /// widget [SfDateRangeSelectionMode] set as single.
//     ///
//     /// The argument value will return the changed dates as [List<DateTime>]
//     /// when the widget [SfDateRangeSelectionMode] set as multiple.
//     ///
//     /// The argument value will return the changed range as [PickerDateRange]
//     /// when the widget [SfDateRangeSelectionMode] set as range.
//     ///
//     /// The argument value will return the changed ranges as
//     /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
//     /// multi range.
//     setState(() {
//       if (args.value is PickerDateRange) {
//         _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
//             // ignore: lines_longer_than_80_chars
//             ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
//       } else if (args.value is DateTime) {
//         _selectedDate = args.value.toString();
//       } else if (args.value is List<DateTime>) {
//         _dateCount = args.value.length.toString();
//       } else {
//         _rangeCount = args.value.length.toString();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: const Text('DatePicker demo'),
//             ),
//             body: Stack(
//               children: <Widget>[
//                 Positioned(
//                   left: 0,
//                   right: 0,
//                   top: 0,
//                   height: 80,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text('Selected date: $_selectedDate'),
//                       Text('Selected date count: $_dateCount'),
//                       Text('Selected range: $_range'),
//                       Text('Selected ranges count: $_rangeCount')
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   left: 0,
//                   top: 80,
//                   right: 0,
//                   bottom: 0,
//                   child: SfDateRangePicker(
//                     onSelectionChanged: _onSelectionChanged,
//                     selectionMode: DateRangePickerSelectionMode.range,
//                     initialSelectedRange: PickerDateRange(
//                         DateTime.now().subtract(const Duration(days: 4)),
//                         DateTime.now().add(const Duration(days: 3))),
//                   ),
//                 )
//               ],
//             )));
//   }
// }
