import 'package:flutter/material.dart';
import 'package:team_ex_1/modules/home/widgets/dice_roller.dart';
// import 'package:flutter_tutor_5/custom_text.dart';

class GradientContainer extends StatelessWidget{
  final String userName;
  final List <Color> colors;

  const GradientContainer( this.userName,{ required this.colors, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors,
            )
        ),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Xin chào $userName !',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0),
              const DiceRoller(),
            ],
          ),
        )
      );
  }

}