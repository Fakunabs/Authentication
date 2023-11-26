import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_ex_1/modules/sign_up/widgets/register_form.dart';
import 'package:team_ex_1/modules/sign_up/widgets/full_width_button.dart';
import 'package:team_ex_1/modules/sign_up/widgets/social_login.dart';
import '../../home/views/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 55.0, 20.0, 15.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App Icon
          SvgPicture.asset('assets/img/App-icon.svg',alignment: Alignment.center),

          const SizedBox(height: 40.0,),
          // Main title
          const SizedBox(
            width: double.infinity,
            child: Text('Tạo tài khoản',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff0F2D52),
              ),
              textAlign:  TextAlign.start,
            ),
          ),

          // Sign up text field
          const RegisterForm(),
          const SizedBox(height: 30.0,),
          // button
          // link to social
          const SocialLogin(),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text('Đã có tài khoản? ',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
              Text('Đăng nhập',
                style: TextStyle(
                  color: Color(0xff3333FF),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}
