import 'package:flutter/material.dart';
import 'package:flutter_honbab_app/screens/home_screen.dart';
import 'package:flutter_honbab_app/screens/mypage_screen.dart';
import 'package:flutter_honbab_app/screens/login_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: style,
    home: LoginScreen(),
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

            },
          ),
          // title: Center(child: Text('오늘의 집')),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed:() {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                
              },
            )
          ],
        ),
        body: TabBarView(
          children: [
            Center(
              child: HomeScreen(),
            ),
            Center(
              child: MyPageScreen(),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 56,
          color: Colors.white,
          child: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(fontSize: 13),
              indicatorColor: Color(0xff00A8E3),
              labelColor: Color(0xff00A8E3),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.home_outlined),
                  text: '홈',
                ),
                Tab(
                  icon: Icon(Icons.account_circle_outlined),
                  text: '마이페이지',
                ),
              ]),
        ),
      ),
    );
  }
}

var style = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black, size: 30),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
    // actionsIconTheme: IconThemeData(color: Colors.black, size: 30),
  )
);