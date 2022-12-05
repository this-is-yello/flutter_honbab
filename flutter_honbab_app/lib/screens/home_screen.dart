import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                Container(
                  height: 160,
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Color(0xff00A8E3), borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('carousel'),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/remodeling.png', width: 100, height: 100,),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
