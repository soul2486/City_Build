import 'package:flutter/material.dart';
import 'package:test_project/Archive.dart';
import 'package:test_project/NavBar.dart';
import 'package:test_project/palette.dart';
import 'package:test_project/widgets/FactureCard.dart';

import 'widgets/Custom_contain.dart';

class fonction {
  void etatFacture(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          // title: Container(
          //   margin: EdgeInsets.all(0.0),
          //   // width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: double.maxFinite,
          //   decoration: BoxDecoration(
          //     // boxShadow: ,
          //     color: Color.fromARGB(255, 6, 100, 119),
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(20),
          //       topLeft: Radius.circular(20),
          //     ),
          //   ),
          //   // padding: EdgeInsets.all(10),
          //   child: Center(
          //     child: Text(
          //       "Information",
          //       style: TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0.0),
                  // width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    // boxShadow: ,
                    color: Color.fromARGB(255, 6, 100, 119),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Chambre",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0),
                    // width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.200,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      // boxShadow: ,
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    // padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          // padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Montant",
                                      style: stand,
                                    ),
                                    Text(
                                      "1000 FCFA",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Statut de la facture",
                                    style: stand,
                                  ),
                                  tva(),
                                  // Text(
                                  //   "Paye",
                                  //   style: TextStyle(
                                  //     fontSize: 14,
                                  //   ),
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 27,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 3.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Annuler",
                                        style: stand,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Enregistrer",
                                        style: stand,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
          // actions: <Widget>[
          //   Container(
          //     margin: EdgeInsets.all(0.0),
          //     // width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height * 0.07,
          //     width: double.maxFinite,
          //     decoration: BoxDecoration(
          //       // boxShadow: ,
          //       color: Color.fromARGB(255, 6, 100, 119),
          //       borderRadius: BorderRadius.only(
          //         topRight: Radius.circular(20),
          //         topLeft: Radius.circular(20),
          //       ),
          //     ),
          //     // padding: EdgeInsets.all(10),
          //     child: Center(
          //       child: Text(
          //         "Information",
          //         style: TextStyle(
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   ),
          //   new FlatButton(
          //     child: new Text("OK"),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }
}

class Acceuil extends StatefulWidget {
  const Acceuil({Key? key}) : super(key: key);
  static const String test = 'soul';

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 100, 119),
        title: Text('Accueil'),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Contain(),
              SizedBox(
                height: 40,
              ),
              Text(
                "Paiements",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 310,
                child: ListFacCard(nombchamb: 5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Text("Voir plus"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => voir_plus()),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class voir_plus extends StatelessWidget {
  const voir_plus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int nombchamb = 2;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: "tect",
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          // drawer: Navbar(),
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Icon(Icons.close),
              Icon(Icons.check),
            ]),
            backgroundColor: Color.fromARGB(255, 6, 100, 119),
            title: Text('Accueil'),
          ),
          body: TabBarView(children: [
            ListFacCard(nombchamb: nombchamb),
            ListFacCard(nombchamb: 5),
          ]),
        ),
      ),
    );
  }
}

class ListFacCard extends StatelessWidget {
  const ListFacCard({
    Key? key,
    required this.nombchamb,
  }) : super(key: key);

  final int nombchamb;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.0),
      child: ListView.builder(
        itemCount: nombchamb,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: FactureCard(
              name: "Chambre $index",
              action: () {
                fonction().etatFacture(context);
              },
            ),
          );
        },
      ),
    );
  }
}
