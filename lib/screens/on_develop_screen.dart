import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/screens/catalog.dart';
import 'package:shop/screens/home_screen.dart';

class OnDevelop extends StatelessWidget {
  const OnDevelop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(
          'Этот экран в разработке',
          style: TextStyle(fontSize: 17, color: Colors.black),
        ),
      ),
    );
  }
}
