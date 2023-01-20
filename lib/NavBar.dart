import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_project/Facture.dart';
import 'package:test_project/Archive.dart';
import 'package:test_project/Chambre.dart';
import 'package:test_project/Index.dart';
import 'package:test_project/main.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('soul'),
            accountEmail: Text('mbodapson@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 6, 100, 119),
            ),
          ),
          ListTile(
            leading: Icon(Icons.electric_meter),
            title: Text('Facture'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Facture()),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.difference),
            title: Text('Index'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Index()),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.bedroom_parent),
            title: Text('Chambres'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Chambre()),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Historique'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Archive()),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Deconnecter'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Quiter'),
            onTap: () => exit(0),
          ),
        ],
      ),
    );
  }
}
