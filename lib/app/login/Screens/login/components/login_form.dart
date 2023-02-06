import 'package:flutter/material.dart';
import 'package:simple_cv/app/dashboard/dashboard_page.dart';
import 'package:simple_cv/app/login/components/rounded_button.dart';
import 'package:simple_cv/app/login/components/rounded_input.dart';
import 'package:simple_cv/app/login/components/rounded_password_input.dart';
import 'package:simple_cv/config/ui_values.dart';
import 'package:simple_cv/data/models/api_response.dart';
import 'package:simple_cv/network/api_urls.dart';
import 'package:simple_cv/network/request_actions.dart';
import 'package:simple_cv/services/app_service.dart';
import 'package:simple_cv/utils/common_funcs.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
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
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _userNameCTL;
  late TextEditingController _userPwdCTL;
  late bool _hidePwd;

  @override
  void initState() {
    super.initState();
    _userNameCTL = TextEditingController();
    _userPwdCTL = TextEditingController();
    _hidePwd = true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isLogin ? 1.0 : 0.0,
      duration: widget.animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: widget.size.width,
          height: widget.defaultLoginSize,
          padding: EdgeInsets.symmetric(horizontal: AppSpan.defaultPagePadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 40),
                Image.asset('assets/images/cv-banner-2.png'),
                const SizedBox(height: 40),
                TextField(
                  controller: _userNameCTL,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter email or Phone number',
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    labelStyle: const TextStyle(fontSize: 12),
                    contentPadding: const EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: AppSpan.defaultPagePadding),
                TextField(
                  controller: _userPwdCTL,
                  obscureText: _hidePwd,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    counterText: 'Forgot password?',
                    suffixIcon: InkWell(
                      onTap: () => setState(() {
                        _hidePwd = !_hidePwd;
                      }),
                      child: Icon(
                        _hidePwd ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    labelStyle: const TextStyle(fontSize: 12),
                    contentPadding: const EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                RoundedButton(
                  title: 'LOGIN',
                  onTap: () async {
                    if (_userNameCTL.text.isEmpty || _userPwdCTL.text.isEmpty) {
                      CommonFuncs.showNoti(context,
                          content: 'Username and Password can not be empty!',
                          type: DialogType.warning,
                          dialogSize: const Size(120, 40));
                      return;
                    }

                    final response = await RequestActions.post(
                      url: ApiUrls.linkApiToLogin(),
                      data: {
                        "accountName": _userNameCTL.text,
                        "accountPwd": _userPwdCTL.text,
                        "token": "string",
                      },
                    );

                    final ApiResponse result = RequestActions.getResponseBody(
                      response: response,
                      context: context,
                    );

                    if (!result.success) {
                      CommonFuncs.showNoti(
                        context,
                        content: "Sorry! We can not create your account right now!",
                        type: DialogType.fail,
                      );
                      return;
                    }

                    AppService.instance.saveAccountInfo(token: result.data!);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardPage(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
