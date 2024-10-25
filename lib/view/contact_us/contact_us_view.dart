import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset('assets/icons/ic_menu.svg'),
                ),
                Expanded(
                    flex: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/ic_laptop.svg',
                          width: 24.0,
                          height: 17.0,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                          'LapMart',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                const Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'If you  have any inquiries get in touch with us.\nWe will be happy to help you.',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Lolwah Altayyar ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    border: Border.all(color: Colors.black)),
                child: SizedBox(
                  width: double.infinity,
                  height: 53.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_email_1.svg',
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Lolwah @gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Razan  Arishi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    border: Border.all(color: Colors.black)),
                child: SizedBox(
                  width: double.infinity,
                  height: 53.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_email_1.svg',
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Razan@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Nouf Aljammaz',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    border: Border.all(color: Colors.black)),
                child: SizedBox(
                  width: double.infinity,
                  height: 53.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_email_1.svg',
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Nouf@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Khloud Alshahrani',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    border: Border.all(color: Colors.black)),
                child: SizedBox(
                  width: double.infinity,
                  height: 53.0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: SvgPicture.asset(
                            'assets/icons/ic_email_1.svg',
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 8,
                        child: Text(
                          'Khloud@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
