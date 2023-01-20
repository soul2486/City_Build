import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  const Contain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      // margin: EdgeInsets.all(15.0),
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height * 0.07,
      width: double.maxFinite,
      decoration: BoxDecoration(
        // boxShadow: ,
        color: Color.fromARGB(255, 6, 100, 119),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "MOIS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Algerian',
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 90,
                  // height: 11,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "00000 FCFA",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Algerian',
                          fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // 2eme ligne,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Date de sorti",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Algerian',
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 75,
                  // height: 11,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Date de limite ",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Algerian',
                          fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ), //3e ligne,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "00/00/0000",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Algerian',
                          fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 75,
                  // height: 11,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "00/00/0000 ",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Algerian',
                          fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 80,
                  // height: 11,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ETAT ",
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Algerian',
                          fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
