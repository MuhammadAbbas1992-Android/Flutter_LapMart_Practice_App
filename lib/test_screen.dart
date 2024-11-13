import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lap_mart/res/common_widgets/common_card_info_widget.dart';
import 'package:lap_mart/res/common_widgets/common_cart_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Grid View Builder'),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  /* child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 210),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CardInfoWidget(
                        image: 'constants/images/laptops.png',
                        name: 'Apple Macbook 12',
                        price: 'SAR 500',
                      );
                    },
                  ),*/
                  child: ListView.builder(
                    // mainAxisExtent: 210,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CommonCartWidget(
                        cartIndex: 1,
                      );
                    },
                  ),
                ),
              ),
            )
            /*const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Grid Scroll View',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        'GridView $index',
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
