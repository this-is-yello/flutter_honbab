import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

var carouselImgs = [
  Image.asset('assets/images/go_home.png'),
  Image.asset('assets/images/move.png'),
  Image.asset('assets/images/quick_deli.png'),
  Image.asset('assets/images/remodeling.png'),
  Image.asset('assets/images/sale.png'),
  Image.asset('assets/images/shopping.png'),
  Image.asset('assets/images/today_deal.png'),
];

CarouselController carouselController = CarouselController();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 500,
            height: 500,
            color: Colors.white,
            child: Column(
              children: [
                CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    autoPlay: true
                  ),
                  items: carouselImgs.map((carouselImgs) {
                    return Container(
                      // padding: EdgeInsets.symmetric(horizontal: 7),
                      child: carouselImgs,
                    );
                  }).toList(),
                ),
                // Stack(
                //   children: [],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          carouselController.previousPage();
                        }
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: () {
                          carouselController.nextPage();
                        }
                      ),
                    ),
                  ],
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
