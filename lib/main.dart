import 'package:flutter/material.dart';
import 'package:trip_app/pages/pages.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(31, 29, 43, 1),
          body: SafeArea(
            child: HomePage()
          )
        ),
      );
  }
}