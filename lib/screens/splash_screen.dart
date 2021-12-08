import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/screens/catalog.dart';
import 'package:shop/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Test_Mobile_Creonit",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(180, 50),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30),
                ),
                primary: Colors.grey[400], // background
              ),
              child: const Text(
                "Get started",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              onPressed: () {
                Get.off(HomeScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
