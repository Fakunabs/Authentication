import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget{
  final String text;
  const HorizontalDivider(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10.0),
            child:const Divider(
              color: Colors.black,
            ),
          )
        ),
        Text(text,
        style: const TextStyle(color:  Colors.black45),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: const Divider(
              color: Colors.black,
            ),
          )
        ),
      ],
    );
  }

}