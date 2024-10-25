import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../res/routs/routs_name.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_laptop.svg',
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    'LapMart',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
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
                    hintText: 'Confirm Password',
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
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFE77FB3)),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Color(0xFFA6A4A4), fontSize: 14.0),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      Get.toNamed(RoutsName.loginView);
                    },
                    child: const Text(
                      'Sign In',
                      style:
                          TextStyle(color: Color(0xFFE77FB3), fontSize: 14.0),
                    ),
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
