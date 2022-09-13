import 'package:flutter/material.dart';
import 'package:love_tips/pages/homepage.dart';
import 'package:love_tips/pages/splash_page.dart';
import 'package:love_tips/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashroute,
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.splashroute: (context) => const SplashPage(),
        MyRoutes.homeroute: (context) => const HomePage()
      },
    );
  }
}
