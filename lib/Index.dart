import 'package:flutter/material.dart';
import 'package:test_project/palette.dart';

const List<int> list = <int>[50, 75];

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);
  static const String test = 'soul';
  @override
  Widget build(BuildContext context) {
    // final appBar = AppBar();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 100, 119), extendBody: false,
      // drawer: Navbar(),
      appBar: AppBar(
        title: Text(
          'Index',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Type compteur",
                          style: KBodyMin,
                        ),
                        Text(
                          "Divisionaire",
                          style: KBodyMin,
                        )
                      ],
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
                        tva()
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
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.calendar_month),
                          color: Color.fromARGB(255, 28, 104, 136),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton(
                          color: Color.fromARGB(255, 28, 104, 136),
                          onPressed: (() {}),
                          child: Text(
                            "Enregistrer",
                            style: TextStyle(
                                fontSize: 15,
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
      style: const TextStyle(color: Color.fromARGB(255, 11, 62, 74)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 10, 96, 112),
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

// ignore: camel_case_types
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
    return Switch(value: val1, onChanged: change1);
  }
}
