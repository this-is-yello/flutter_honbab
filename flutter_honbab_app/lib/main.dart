import 'package:flutter/material.dart';
import 'package:flutter_honbab_app/screens/home_screen.dart';

void main() => runApp(
  MaterialApp(
    theme: style,
    home: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('현식')),
        ),
        body: TabBarView(
          children: [
            Center(
              child: HomeScreen(),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 56,
          color: Colors.white,
          child: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Color(0xff99001C),
              labelColor: Color(0xff99001C),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.home_outlined),
                  text: 'home',
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
    titleTextStyle: TextStyle(color: Color(0xff99001C), fontSize: 20, fontWeight: FontWeight.w900), 
  )
);