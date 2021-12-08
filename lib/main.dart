import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/models/product_categories.dart';
import 'package:shop/screens/splash_screen.dart';

import 'API/productCategories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GetCupertinoApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      title: 'Flutter Demo',
      theme: const CupertinoThemeData(
        primaryColor: Colors.black,
      ),
    );
  }
}
