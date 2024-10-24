import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/router_report.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_laptop.svg',
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'LapMart',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              SizedBox(
                height: 48.0,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 5.0,
                        top: 18.0,
                        bottom: 18.0,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/ic_email.svg',
                        height: 13,
                        width: 13,
                      ),
                    ),
                    hintText: 'Email Address',
                    hintStyle: const TextStyle(
                        color: Color(0xFF858585),
                        fontFamily: 'Inter',
                        fontSize: 14.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(color: Color(0xFFCBCBCB))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(color: Color(0xFFCBCBCB))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 48.0,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 5.0,
                        top: 18.0,
                        bottom: 18.0,
                      ),
                      child: SvgPicture.asset('assets/icons/ic_password.svg'),
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                        color: Color(0xFF858585),
                        fontFamily: 'Inter',
                        fontSize: 14.0),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(color: Color(0xFFCBCBCB))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(color: Color(0xFFCBCBCB))),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xFFE77FB3)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(color: Color(0xFFA6A4A4), fontSize: 14.0),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xFFE77FB3), fontSize: 14.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
