import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 30, top: 5),
                child: Text(
                  "CartãoDigital",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/50676424?v=4"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Caio Santos",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Engenheiro de Software"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Center(
                    child: RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                      color: Colors.green,
                      elevation: 2.0,
                      child: Text(
                        "Whatsapp",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () => {
                        launch(
                            "https://api.whatsapp.com/send/?phone=%2B553182166031&text&app_absent=0"),
                      },
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 70),
                    child: Container(
                      child: Image.asset('assets/images/telephone.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 70),
                    child: Container(
                      child: Image.asset('assets/images/email.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 70),
                    child: Container(
                      child: Image.asset('assets/images/instagram.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 70),
                    child: Container(
                      child: Image.asset('assets/images/facebook.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
