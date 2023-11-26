import 'package:flutter/material.dart';
import 'package:team_ex_1/icons/sign_up_view_icon_icons.dart';

class TextFieldSignup extends StatefulWidget{

  final TextEditingController controller;
  final void Function(String?) validate;
  final String? errorText;
  final bool hideOnDefault;
  bool obscureText;
  final String hintText;
  final IconData prefixIconData;
  IconData? suffixIconData;
  // Create a Text Editing Controller to validate the text field
  TextFieldSignup(
    this.hintText, { 
    required this.controller,
    required this.validate, this.errorText,
    this.prefixIconData = SignUpViewIcon.name,
    this.suffixIconData, 
    this.hideOnDefault= false,
    this.obscureText = false, super.key}
  );

  @override
  State<TextFieldSignup> createState() => _TextFieldSignupState();
}

class _TextFieldSignupState extends State<TextFieldSignup> {

  void showPassword(){
    setState((){
      widget.obscureText = !widget.obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: (widget.errorText == null)? 46.0: 56.0,
        // height: 40.0,
        child: TextField(
          controller: widget.controller,
          onChanged: widget.validate,
          autocorrect: false,
          autofocus: true,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            // show icon in front of hint text
            prefixIcon: Icon( 
              widget.prefixIconData,
              size: 12.0,
              color:const Color.fromARGB(57, 90, 89, 89),
            ),
            suffixIcon:  (widget.hideOnDefault)? IconButton(
              onPressed: showPassword,
              icon: Image.asset(
              (widget.obscureText == true)? 'assets/img/hide.png' : 'assets/img/view.png',
              width: 12.0,
              color:const Color.fromARGB(57, 90, 89, 89),
              )
            )  : null,
            // border type of TextField
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // add style to hint Text
            hintStyle: const TextStyle(
              color: Color.fromARGB(57, 90, 89, 89),
              fontSize: 14.0,
            ) ,
            // errorStyle: const TextStyle(
            //   color: Colors.red,
            //   fontSize: 12.0,
            // ),
            hintText: widget.hintText,
            errorText: widget.errorText,
          ),
        ),
      ),
    );
  }
}