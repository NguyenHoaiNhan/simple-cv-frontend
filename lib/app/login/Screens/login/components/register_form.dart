import 'package:flutter/material.dart';
import 'package:simple_cv/app/login/components/rounded_button.dart';
import 'package:simple_cv/app/login/components/rounded_input.dart';
import 'package:simple_cv/app/login/components/rounded_password_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    final userNameCTL = TextEditingController();
    final userPwdCTL = TextEditingController();
    final emailCTL = TextEditingController();

    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const SizedBox(height: 40),
                  const Icon(Icons.app_registration),
                  const SizedBox(height: 40),
                  RoundedInput(
                    icon: Icons.mail,
                    hint: 'Username',
                    ctl: userNameCTL,
                  ),
                  RoundedInput(
                    icon: Icons.face_rounded,
                    hint: 'Email',
                    ctl: emailCTL,
                  ),
                  RoundedPasswordInput(
                    hint: 'Password',
                    ctl: userPwdCTL,
                  ),
                  const SizedBox(height: 10),
                  const RoundedButton(
                    title: 'SIGN UP',
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
