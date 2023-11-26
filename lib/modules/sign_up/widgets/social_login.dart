import 'package:flutter/material.dart';
import 'package:team_ex_1/modules/sign_up/widgets/horizontal_divider.dart';

class SocialLogin extends StatelessWidget{
  const SocialLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: Column(
        children: [
          const HorizontalDivider('Đăng nhập với'),
          const SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: ()=> {},
                child: Image.asset('assets/img/facebook-logo.png'), 
              ),
              OutlinedButton(
                onPressed: ()=> {},
                child: Image.asset('assets/img/google-logo.png'), 
              ),
              OutlinedButton(
                onPressed: ()=> {},
                child: Image.asset('assets/img/apple-logo.png'), 
              ),
            ],
          ),
        ],
      ),
    );
  }

}