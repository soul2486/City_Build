import 'package:flutter/material.dart';
import 'package:test_project/palette.dart';
import 'package:test_project/Accueil.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'soul facture';
  static const pass = TextField();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: MyHomePage(),
      duration: 10000,
      imageSize: 130,
      imageSrc: "images/logo.png",
      text: "City bill",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(fontSize: 40.0, color: Colors.white),
      colors: [
        Color.fromARGB(255, 30, 0, 161),
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Color.fromARGB(255, 75, 231, 237),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  // String  pass = TextField();
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String us = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: titlesection(context),
      // body: itemBuilder(context),
    );
  }

  void sub(String b) {
    String value = "";
  }

  Widget titlesection(BuildContext context) => SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Column(
            children: [
              Container(
                child: Center(
                    // child: Text(
                    //   'City Bill',
                    //   style: KHeading,
                    // ),
                    ),
                height: 200,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(image: AssetImage("images/logo.png")),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 2, 68, 78),
                      width: 2.0,
                      style: BorderStyle.solid),
                  // color: Color.fromARGB(255, 2, 68, 78),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // height: double.minPositive,
                      child: Center(
                        child: Text(
                          'City Bill',
                          style: KHeading,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 2, 68, 78),
                                    width: 2.0,
                                    style: BorderStyle.solid),
                                color: Colors.grey[100]?.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              onChanged: sub, controller: user,
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  border: InputBorder.none,
                                  hintText: 'username',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Icon(
                                      Icons.account_circle,
                                      color: Color.fromARGB(255, 2, 68, 78),
                                      size: 20,
                                    ),
                                  ),
                                  hintStyle: KBodyText),
                              style: KBodyText,
                              textInputAction: TextInputAction.next,
                              // keyboardType: TextInputAction.next,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromARGB(255, 2, 68, 78),
                                    width: 2.0,
                                    style: BorderStyle.solid),
                                color: Colors.grey[100]?.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: pass,
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  border: InputBorder.none,
                                  hintText: 'password',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Icon(
                                      Icons.lock,
                                      color: Color.fromARGB(255, 2, 68, 78),
                                      size: 20,
                                    ),
                                  ),
                                  hintStyle: KBodyText),
                              obscureText: true,
                              style: KBodyText,
                              textInputAction: TextInputAction.done,
                              // keyboardType: TextInputAction.done,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'mot de passe oublie ?',
                            style: KBodyText,
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 105,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if ((user.text == "souley") &
                                  (pass.text == "bodapson")) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => Acceuil()),
                                  ),
                                );
                              } else {
                                print("Non");
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    // color: Colors.accents,
                                    ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

int log(String username, String password) {
  String user = "soul";
  String pass = "bodapson";
  int result = 0;
  (username == user) & (password == pass) ? result = 1 : result;
  return result;
}
// ignore: must_be_immutable
