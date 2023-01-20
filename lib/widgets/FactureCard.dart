import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_project/palette.dart';

import '../Accueil.dart';

class FactureCard extends StatefulWidget {
  final String name;
  bool? isExpanded = false;
  void Function() action;
  FactureCard({Key? key, required this.name, required this.action, isExpanded})
      : super(key: key);

  @override
  State<FactureCard> createState() => _FactureCardState();
}

class _FactureCardState extends State<FactureCard> {
  @override
  Widget build(BuildContext context) {
    // var isExpanded = false;
    return ExpansionPanelList(
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            widget.isExpanded = !widget.isExpanded!;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("1000 FCFA"),
                  ],
                ),
              );
            },
            // backgroundColor: Color.fromARGB(255, 198, 255, 188),GB(255, 151, 245, 134)GB(255, 151, 245, 134)
            canTapOnHeader: mounted,
            isExpanded: widget.isExpanded!,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Nouvel Index",
                      style: KBodyMinDark2,
                    ),
                    Text(
                      "Ancien Index",
                      style: KBodyMinDark2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "95.5",
                      style: KBodyMinDark,
                    ),
                    Text(
                      "80",
                      style: KBodyMinDark,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Icon(Icons.info),
                      onTap: widget.action,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
            // body: InkWell(
            //   onTap: widget.action,
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 5.0),
            //     height: 50,
            //     width: double.maxFinite,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(
            //           color: Color.fromARGB(255, 11, 97, 117),
            //           // blurRadius: 2.0,
            //           // blurStyle: BlurStyle.outer,
            //           offset: Offset(3.0, 2.0),
            //         ),
            //       ],
            //       // shape: ShapeBorder.lerp(a, b, t)
            //       // color: Color.fromARGB(255, 145, 181, 206),
            //       border: Border.all(
            //         color: Color.fromARGB(255, 67, 67, 67),
            //         width: 0.5,
            //       ),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(5),
            //       ),
            //     ),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           widget.name,
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //         Text(
            //           "1000 FCFA",
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ),
        ]);
  }
}
