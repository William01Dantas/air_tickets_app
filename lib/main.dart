import 'package:air_tickets_app/screens/botton_bar.dart';
import 'package:air_tickets_app/utils/app_styles.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: BottonBarr(),
    );
  }
}
