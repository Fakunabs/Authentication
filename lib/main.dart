import 'package:flutter/material.dart';
import 'package:team_ex_1/modules/sign_up/views/sign_up.dart';

void main() {
  runApp( const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignUp(),
    );
  }
}