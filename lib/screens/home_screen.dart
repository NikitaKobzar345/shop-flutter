import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/catalog.dart';
import 'on_develop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CommunityMaterialIcons.home_outline,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              CommunityMaterialIcons.home_outline,
              color: Colors.black,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              CupertinoIcons.square_grid_2x2,
              color: Colors.black,
            ),
            icon: Icon(
              CupertinoIcons.square_grid_2x2,
              color: Colors.grey,
            ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              CupertinoIcons.heart,
              color: Colors.black,
            ),
            icon: Icon(
              CupertinoIcons.heart,
              color: Colors.grey,
            ),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.black,
            ),
            icon: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              CupertinoIcons.person,
              color: Colors.black,
            ),
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            label: 'Профиль',
            backgroundColor: Colors.blue[800],
          ),
        ],
      ),
      tabBuilder: (BuildContext context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
                builder: (context) =>
                    CupertinoPageScaffold(child: const OnDevelop()));
          case 1:
            return CupertinoTabView(
                builder: (context) =>
                    CupertinoPageScaffold(child: const Catalog()));
          case 2:
            return CupertinoTabView(
                builder: (context) =>
                    CupertinoPageScaffold(child: const OnDevelop()));
          case 3:
            return CupertinoTabView(
                builder: (context) =>
                    CupertinoPageScaffold(child: const OnDevelop()));
          case 4:
          default:
            return CupertinoTabView(
                builder: (context) =>
                    CupertinoPageScaffold(child: const OnDevelop()));
        }
      },
    );
  }
}
