import 'package:flutter/material.dart';
import 'package:team_ex_1/modules/sign_up/views/sign_up.dart';

import '../../../icons/sign_up_view_icon_icons.dart';
import '../../home/views/home.dart';
import 'full_width_button.dart';
import 'text_field_sign_up.dart';
import '../models/validators.dart';

class RegisterForm extends StatefulWidget{
  const RegisterForm({super.key});
  @override
  State<StatefulWidget> createState() => _RegisterForm();

}

class _RegisterForm extends State<StatefulWidget> {
  final _controllerName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  final _controllerRetypePassword = TextEditingController();
  String? text;

  @override 
  void dispose() {
    _controllerName.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerRetypePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFieldSignup('Tên',
            controller: _controllerName,
            validate: (text) => {
              setState((){
                Validators.name(text);
              }),
            },
            errorText: Validators.errorTextName,
            prefixIconData :SignUpViewIcon.name,
            ),

          TextFieldSignup('Email',
            controller: _controllerEmail,
            validate: (text) => {
              setState((){
                Validators.email(text);
              }),
            },
            errorText: Validators.errorTextEmail,
            prefixIconData :SignUpViewIcon.email,
          ),

          TextFieldSignup('Mật khẩu',
            controller: _controllerPassword,
            validate: (text) => {
              setState(() {
                Validators.password(text);
              }),
            },
            hideOnDefault: true,
            errorText: Validators.errorTextPassword,
            prefixIconData :SignUpViewIcon.password,
            obscureText: true,
          ),

          TextFieldSignup('Xác nhận mật khẩu',
            controller: _controllerRetypePassword,
            validate: (text) => {
              setState(() {
                Validators.retypePassword(text, _controllerPassword.text);
              }),
            },
            hideOnDefault: true,
            errorText: Validators.errorTextRetypePass,
            prefixIconData :SignUpViewIcon.password,
            obscureText: true,
          ),
          const SizedBox(height: 8.0),
          // 
          const SizedBox(
            width: double.infinity,
            child: Text('Quên mật khẩu?',
              style: TextStyle(
                color: Color(0xff3333FF),
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(height: 10.0),
          FullWidthButton('Đăng ký',
            onPressed: (){
              setState(() {
                Validators.name(_controllerName.text);
                Validators.email(_controllerEmail.text);
                Validators.password(_controllerPassword.text);
                Validators.retypePassword(_controllerRetypePassword.text, _controllerPassword.text);
              });

              if ( Validators.errorTextName == null && Validators.errorTextEmail == null 
              && Validators.errorTextPassword == null && Validators.errorTextRetypePass == null){
                Navigator.push( context, MaterialPageRoute(
                  builder: (context) => Home( _controllerName.text) ),
                );
              }
            }
          ),
        ],
      ),
    );
  }

}