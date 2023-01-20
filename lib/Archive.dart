import 'package:flutter/material.dart';
import 'package:test_project/Accueil.dart';
import 'package:test_project/Detail_arch.dart';
import 'package:test_project/palette.dart';
import 'package:test_project/widgets/FactureCard.dart';

const List<int> list = <int>[50, 75];

class Archive extends StatelessWidget {
  const Archive({Key? key}) : super(key: key);
  static const String test = 'soul';
  @override
  Widget build(BuildContext context) {
    // final appBar = AppBar();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 100, 119), extendBody: false,
      // drawer: Navbar(),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Index',
            style: TextStyle(
              fontSize: 15,
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
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Facture :",
                          style: KBodyMin2,
                        ),
                        Text(
                          "10",
                          style: KBodyMin2,
                        ),
                        IconButton(
                            onPressed: (() {}),
                            icon: Icon(
                              Icons.inbox,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 121, 136),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        // bottomLeft: Radius.circular(10),
                        // bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Novembre 2020",
                          style: KBodyMinDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FactureCard(
                          name: "Identifiant",
                          // ignore: void_checks
                          action: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Detail()),
                              ),
                            )
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Novembre 2020",
                          style: KBodyMinDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FactureCard(
                          name: "Identifiant",
                          action: () => {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Novembre 2020",
                          style: KBodyMinDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FactureCard(
                          name: "Identifiant",
                          action: () => {},
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Novembre 2020",
                          style: KBodyMinDark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FactureCard(
                          name: "Identifiant",
                          action: () => {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
    return Switch(value: val1, onChanged: change1);
  }
}
