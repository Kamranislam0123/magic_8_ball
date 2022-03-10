import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dice app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Magicball(),
    );
  }
}

class Magicball extends StatefulWidget {
  Magicball({Key? key}) : super(key: key);

  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  var magicball = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Magic Ball')),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'Ask Anything And Click on the Ball',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    magicball = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$magicball.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
