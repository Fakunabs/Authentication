import 'package:flutter/material.dart';

import '../widgets/gradient_container.dart';

class Home extends StatelessWidget {
  String userName;
  Home(this.userName,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

    return Scaffold(
      body: GradientContainer( userName ,colors: const [
        Color.fromARGB(255, 45, 2, 95),
        Color.fromARGB(255, 65, 15, 115)
      ]),
    );
  }
}
