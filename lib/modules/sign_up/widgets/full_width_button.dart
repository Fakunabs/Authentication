import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget{
  final String text;
  final void Function()? onPressed;
  const FullWidthButton(this.text, {this.onPressed, super.key});
  
  @override
  Widget build(BuildContext context) {
      return SizedBox(
            width: double.infinity,
            height: 46.0,
            // margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xff6666ff)),
                // shape:  MaterialStateProperty.all(BorderRadius.circular(18.0))
              ),
              child: Text(text, 
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
                ),
              ),
            ),
          );
  }

}